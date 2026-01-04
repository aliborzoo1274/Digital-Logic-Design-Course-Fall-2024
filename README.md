# Digital Logic Design Course - Fall 2024

This repository contains all computer assignments (CAs) completed for the Digital Logic Design course during Fall 2024 semester at University of Tehran. The projects are implemented in Verilog and SystemVerilog, covering fundamental to advanced digital logic concepts.

## 📚 Course Overview

The repository includes four comprehensive computer assignments that progressively build upon digital logic design fundamentals, from combinational circuits to sequential systems and complex state machines.

## 📁 Repository Structure

```
├── CA1/                    # Computer Assignment 1: Seven-Segment Decoder
├── CA2/                    # Computer Assignment 2: Combinational Logic Systems
├── CA3/                    # Computer Assignment 3: Sequential Circuits & Grain Cipher
├── CA4/                    # Computer Assignment 4: Matrix Determinant Calculator
└── README.md
```

## 🔧 Assignments

### CA1: Seven-Segment Decoder
**Topics**:  Combinational Logic, Decoders

Implementation of seven-segment display decoders using both structural and behavioral modeling approaches.

**Key Files**:
- `sevenSegmentDecoder.sv` - Structural implementation
- `sevenSegmentDecoderBehavioral.sv` - Behavioral implementation
- `sevenSegmentDecoderTB.sv` - Testbench for structural design
- `sevenSegmentDecoderBehavioralTB.sv` - Testbench for behavioral design

**Concepts Covered**:
- Combinational circuit design
- SystemVerilog syntax
- Behavioral vs structural modeling
- Testbench development

---

### CA2: Combinational Logic System
**Topics**: Multiplexers, Decoders, Encoders, Comparators, Adders

A complex combinational system integrating multiple digital components.

**Key Components**:
- **Multiplexers**: 2:1, 4:1, 8:1 (single and 4-bit versions)
- **Decoder**: 4-to-16 decoder
- **Encoder**: 16-to-4 priority encoder
- **Comparator**:  4-bit magnitude comparator
- **Adder**: 4-bit adder with carry
- **Top Module**: Integrated system combining all components

**Files**:
- `mux8to1.v`, `four_bit_mux8to1.v`, etc.  - Multiplexer implementations
- `decoder4to16.v` - Decoder module
- `encode16to4r.v` - Priority encoder
- `comparator.v` - Magnitude comparator
- `adder.v` - 4-bit adder
- `core_system.v` - Core integration module
- `top_module.v` - System top level
- `top_module_tb.v` - Complete system testbench

---

### CA3: Sequential Circuits & Grain Cipher
**Topics**: Flip-Flops, Latches, Shift Registers, LFSR, NFSR, Stream Ciphers

Implementation of sequential logic circuits culminating in the Grain stream cipher.

**Key Components**: 
1. **Basic Sequential Elements**:
   - `DFF. v` - D Flip-Flop
   - `Gated_D_Latch.v` - Gated D Latch
   - `Mux2to1.v` - 2:1 Multiplexer

2. **Shift Registers**:
   - `Shift_Register.v` - Multi-mode shift register
   - `LFSR.v` - Linear Feedback Shift Register
   - `NFSR.v` - Non-Linear Feedback Shift Register

3. **Grain Cipher**:
   - `Grain. v` - Complete Grain stream cipher implementation
   - Multiple testbenches for verification

**Concepts Covered**:
- Sequential circuit design
- Feedback shift registers
- Cryptographic primitives
- State machine implementation

---

### CA4: Matrix Determinant Calculator
**Topics**: Finite State Machines, Datapath Design, Control Units

A complete digital system for calculating 2×2 matrix determinants using FSM-based control.

**System Architecture**:
- **Controller**: FSM-based control unit (`controller.v`)
- **Datapath**:  Computational unit (`datapath.v`)
- **Main Module**: Top-level integration (`main_module.v`)

**Key Components**:
- `ROM.v` - ROM for matrix storage
- `register_8bit.v`, `register_16bit.v` - Data registers
- `counter_2bit.v`, `counter_4bit.v` - Counter modules
- `multiplier.v`, `subtractor.v` - Arithmetic units
- `mux_2to1.v` - Data multiplexer
- `decoder_1to2.v`, `decoder_2to4.v` - Control decoders
- `determinant_calculator.v` - Determinant computation logic

**Features**:
- ROM-based matrix storage
- FSM-controlled computation
- Pipelined datapath design
- Modular architecture

---

## 🛠️ Tools & Technologies

- **Language**:  Verilog, SystemVerilog
- **Simulation**: ModelSim / QuestaSim (recommended)
- **Synthesis**: Any Verilog-compatible synthesis tool

## 🚀 Getting Started

### Prerequisites
- ModelSim, QuestaSim, or any Verilog simulator
- Basic understanding of digital logic design
- Verilog/SystemVerilog knowledge

### Running Simulations

1. **Navigate to the assignment directory**: 
```bash
cd CA1  # or CA2, CA3, CA4
```

2. **Compile the design files**:
```bash
vlog *.v
# or for SystemVerilog
vlog *.sv
```

3. **Run the testbench**:
```bash
vsim -c <testbench_module_name> -do "run -all; quit"
```

### Example:  Running CA1
```bash
cd CA1
vlog sevenSegmentDecoder. sv sevenSegmentDecoderTB.sv
vsim -c sevenSegmentDecoderTB -do "run -all; quit"
```

## 📖 Documentation

Each assignment directory contains:
- `DLD_CA#N_810102410.pdf` - Completed assignment report
- `DLD_CAN. pdf` - Original assignment specifications

## 🎓 Learning Outcomes

- ✅ Combinational and sequential circuit design
- ✅ Verilog/SystemVerilog HDL programming
- ✅ Testbench development and verification
- ✅ Modular design principles
- ✅ FSM-based control systems
- ✅ Datapath and controller separation
- ✅ Cryptographic hardware implementations
- ✅ Complex digital system integration

## 👤 Author

**Ali Borzoozadeh** ([aliborzoo1274](https://github.com/aliborzoo1274))