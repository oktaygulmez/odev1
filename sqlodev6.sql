
--1- film tablosunda bulunan rental_rate sütunundaki deðerlerin ortalamasý nedir?

SELECT ROUND(AVG(rental_rate),2) FROM film;


--2- film tablosunda bulunan filmlerden kaç tanesi 'C' karakteri ile baþlar?

SELECT COUNT(film_id) FROM film
WHERE title LIKE 'C%';


--3- film tablosunda bulunan filmlerden rental_rate deðeri 0.99 a eþit olan en uzun (length) film kaç dakikadýr?

SELECT MAX(length) FROM film
WHERE rental_rate = 0.99;


--4- film tablosunda bulunan filmlerin uzunluðu 150 dakikadan büyük olanlarýna ait kaç farklý replacement_cost deðeri vardýr?

SELECT COUNT(DISTINCT replacement_cost) FROM film
WHERE length > 150;