DROP TABLE "Adres" CASCADE CONSTRAINTS
;

DROP TABLE "Aukcja" CASCADE CONSTRAINTS
;

DROP TABLE "Garages" CASCADE CONSTRAINTS
;

DROP TABLE "Klient" CASCADE CONSTRAINTS
;

DROP TABLE "Narzedzia" CASCADE CONSTRAINTS
;

DROP TABLE "Oferta" CASCADE CONSTRAINTS
;

DROP TABLE "Platnosc" CASCADE CONSTRAINTS
;

DROP TABLE "Rezerwacja" CASCADE CONSTRAINTS
;

DROP TABLE "Users" CASCADE CONSTRAINTS
;

CREATE TABLE "Adres"
(
	"AdresID" varchar(50) NOT NULL,
	"Ulica" varchar(50),
	"Miasto" varchar(50),
	"KodPocztowy" varchar(50),
	"Kraj" varchar(50)
)
;

CREATE TABLE "Aukcja"
(
	"Cenakupteraz" varchar(0),
	"Cenamin" varchar(0),
	"Cenastart" varchar(0),
	"Czastrwania" varchar(0),
	"Datastart" varchar(0),
	"Datastop" varchar(0),
	"Datautworzenia" varchar(0),
	"Nazwa" varchar(0),
	"Opis" varchar(0),
	"Status" varchar(0),
	"Urlfotki" varchar(0),
	"AukcjaID" varchar(0) NOT NULL,
	"KategoriaID" varchar(0),
	"w³aœciciel" varchar(0)
)
;

CREATE TABLE "Garages"
(
	"Nazwa" varchar(50),
	"Opis" varchar(50),
	"CenaZaGodzine" varchar(50),
	"GarazID" varchar(50) NOT NULL,
	"UserID" varchar(50) NOT NULL,
	"AdresID" varchar(50)
)
;

CREATE TABLE "Klient"
(
	"Ranga" varchar(0),
	"KlientID" varchar(0) NOT NULL
)
;

CREATE TABLE "Narzedzia"
(
	"NarzedziaID" varchar(50) NOT NULL,
	"GarazID" varchar(50),
	"Nazwa" varchar(50),
	"Opis" varchar(50),
	"Ilosc" varchar(50)
)
;

CREATE TABLE "Oferta"
(
	"Cenaofertowa" varchar(0),
	"Dataoferty" varchar(0),
	"OfertaID" varchar(0) NOT NULL,
	"KlientID" varchar(0),
	"AukcjaID" varchar(0)
)
;

CREATE TABLE "Platnosc"
(
	"PlatnoscID" varchar(50) NOT NULL,
	"RezerwacjaID" varchar(50),
	"Termin_Platnosci" varchar(50),
	"Kwota" varchar(50),
	"Metoda_Platnosci" varchar(50)
)
;

CREATE TABLE "Rezerwacja"
(
	"RezerwacjaID" varchar(50) NOT NULL,
	"UserID" varchar(50),
	"GarazID" varchar(50),
	"Start_Czas" varchar(50),
	"Koniec_Czas" varchar(50)
)
;

CREATE TABLE "Users"
(
	"Imie" varchar(0),
	"Nazwisko" varchar(0),
	"Email" varchar(0) NOT NULL,
	"Has³o" varchar(0),
	"Status" varchar(50),
	"Login" varchar(50),
	"UserID" varchar(50) NOT NULL
)
;

ALTER TABLE "Adres" 
 ADD CONSTRAINT "PK_Adres"
	PRIMARY KEY ("AdresID") USING INDEX
;

ALTER TABLE "Aukcja" 
 ADD CONSTRAINT "PK_Aukcja"
	PRIMARY KEY ("AukcjaID") USING INDEX
;

ALTER TABLE "Garages" 
 ADD CONSTRAINT "PK_Garages"
	PRIMARY KEY ("GarazID") USING INDEX
;

ALTER TABLE "Klient" 
 ADD CONSTRAINT "PK_Klient"
	PRIMARY KEY ("KlientID") USING INDEX
;

ALTER TABLE "Oferta" 
 ADD CONSTRAINT "PK_Oferta"
	PRIMARY KEY ("OfertaID") USING INDEX
;

ALTER TABLE "Platnosc" 
 ADD CONSTRAINT "PK_Platnosc"
	PRIMARY KEY ("PlatnoscID") USING INDEX
;

CREATE INDEX "FK_UserID"   
 ON "Rezerwacja" ("UserID") 
;

CREATE INDEX "FK_GarazID"   
 ON "Rezerwacja" ("GarazID") 
;

ALTER TABLE "Rezerwacja" 
 ADD CONSTRAINT "PK_Rezerwacja"
	PRIMARY KEY ("RezerwacjaID") USING INDEX
;

ALTER TABLE "Users" 
 ADD CONSTRAINT "PK_User"
	PRIMARY KEY ("UserID") USING INDEX
;

ALTER TABLE "Aukcja" 
 ADD CONSTRAINT "FK_Aukcja_przedmiot"
	FOREIGN KEY ("w³aœciciel") REFERENCES "Klient" ("KlientID")
;

ALTER TABLE "Garages" 
 ADD CONSTRAINT "FK_UserID"
	FOREIGN KEY () REFERENCES  ()
;

ALTER TABLE "Garages" 
 ADD CONSTRAINT "FK_AdresID"
	FOREIGN KEY () REFERENCES  ()
;

ALTER TABLE "Narzedzia" 
 ADD CONSTRAINT "FK_GarazID"
	FOREIGN KEY () REFERENCES  ()
;

ALTER TABLE "Oferta" 
 ADD CONSTRAINT "FK_Oferta_Klient"
	FOREIGN KEY ("KlientID") REFERENCES "Klient" ("KlientID")
;

ALTER TABLE "Oferta" 
 ADD CONSTRAINT "FK_Oferta_Aukcja"
	FOREIGN KEY ("AukcjaID") REFERENCES "Aukcja" ("AukcjaID")
;

ALTER TABLE "Platnosc" 
 ADD CONSTRAINT "FK_RezerwacjaID"
	FOREIGN KEY () REFERENCES  ()
;
