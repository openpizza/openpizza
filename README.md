Open Pizza
==========

Webapp
------

- stellt API bereit
- Zugriff über Webinterface
- Erlaubt das Erstellen von Accounts, evtl. OAuth

### API ###

POST /margherita/orders/
	- Link wird generiert
  - Wo wird die Bestellung ausgelöst?
  - Wie viele Personen nehmen vorraussichtlich an der Bestellung teil?
  - Lieferadresse
  - Rechnung? Bezahlweise

GET /margherita/orders/UID
  - gibt alle items aus der Order
  - Generelle Informationen (die bei POST übermittelt wurden)

POST /margherita/orders/UID
  - neue Pizza bestellen (über Exemplar ID)
  - Anzahl


App
---

1) neue Bestellung / aus Verlauf  
2) wo will ich bestellen / Anzahl  
3) Link wird generiert  
		-> an Kollegen verteilen  
4) Pizza aus Liste auswählen  
5) bestätigen  
6) Übersichtsseite  
7) Derjenige der die Bestellung angelegt hat bestätigt  
9) Bestellung wird geliefert ;)  
