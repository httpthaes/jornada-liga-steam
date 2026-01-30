rodas = int(input("Quantas rodas tem o veículo?\n"))
pesoKg = float(input("Qual o peso bruto do veículo (KG)?\n"))
quantidadePessoas = int(input("Qual é a quantidade de pessoas que o veículo acomoda?\n"))

if (rodas <= 3):
    print("Habilitação: A")
elif (rodas == 4) and (quantidadePessoas <= 8) and (pesoKg <= 3500):
    print("Habilitação: B")
elif (pesoKg >= 3500) and (pesoKg <= 6000):
    print("Habilitação: C")
elif (quantidadePessoas > 8):
    print("Habilitação: D")
elif (pesoKg > 6000):
    print("Habilitação: E")