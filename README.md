# Latihan2-DasarAplikasiMobile

Program sederhana untuk menghitung total bayar belanja dengan aturan diskon tertentu.

---

## ✨ Fitur
- Diskon 10% jika belanja ≥ Rp100.000  
- Tambahan diskon 5% untuk member (hanya jika syarat pertama terpenuhi)  
- Potongan maksimal Rp25.000  

---

## ⚙️ Cara Kerja
1. Input: total belanja (angka), status member (true/false).  
2. Hitung persentase diskon sesuai aturan.  
3. Hitung nominal potongan, batasi maksimal Rp25.000.  
4. Total bayar = total belanja – potongan.  

---

## Implementasi (Dart)
```dart
double hitungPersenDiskon(double totalBelanja, bool member) {
  if (totalBelanja >= 100000 && member) return 0.15;
  if (totalBelanja >= 100000) return 0.10;
  return 0;
}

double hitungPotongan(double diskon, double totalBelanja) {
  double potongan = diskon * totalBelanja;
  return potongan > 25000 ? 25000 : potongan;
}

double hitungTotalBayar(double totalBelanja, bool member) {
  double persen = hitungPersenDiskon(totalBelanja, member);
  double potongan = hitungPotongan(persen, totalBelanja);
  return totalBelanja - potongan;
}

void main() {
  print(hitungTotalBayar(80000, false));   // 80000
  print(hitungTotalBayar(150000, false));  // 135000
  print(hitungTotalBayar(150000, true));   // 127500
  print(hitungTotalBayar(300000, true));   // 275000
}
