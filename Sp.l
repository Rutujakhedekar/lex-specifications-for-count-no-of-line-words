%{
#include<stdio.h>
int lines=0,words=0,s_letter=0,c_letter=0,num=0,total=0,spl_char=0;
%}
%%
\n {lines++; words++;}
[' '] {words++;}
[A-Z] {c_letter++;}
[a-z] {s_letter++;}
[0-9] {num++;}
. spl_char++;
%%
main(){
yyin=fopen("F1.txt","r");
yylex();
total=lines+words+s_letter+c_letter;
printf("This file contain...");
printf("\n\t lines:%d ",lines);
printf("\n\t words:%d ",words);
printf("\n\t small character:%d ",s_letter);
printf("\n\t capital letter:%d ",c_letter);
printf("\n\t No.of digit:%d ",num);
printf("\n\t special character:%d ",spl_char);
printf("\n\t total:%d",total);
printf("\n");
}
yywrap(){
return 1;
}
