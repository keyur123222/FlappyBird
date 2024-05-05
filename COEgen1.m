% Written by Gregory Leonberg for 332:493:02 "Embedded Systems Design"
% Fall 2017 Semester
% Converts a JPG image of an arbitrary resoulation to a 480x480 8 bit color image
% [R][G][B] = [3][3][2]
% and produces the COE file for a Xilinx BRAM instance

% constants for 480x480 parameters
maxR = 38;
maxC = 75;

% get paths for input and output
inpath = input('Please enter the path to the image: ', 's');
outpath = input('Please enter the name of the output file: ', 's');

% open coe output file and write header
cd(inpath)
coe = fopen(outpath, 'w');
fprintf(coe, 'MEMORY_INITIALIZATION_RADIX=2;\n');
fprintf(coe, 'MEMORY_INITIALIZATION_VECTOR=\n');

% read in image to array and get dimensions
images = dir('*.jpg')
im = imread(images(1).name);
dims = size(im);

% if image too big, crop and use top left portion
% if image too small, pad with black
if dims(1) > maxR
	r = maxR;
else
	r = dims(1);
end
if dims(2) > maxC
	c = maxC;
else
	c = dims(2);
end

% if image too small, pad with black
out = cell(maxR, maxC);
for row = 1:maxR
	for col = 1:maxC
		out{row, col} = dec2bin(0, 8);
	end
end
new = zeros(maxR, maxC, 3);

% iterate across pixels and do stuff
for row = 1:r
	for col = 1:c
		
		% get RGB values
		origR = im(row, col, 1);
		origG = im(row, col, 2);
		origB = im(row, col, 3);

		% use bit shifting to truncate value accuracy
		tempR = floor(origR / (2.^5));
		tempR = double(tempR) / (2.0.^3);
		tempG = floor(origG / (2.^5));
		tempG = double(tempG) / (2.0.^3);
		tempB = floor(origB / (2.^6));
		tempB = double(tempB) / (2.0.^2);
		
		% convert to accurate binary, form pixel, store in binary array
		newR = dec2bin(tempR*7, 3);
		newG = dec2bin(tempG*7, 3);
		newB = dec2bin(tempB*3, 2);
		pixel = [newR, newG, newB];
		out{row, col} = pixel;

		% add pixel to output view image
		new(row, col, 1) = (bin2dec(newR) / 7);
		new(row, col, 2) = (bin2dec(newG) / 7);
		new(row, col, 3) = (bin2dec(newB) / 3);
	end
	
	% print progress of conversion
	str = sprintf('end of converting image row (%d / %d)', row, r);
	disp(str)

end

% write image to coe file
for row = 1:maxR
	for col = 1:maxC
		fprintf(coe, out{row, col});
		if(row == maxR && col == maxC)
			fprintf(coe, ';');
		else
			fprintf(coe, ',\n');
		end
	end
	% print progress of writing
	str = sprintf('end of writing image row (%d / %d)', row, maxR);
	disp(str)
end

% display original image
figure();
image(im);

% display 8 bit color image
figure();
image(new);

% close output file
fclose(coe);