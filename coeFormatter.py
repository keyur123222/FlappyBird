def create_new_file(input_file):
    with open(input_file, 'r') as f:
        data = f.readlines()

    output_file = 'output.txt'
    with open(output_file, 'w') as f:
        for i, line in enumerate(data):
            binary_number = line.strip()[:-1] 
            f.write(f"{i} => \"{binary_number}\",\n")

    print(f"New file '{output_file}' created.")

input_file = "C:/Users/keyur/Documents/Python/Robotics&ComputerVision/SysProject/input.txt"
create_new_file(input_file)
