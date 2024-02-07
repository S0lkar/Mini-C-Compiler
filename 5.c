
int a[12];

void* funcion(){return 1;} // en algunos compiladores da warnings, pero se permite.

void** otra_funcion(){return 10;}

int main(){
    char caracter = abs(-0x0000067);
    printf("%c", caracter);

    char cadena[5];
    cadena[0] = 'h';
    cadena[1] = 'o';
    cadena[2] = 'l';
    cadena[3] = 'a';
    cadena[4] = '\n';

    printf("%s", cadena);
    int i = a[1] = caracter + true;
    i += i;
    i *= a[1];
}