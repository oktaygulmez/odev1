/*     A�a��daki sorgu senaryolar�n� dvdrental �rnek veri taban� �zerinden ger�ekle�tiriniz.
    1- actor ve customer tablolar�nda bulunan first_name s�tunlar� i�in t�m verileri s�ralayal�m.
    2- actor ve customer tablolar�nda bulunan first_name s�tunlar� i�in kesi�en verileri s�ralayal�m.
    3- actor ve customer tablolar�nda bulunan first_name s�tunlar� i�in ilk tabloda bulunan ancak ikinci tabloda bulunmayan verileri s�ralayal�m.
    4- �lk 3 sorguyu tekrar eden veriler i�in de yapal�m.
 */
 
 
-- �dev11 1. Cevap :
 
(
	SELECT first_name FROM actor
)
UNION
(	
	SELECT first_name FROM customer 
)
ORDER BY first_name;



-- �dev11 2. Cevap : 

(
	SELECT first_name FROM actor
)
INTERSECT
(	
	SELECT first_name FROM customer 
)
ORDER BY first_name;

-- �dev11 3. Cevap : 




(
	SELECT first_name FROM actor
)
EXCEPT
(	
	SELECT first_name FROM customer 
)
ORDER BY first_name;



-- 4. �lk 3 sorguyu tekrar eden veriler i�in de yapal�m.
-- 1. soru
(
SELECT first_name FROM actor
)
UNION ALL 
(
SELECT first_name FROM customer
);

(
SELECT first_name FROM actor
)
INTERSECT ALL
(
SELECT first_name FROM customer
);

(
SELECT first_name FROM actor
)
EXCEPT ALL
(
SELECT first_name FROM customer
);