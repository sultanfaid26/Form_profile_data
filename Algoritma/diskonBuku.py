jumlahBuku= int(input("Masukan jumlah buku: "))
hargaPerEksemplar = 5000
eksemplar = jumlahBuku * 10

if jumlahBuku <= 100 :
   hasil = eksemplar * hargaPerEksemplar
   print(f"total harga buku adalah: {hasil:,}")

elif jumlahBuku > 100 and jumlahBuku <= 200 :
    diskon1 = 100 * hargaPerEksemplar * 0.95
    diskon2 = (eksemplar - 100) * hargaPerEksemplar * 0.85
    hasil = diskon1 + diskon2
    print(f"total harga buku adalah: {hasil:,}")
    
elif jumlahBuku > 200 :
    diskon1 = 100 * hargaPerEksemplar * 0.93
    diskon2 = 100 * hargaPerEksemplar * 0.83
    diskon3 = (eksemplar - 200) * hargaPerEksemplar * 0.73
    hasil = diskon1 + diskon2 + diskon3
    print(f"total harga buku adalah: {hasil:,}")
    
    