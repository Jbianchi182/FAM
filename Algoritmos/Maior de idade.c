#include <iostream>
#include <conio.h>
#include <stdio.h>
#include <string>
#include <locale.h>

int main ( )
{
    setlocale(LC_ALL, "Portuguese");

    int contpess, idade, pessoamaior;
    pessoamaior=0;

    for (contpess=1; contpess<11; contpess++)
    {
        printf("insira a idade da pessoa %d: ", contpess);
        printf("\n");
        scanf("%d", &idade);

        if (idade>=18)
        {
            pessoamaior=pessoamaior+1;
        }
    }
    printf("\no total de pessoas maiores de idade é: %d", pessoamaior);


    return 0;
}
