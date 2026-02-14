'''Desenvolva um programa que recebe do usuário nome completo e ano de nascimento que seja entre 1922 e 2021.
A partir dessas informações, o sistema mostrará o nome do usuário e a idade que completou, ou completará, no ano atual (2022).

Caso o usuário não digite um número ou apareça um inválido no campo do ano, o sistema informará o erro e continuará perguntando 
até que um valor correto seja preenchido.'''

while True:
    try:
        nome = input("Digite seu nome completo: ")
        ano_nascimento = int(input("Digite seu ano de nascimento: "))

        if 1922 <= ano_nascimento <= 2021:
            idade = 2022 - ano_nascimento
            print(f"Nome: {nome}")
            print(f"Sua idade em 2022 é: {idade}")
            break
        else:
            print("Ano inválido.")
    except ValueError:
        print("Campo inválido. Digite um número.")