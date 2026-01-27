'''Precisamos imprimir um número para cada andar de um hotel de 20 andares. 
Porém, o dono do hotel é supersticioso e optou por não ter um 13ro andar.

Escreva um código que imprima todos os números exceto o número 13. Escreva mais dois códigos 
que resolvam o mesmo problema, mas dessa vez usando os outros dois tipos de laços de repetição 
aprendidos. Como desafio, imprima eles em ordem decrescente (20, 19, 18...)'''

#1 usando for
for i in range(20, 0, -1):
    if (i != 13):
        print(i)

#2 usando while
andar = 21
while andar != 1:
    andar -= 1
    if (andar != 13):
        print(andar)

#3 usando for + continue
for andar in range(20, 0, -1):
    if andar == 13:
        continue
    print(andar)