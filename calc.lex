%{
%}

%%
[0-9]+        printf("NUMBER %s\n", yytext);
"+"           printf("PLUS\n");
"-"           printf("MINUS\n");
"*"           printf("MULT\n");
"/"           printf("DIV\n"); 
"("           printf("L_PARENT\n");
")"           printf("R_PARENT\n");
"="           printf("EQUAL\n");
.             {
                printf("ERROR: unrecognized character\n");
                exit(-1);
              }
%%

main()
{
  yylex();
}
