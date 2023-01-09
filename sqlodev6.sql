
--1- film tablosunda bulunan rental_rate s�tunundaki de�erlerin ortalamas� nedir?

SELECT ROUND(AVG(rental_rate),2) FROM film;


--2- film tablosunda bulunan filmlerden ka� tanesi 'C' karakteri ile ba�lar?

SELECT COUNT(film_id) FROM film
WHERE title LIKE 'C%';


--3- film tablosunda bulunan filmlerden rental_rate de�eri 0.99 a e�it olan en uzun (length) film ka� dakikad�r?

SELECT MAX(length) FROM film
WHERE rental_rate = 0.99;


--4- film tablosunda bulunan filmlerin uzunlu�u 150 dakikadan b�y�k olanlar�na ait ka� farkl� replacement_cost de�eri vard�r?

SELECT COUNT(DISTINCT replacement_cost) FROM film
WHERE length > 150;