
Frequency Divider (By Odd Number)
Overview
This project implements a Frequency Divider capable of dividing an input clock frequency by any odd number. Unlike standard frequency dividers that divide by powers of two, this design uses additional logic to handle odd division ratios, making it versatile for various timing and clock generation applications.

Features
Odd Division Factor: Divides the input clock frequency by any odd number (e.g., 3, 5, 7).
Duty Cycle Optimization: Provides a near 50% duty cycle output for odd division factors.
Synchronous Design: Ensures precise operation by synchronizing all transitions with the input clock.
Scalable and Configurable: Easily configurable for different odd division factors.
Inputs and Outputs
Inputs:
Clock (clk_in): The input clock signal to be divided.
Reset (rst): Resets the divider to its initial state.
Division Factor (N): Configurable odd number for the division ratio.
Outputs:
Clock Out (clk_out): The divided clock signal with the specified frequency.
