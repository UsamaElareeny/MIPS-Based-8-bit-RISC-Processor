# MIPS-Based-8-bit-RISC-Processor
## Description
This VHDL code defines a simplified MIPS-like processor with an 8-bit program counter (pc_out) and a 16-bit destination register (destnation_register). It includes a register file (MyRAM) and an instruction memory (MyRom). The processor fetches instructions from MyRom, decodes them, and executes them based on the opcode. It performs arithmetic and logic operations, memory accesses, and conditional branching. Control signals (pc_current, alu_func, instruction_register, CF, ZF, SF, WE) are used to synchronize operations with a clock signal (clk) and a reset signal (reset). The processor's behavior is defined in a process sensitive to the clock and reset signals, ensuring proper execution of instructions and handling of control flags. **REFERE BACK TO THE LAB MANUAL FOR MORE INFORMATION.**
## Table of Contents
1. [Installation](#installation)
2. [Usage](#usage)
3. [License](#license)
4. [How to Contribute](#how-to-contribute)
5. [Tests](#tests)
## Installation
The simulation environment utilized in this project was ModelSim. For real-time implementation, Intel Quartus Prime Lite Edition along with an Altera Cyclone IV board (using Altera USB Blaster) were employed. It is important to highlight that alternative software solutions can be utilized based on individual preferences and requirements.
## Usage
If you are using the same aforementioned software, you can directly use the provided project files. Otherwise, I recommend starting the project by using the provided source code as a foundation and building it with your preferred software environment.
## License
This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
## How to Contribute
It is recommended to enhance the code usability and readability by breaking down the code into separate files.
## Tests
A variety of programs can be implemented for testing purposes, such as generating the Fibonacci sequence, calculating the factorial of a number, or determining if a number is even or odd.
