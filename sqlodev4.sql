
--1 film tablosunda bulunan replacement_cost s�tununda bulunan birbirinden farkl� de�erleri s�ralay�n�z.

SELECT DISTINCT replacement_cost FROM film ;

--2 film tablosunda bulunan replacement_cost s�tununda birbirinden farkl� ka� tane veri vard�r?

SELECT COUNT(DISTINCT replacement_cost) FROM film ;

--3 film tablosunda bulunan film isimlerinde (title) ka� tanesi T karakteri ile ba�lar ve ayn� zamanda rating 'G' ye e�ittir?

SELECT COUNT(*) FROM film
WHERE title LIKE 'T%' AND rating = 'G';

--4 country tablosunda bulunan �lke isimlerinden (country) ka� tanesi 5 karakterden olu�maktad�r?

SELECT COUNT(*) FROM country 
WHERE LENGTH(country) = 5;

--5- city tablosundaki �ehir isimlerinin ka� tanesi 'R' veya r karakteri ile biter

SELECT COUNT(*) FROM city
WHERE city LIKE '%r';