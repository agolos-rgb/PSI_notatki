#Zadanie 2. Konwerter walut
#Scenariusz: Tworzysz prostą funkcję do przeliczania walut dla kantoru.
#Stwórz funkcję przelicz_walute(kwota, kurs) z domyślnym kursem 
#EUR/PLN = 4.32
#Przetestuj funkcję: ile otrzymasz PLN za 100 EUR przy domyślnym 
#kursie? Ile przy kursie 4.50?

przelicz_walute = function(kwota, kurs = 4.32) 
{
  wynik = kwota*kurs
  return(wynik)
}

przelicz_walute(100) # funkcja użyje domyślnego kursu 4.32
przelicz_walute(100, 4.50) # funkcja użyje podanego kursu 4.50
