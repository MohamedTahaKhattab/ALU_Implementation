# ALU Implementation Project

## Overview

This repository contains a comprehensive 16-bit Arithmetic Logic Unit (ALU) implementation developed as the final project for the Digital Design course at the Egyptian Chinese University. The project is implemented entirely in VHDL and demonstrates advanced digital design concepts including modular architecture, hierarchical design, and comprehensive ALU functionality.

## Project Details

**Course:** Digital Design  
**Institution:** Egyptian Chinese University  
**Author:** Mohamed Khattab  
**Student:** Mohamed Taha Salah (ID: 192000280)  
**Language:** VHDL  

## Architecture Overview

The ALU implementation follows a modular, hierarchical design approach with the main ALU entity coordinating four specialized functional units. The system supports 16-bit operations with configurable bit width through generic parameters.

### Main Components

#### ALU (Top-Level Entity)
The central controller that orchestrates all ALU operations through a 4-bit selection signal (S[3:0]). The upper two bits (S[3:2]) select the functional unit, while the lower two bits (S[1:0]) specify the operation within that unit.

**Key Features:**
- 16-bit data path with configurable width
- Carry input and output support
- Status flag generation (Negative, Zero, Carry)
- Four-way multiplexed output selection

#### Functional Units

**PartA - Arithmetic Operations**
Handles all arithmetic computations including addition, subtraction, increment, and decrement operations. This unit integrates multiple adder/subtractor components to support various arithmetic modes.

**PartB - Logic Operations** 
Implements bitwise logical operations including AND, OR, XOR, and NOT. These operations are performed in parallel across all bit positions for optimal performance.

**PartC - Right Shift Operations**
Provides four different right shift modes including logical shift, circular shift, arithmetic shift with carry, and arithmetic shift with sign extension.

**PartD - Left Shift Operations**
Implements left shift operations including logical shift, circular shift, and shift with carry input, plus a special clear operation.

### Supporting Components

#### Full Adder (FA)
A fundamental building block that implements single-bit addition with carry propagation using optimized XOR and AND logic.

#### N-bit Adder/Subtractor
A parametric component that chains multiple full adders to create configurable-width arithmetic units with carry propagation.

#### Register
A synchronous storage element with clock and reset functionality, supporting high-impedance output during reset state.

#### Program Counter (PC)
An integrated counter with automatic increment capability, combining an adder unit with a register to maintain program sequencing.

#### Memory System
A dual-mode memory implementation supporting both RAM and ROM functionality with separate read and write control signals.

#### Control Unit
A simple instruction decoder that generates memory read and write control signals based on opcode analysis.

## Supported Operations

The ALU supports a comprehensive set of operations organized into four categories:

### Arithmetic Operations (PartA)
- Addition with carry
- Subtraction with borrow
- Increment operations
- Decrement operations

### Logic Operations (PartB)
- Bitwise AND
- Bitwise OR  
- Bitwise XOR
- Bitwise NOT

### Right Shift Operations (PartC)
- Logical right shift (fill with zero)
- Circular right shift
- Right shift with carry
- Arithmetic right shift (sign extension)

### Left Shift Operations (PartD)
- Logical left shift (fill with zero)
- Circular left shift  
- Left shift with carry
- Clear operation (output all zeros)

## File Structure

```
ALU_Project/
├── src/
│   ├── ALU.vhd              # Top-level ALU entity
│   ├── PartA.vhd            # Arithmetic operations unit
│   ├── PartB.vhd            # Logic operations unit  
│   ├── PartC.vhd            # Right shift operations unit
│   ├── PartD.vhd            # Left shift operations unit
│   ├── FA.vhd               # Full adder component
│   ├── nbitadder.vhd        # N-bit adder/subtractor
│   ├── Register.vhd         # Storage register
│   ├── PC.vhd               # Program counter
│   ├── Main Memory.vhd      # Memory system
│   ├── Control_U.vhd        # Control unit
│   └── untitled.awc         # Simulation configuration
└── README.md
```

## Technical Specifications

**Data Width:** 16 bits (configurable via generic parameter)  
**Selection Bits:** 4 bits (S[3:0])  
**Input Signals:** A[15:0], B[15:0], CIN, S[3:0]  
**Output Signals:** F[15:0], COUT, Negative, Zero, Carry  
**Technology:** VHDL with IEEE standard libraries  
**Design Style:** Structural with behavioral components  

## Status Flags

The ALU generates three important status flags:

**Negative Flag:** Asserted when the result's most significant bit is high, indicating a negative result in two's complement representation.

**Zero Flag:** Asserted when the result equals zero (0x0000), useful for conditional branching and comparison operations.

**Carry Flag:** Asserted when arithmetic operations generate a carry out, essential for multi-precision arithmetic and overflow detection.

## Memory System Integration

The project includes a complete memory subsystem with both volatile and non-volatile storage capabilities. The memory system supports instruction storage in ROM with predefined instruction sequences and data storage in RAM with configurable addressing.

## Simulation and Testing

The project includes simulation configuration files for comprehensive testing and verification. The waveform configuration file (untitled.awc) provides signal monitoring capabilities for all major ALU signals and internal state variables.

## Usage Instructions

To utilize this ALU implementation:

1. Instantiate the ALU entity in your top-level design
2. Configure the generic parameter 'n' for desired bit width (default: 16)
3. Connect input operands A and B, carry input CIN, and selection signal S
4. Monitor output result F and status flags as needed
5. Use COUT for carry propagation in multi-precision operations

## Educational Value

This project demonstrates several key digital design concepts including hierarchical design methodology, parameterized components, comprehensive ALU functionality, status flag generation, memory system integration, and modular verification approaches. The implementation serves as an excellent reference for understanding ALU design principles and VHDL coding practices.

## Development Environment

The project was developed using industry-standard VHDL development tools with support for synthesis and simulation. All components follow IEEE VHDL standards for maximum compatibility and portability across different development environments.
