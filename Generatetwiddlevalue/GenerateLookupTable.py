import math

def fixed_to_float(fixed_value, integer_bits = 16, fractional_bits = 16):
    scaling_factor = 2 ** fractional_bits

    float_value = float(fixed_value) / scaling_factor

    return float_value


#custom fixed point
def float_to_fixed(value, integer_bits =16, fractional_bits=16):
    scaling_factor = 2 ** fractional_bits

    fixed_value = int(round(value * scaling_factor))

    return (fixed_value & 0xFFFFFFFF)  


def generate_lut(num = 32):
    sin_file = open("Generatetwiddlevalue/sin_look_up_table_32.hex", "w") 
    cos_file = open("Generatetwiddlevalue/cos_look_up_table_32.hex", "w")

    for i in range(num):
        angle = (i / num) * 2 * math.pi  

        sin_val = math.sin(angle)
        cos_val = math.cos(angle)
        sin_int = float_to_fixed(sin_val) 
        cos_int = float_to_fixed(cos_val) 

        sin_file.write(f"assign twiddle_sin[{i}] = {{32'h{sin_int:08x}}};\t//{sin_val}\n")
        cos_file.write(f"assign twiddle_cos[{i}] = {{32'h{cos_int:08x}}};\t//{cos_val}\n")


#Testing
float_val = -0.75
fixed_val = float_to_fixed(float_val)
print(f"Fixed-point value of {float_val}: {{32'h{fixed_val:08x}}}")



generate_lut(32)


