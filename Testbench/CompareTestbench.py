import math
import numpy as np
import matplotlib.pyplot as plt
from scipy.fft import fft

# change it
file_path = "D:/HKI_NAM4/TH_SOC/Personal_Project_Main/Testbench/result_in_verilog.txt"

fft_size = 8

def magnitude (a, b):
    squared_a = a * a
    squared_b = b * b
    return math.sqrt(squared_a + squared_b)

def fixed_to_float(fixed_value, integer_bits = 16, fractional_bits = 16):
    scaling_factor = 2 ** fractional_bits

    # Handle two's complement for negative values
    total_bits = integer_bits + fractional_bits
    if fixed_value & (1 << (total_bits - 1)):  
        fixed_value -= (1 << total_bits)  

    float_value = float(int(fixed_value)) / scaling_factor

    return float_value


#custom fixed point
def float_to_fixed(value, integer_bits =16, fractional_bits=16):
    scaling_factor = 2 ** fractional_bits

    fixed_value = int(round(value * scaling_factor))

    return (fixed_value & 0xFFFFFFFF)  


#Testing
val = -0.75
fixed_val = float_to_fixed(val)
float_val = fixed_to_float(fixed_val)
print(f"Fixed-point value of {val}: {{32'h{fixed_val:08x}}}")
print(f"Float value of {{32'h{fixed_val:08x}}}: {float_val}")


complex_actual_value = []

modelsim_outfile = open(file_path, "r")


for line in modelsim_outfile:
    val_string = line.strip()
    val_int = int(val_string,16)
    val_float = fixed_to_float(val_int)
    complex_actual_value.append(val_float)

print("\nFFT Output:\n")
for value in complex_actual_value:
    print(value)

print("\nFFT Expected:\n")
complex_expected_value = fft([1,1,1,0,1,0,0,0])
print(complex_actual_value)

# draw a line grapt to compare
power_actual_data = []
power_expeced_data = []

for i in range (0, fft_size * 2, 2):
    power_actual_data.append(magnitude(complex_actual_value[i], complex_actual_value[i+1]))

power_expeced_data = abs(complex_expected_value)


plt.plot(list(range(8)) , power_actual_data, label = "actual data", marker = 'o')
plt.plot(list(range(8)) , power_expeced_data, label = "expected data", marker = 'x')

plt.xlabel('Frequency (Hz)')
plt.ylabel('Magnitude')
# giving a title to my graph
plt.title('FFT 8 point compare')
plt.legend()
plt.show()
modelsim_outfile.close()