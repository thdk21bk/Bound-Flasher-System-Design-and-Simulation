# Bound Flasher Project

## Overview
The "Bound Flasher" project showcases a 16-lamp display system, meticulously engineered using Verilog and synthesized with Cadence tools to ensure optimal performance. This design utilizes a state machine to control the sequential lighting and dimming of lamps based on input signals. Additionally, Logic Equivalence Checking (LEC) confirms that the final netlist maintains functional integrity with the original RTL, ensuring the system operates as specified without errors.

## Features
- **Initial State**: All lamps are initially OFF.
- **Flick Control**: Activation starts the flicker operation.
- **Lamp Operation**:
  - Lamps turn ON from `lamp[0]` to `lamp[15]` and OFF in reverse, with intermediary states.
  - Special kickback operations at `lamp[5]` and `lamp[10]` when flick is active.

## Interface
- **Inputs**:
  - `clk`: Clock signal
  - `flick`: Flick signal to control transitions
  - `rst`: Reset signal to restart the system
- **Output**:
  - `lamps`: 16-bit output showing the state of each lamp

## State Machine
The system transitions through multiple states based on the input signals, gradually turning lamps ON and OFF, and handling intermediate "kickback" points dynamically.

## Simulation
The project includes a simulation environment where the Bound Flasher's behavior can be tested and verified according to the design specifications. The test bench toggles through various states, ensuring the system responds correctly to the control signals.


