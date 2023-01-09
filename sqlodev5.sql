

--film tablosunda bulunan ve film ismi (title) 'n' karakteri ile biten en uzun (length) 5 filmi sýralayýnýz.

SELECT top 5 * FROM film WHERE title LIKE '%n' ORDER BY length DESC;

--film tablosunda bulunan ve film ismi (title) 'n' karakteri ile biten en kýsa (length) ikinci(6,7,8,9,10) 5 filmi(6,7,8,9,10) sýralayýnýz.

SELECT top 5 * FROM film WHERE title LIKE '%n' ORDER BY length ASC;

---customer tablosunda bulunan last_name sütununa göre azalan yapýlan sýralamada store_id 1 olmak koþuluyla ilk 4 veriyi sýralayýnýz.

SELECT top 4 * FROM customer WHERE store_id = 1 ORDER BY last_name ASC;