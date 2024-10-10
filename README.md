### Demonstration
https://www.youtube.com/watch?v=V33g31IxaMQ

## Flappy Bird on Zybo Z7 FPGA Board
This project is a fully functional Flappy Bird game developed on the Zybo Z7 FPGA Board using VHDL. The game includes designing and implementing the game logic, graphics, and controls from scratch.

### Key Features
- Finite State Machine: Implemented a finite state machine with three game states: start, playing, and end.
- Game Logic: Developed core mechanics including gravity, collision detection, and scoring.
- Graphics: Utilized ROM to store a 480x480 pixel image and overcame BRAM limitations to store additional game assets.
- Controls: Integrated user input through buttons on the FPGA board to control the bird’s movement.
- IP Blocks: Utilized IP blocks like the RGB to DVI IP block for HDMI output.
- Score Display: Used PMODs, including a 16x2 LCD screen, to display the score in real-time via UART protocol.

### Getting Started
#### Prerequisites
- Zybo Z7 FPGA Board
- Vivado Design Suite
- Basic knowledge of VHDL

### Installation

#### Clone the repository:
1. git clone https://github.com/keyur123222/FlappyBird.git
2. Open the project in Vivado Design Suite.
3. Synthesize and implement the design.
4. Generate the bitstream and program the Zybo Z7 FPGA Board.

### Running the Game
1. Connect the Zybo Z7 FPGA Board to a display via HDMI.
2. Use the buttons on the FPGA board to control the bird’s movement.
3. The game starts in the ‘start’ state. Press the button to begin playing.
4. Avoid obstacles and keep the bird flying to score points.


