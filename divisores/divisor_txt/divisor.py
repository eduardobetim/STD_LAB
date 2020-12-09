from bitstring import BitArray 
import itertools

def int2bin(a, length):
    b = BitArray(uint=a, length=length) 
    return b.bin

BITS_ENTRADA = 4
BITS_SAIDA = 4

input_f = open("entradas.txt","w")
output_f = open("saidas_ref.txt","w")
testes_a = range(0, 16)
testes_b = range(1, 16)


for a,b in itertools.product(testes_a, testes_b):
    quoc = a // b
    resto = a % b 

    bin_a = int2bin(a, BITS_ENTRADA)
    bin_b = int2bin(b, BITS_ENTRADA)
    bin_quoc = int2bin(quoc, BITS_SAIDA)
    bin_resto = int2bin(resto, BITS_SAIDA)

    print(f'{bin_a} {bin_b}', file = input_f)
    print(f'{bin_quoc} {bin_resto}', file = output_f)

input_f.close()
output_f.close()