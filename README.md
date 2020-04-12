Feladat:
1. Utazóügynök feladat szimulált h˝utéssel. A program n · 36 város esetre optimális utat kell találjon.

Megoldás lépései:
1.Generálom a városok koordinátáit egy mátrixba
2.Generálok egy utvonalat
3.Inicializálom a  szimulált lehűtés állandóit
4.Szimulált lehűtés algoritmus implementálása:
	-kiszámolom az aktuális hőmérsékletet
	-megállási feltételt ellenörzöm
	-aktuális út hosszát számolom
	-ábrázolom az aktuális utat
	-generálom a következő szomszédos állapotot két város sorrendjének felcserélése által
	-számolom a két út különbségét
	-ha az új út rövidebb az lesz az aktuális, másképp csak a valószínűségi tényező függvényében fogadom el