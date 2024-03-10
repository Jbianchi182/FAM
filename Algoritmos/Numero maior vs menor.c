#include <iostream>
#include <conio.h>
#include <stdio.h>
#include <string>
#include <locale.h>

int main ( )
{
    setlocale(LC_ALL, "Portuguese");

    int num1, num2;

      printf("insira um número para ser calculado: ");
      scanf("%d",&num1);

      printf("\ninsira um valor diferente para ser calculado: ");
      scanf("%d",&num2);

      if ((num1==num2))
      {
          printf("\nOs valores são iguais, você digitou %d", num1);
      }
      else
      {
            if (num1>num2)
            {
                printf("\nO número maior é %d, e o número menor é %d", num1, num2);
            }
            else
            {
                printf("\nO número maior é %d, e o menor é %d", num2, num1);
            }
      }

    return 0;
}
