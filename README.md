# ROM – Read Only Memory

## Description

This project implements an 8 × 8 Read-Only Memory (ROM) using Verilog HDL.
The ROM stores 8-bit data at 8 different addresses and provides the stored data when an address is given.

## Features

* 8 memory locations
* Each location stores 8-bit data
* 3-bit address input
* 8-bit data output
* Data is read synchronously with the clock

## Files

* `rom.v` – Verilog design code
* `rom_tb.v` – Verilog testbench
* `expected_output.txt` – Expected simulation output

## Memory Contents

| Address | Data |
| ------: | :--: |
|       0 |  A1  |
|       1 |  B2  |
|       2 |  C3  |
|       3 |  D4  |
|       4 |  E5  |
|       5 |  F6  |
|       6 |  17  |
|       7 |  28  |

## How to Run

Use any Verilog simulator such as Icarus Verilog, Vivado, ModelSim, or QuestaSim.

For Icarus Verilog:

```bash
iverilog -o rom_sim rom.v rom_tb.v
vvp rom_sim
```

## Expected Result

The testbench displays the stored ROM data for each address and verifies that the correct data is read.

## Author

Udayasree
