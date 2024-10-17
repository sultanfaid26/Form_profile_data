for tahunKabisat in range (1600, 2025, 4):
    if tahunKabisat % 400 == 0 :
        print(tahunKabisat , "Adalah Tahun Kabisat")
    elif tahunKabisat % 100 == 0:
        print(tahunKabisat , "Adalah Bukan Tahun Kabisat")
    elif tahunKabisat % 4 == 0:
        print(tahunKabisat , "Adalah Tahun Kabisat")
    else:
        print(tahunKabisat , "Adalah Bukan Tahun Kabisat")