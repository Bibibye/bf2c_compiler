%%

"+" printf("(*ptr)++;\n");
"-" printf("(*ptr)--;\n");
">" printf("ptr++;\n");
"<" printf("ptr--;\n");
"[" printf("while(*ptr){\n");
"]" printf("}\n");
"." printf("putchar(*ptr);\n");
"," printf("(*ptr) = getchar();​\n");
.|\n {}

%%

int main(void){
  printf("#include <stdio.h>\n"
     "#define MEM_SIZE 4000\n\n"
     "int main(void) {\n"
     "int mem[MEM_SIZE] = {0};\n"
     "int *ptr = mem;\n");
  yylex();
  printf("}\n");
  return 0;
}
