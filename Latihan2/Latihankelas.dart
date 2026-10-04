double hitungPersenDiskon(double totalBelanja, bool member){
    double persen = 0;
    if (totalBelanja >= 100000) {
        persen = 10;
        if (member) {
            persen += 5;
        }
    }
}

double hitungPotongan(double totalBelanja, double persenDiskon) {
    double potongan = totalBelanja * (persenDiskon / 100)
    if (potongan > 25000) potongan = 25000;
    return potongan;
}


double hitungTotalBayar(double totalBelanja, bool member) {
    double persenDiskon = hitungPersenDiskon(totalBelanja,member);
    double potongan =hitungPotongan(totalBelanja,persenDiskon);
    return totalBelanja - potongan;
}

void main(){
    print('Skenario 1: Rp${hitungTotalBayar(80000,false)}');
    print('Skenario 2: Rp${hitungTotalBayar(150000,false)}');
    print('Skenario 3: Rp${hitungTotalBayar(150000,true)}');
    print('Skenario 4: Rp${hitungTotalBayar(300000,true)}');
}