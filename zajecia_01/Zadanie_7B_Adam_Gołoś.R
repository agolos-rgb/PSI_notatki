#Zadanie 7. Kalkulator podatku od zysków kapitałowych (podatek Belki)
#Scenariusz: Obliczasz podatek od zysków z inwestycji kapitałowych 
#(akcje, obligacje, fundusze).
#Stwórz funkcję podatek_Belki(przychod, koszt, typ_aktywa), która:
#   Oblicza zysk: zysk = przychod - koszt
# Jeśli zysk ≤ 0 → zwraca 0 (brak podatku od straty)
# Jeśli typ_aktywa = akcje; → podatek 19% od zysku
# Jeśli typ_aktywa = obligacje; → podatek 19% od zysku
# Jeśli typ_aktywa = kryptowaluty; → podatek według skali 
#(18% do 85 528 zł, powyżej 32%)


podatek_Belki = function(przychod, koszt, typ_aktywa)
{
  zysk=przychod-koszt
  if(zysk<=0){
    wynik=0
  }else if(typ_aktywa=="akcje" || typ_aktywa=="obligacje"){
    wynik=0.19*zysk
  }else if(typ_aktywa=="kryptowaluty"){
    if(zysk<=85528){
      wynik=0.18*zysk
    }else if(zysk>85528){
      wynik=0.32*zysk
    }
  }else{
    wynik=0.19*zysk
  }
  return(wynik)
}
podatek_Belki(15000, 10000, "akcje")
podatek_Belki(8000, 10000, "akcje")
podatek_Belki(150000, 50000,"kryptowaluty")
podatek_Belki(1500, 1000, "lokata")
