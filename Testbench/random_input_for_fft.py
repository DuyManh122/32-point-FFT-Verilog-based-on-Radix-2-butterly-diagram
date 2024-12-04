import random

#custom fixed point
def float_to_fixed(value, integer_bits =16, fractional_bits=16):
    scaling_factor = 2 ** fractional_bits

    fixed_value = int(round(value * scaling_factor))

    return (fixed_value & 0xFFFFFFFF)  

f = open("Testbench/hex_value_input_for_fft.txt", "w")
f1 = open("Testbench/float_value_to_compare.txt", "w")
for i in range(32):
    temp = random.randint(0,10)
    fixed_val = float_to_fixed(temp)
    f.write(f"{fixed_val:08x}\n")
    f1.write(f"{temp}\n")
