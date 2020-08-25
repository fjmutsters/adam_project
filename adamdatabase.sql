USE FranKandFranC;

CREATE TABLE Schiphol
(
Date DATE PRIMARY KEY,
Total_Passengers INTEGER(10),
Passengers_Europe INTEGER(10),
Passengers_Intercontinential INTEGER(10),
Passengers_Transfer INTEGER(10),
Passengers_Org_Des INTEGER(10),
Cargo_tonnes INTEGER(10),
Mail_tonnes INTEGER(10)
);

CREATE TABLE Twitter
(
Date DATE PRIMARY KEY,
Tweets_tourism INTEGER(10)
);

CREATE TABLE Hotelguests
(
Date DATE PRIMARY KEY,
Netherlands INTEGER(10),
Belgium INTEGER(10),
Germany INTEGER(10),
UK INTEGER(10),
France INTEGER(10),
Other_Europe INTEGER(10),
Outside_Europe INTEGER(10)
);

CREATE TABLE Hotelnights
(
Date DATE PRIMARY KEY,
Netherlands INTEGER(10),
Belgium INTEGER(10),
Germany INTEGER(10),
UK INTEGER(10),
France INTEGER(10),
Other_Asia INTEGER(10),
Other_Europe INTEGER(10),
Outside_Europe INTEGER(10)
);

ALTER TABLE Hotelguests ADD FOREIGN KEY ('Date') REFERENCES Schiphol ('Date');

ALTER TABLE Twitter ADD FOREIGN KEY ('Date') REFERENCES Schiphol ('Date');

ALTER TABLE Hotelnights ADD FOREIGN KEY ('Date') REFERENCES Schiphol ('Date');