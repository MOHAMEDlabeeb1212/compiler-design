%{ 
    int counter = 0;
%} 
 
%%
[a-zA-Z]+ { 
    if (yyleng > counter) {
        counter = yyleng;
    } 
} 
%% 

int main() { 
    yylex(); 
    printf("Largest: %d\n", counter); 
    return 0;
}

int yywrap() {
    return 1;
}
