void ptr(int *x){
    *x = 4;
}

int main(){
    int x;

    x = 5;
    ptr(&x);

    //return 0;
}
