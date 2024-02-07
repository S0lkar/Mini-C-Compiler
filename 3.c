
int z, x, y;

int fn(){
    return 1;
}

void fn2(){
    return;
}

int* fn3(){
    return 10;
}

int fn4(int a){
    return a;
}

int fn5(int* a, int b, int c[12]){
    int temp;
    temp = b * c[0];
    c[3] = 1;
    return temp;
}

void fn6(int *a, int** b){
    return;
}

// Codigo para ver las llamadas a funciones
int main(){
    int av, bv, cv, dv;
    z = 1;
    if(1 == 1){
        int dentro = 1;
    }
    if(1 == 1){
        int dentro = 1;
    }
    while(z == 1){
        int dentro_de_nuevo = 1;
        z = z - 1;
    }
    return z;
}
