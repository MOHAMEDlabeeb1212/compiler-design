%{
         #include<stdio.h>
%}

%%
[a-zA-z0-9.]+"gmail.com"               {printf("%s is valid email\n");}

.+                                  {printf("%s is Invalid email\n");}
%%

int main()
{
              printf("\n enter the email:");
              yylex();

              return 0;
}
int yywrap()
{
    return 1;
}