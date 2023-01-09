/*     Aþaðýdaki sorgu senaryolarýný dvdrental örnek veri tabaný üzerinden gerçekleþtiriniz.
    1- actor ve customer tablolarýnda bulunan first_name sütunlarý için tüm verileri sýralayalým.
    2- actor ve customer tablolarýnda bulunan first_name sütunlarý için kesiþen verileri sýralayalým.
    3- actor ve customer tablolarýnda bulunan first_name sütunlarý için ilk tabloda bulunan ancak ikinci tabloda bulunmayan verileri sýralayalým.
    4- Ýlk 3 sorguyu tekrar eden veriler için de yapalým.
 */
 
 
-- Ödev11 1. Cevap :
 
(
	SELECT first_name FROM actor
)
UNION
(	
	SELECT first_name FROM customer 
)
ORDER BY first_name;



-- Ödev11 2. Cevap : 

(
	SELECT first_name FROM actor
)
INTERSECT
(	
	SELECT first_name FROM customer 
)
ORDER BY first_name;

-- Ödev11 3. Cevap : 




(
	SELECT first_name FROM actor
)
EXCEPT
(	
	SELECT first_name FROM customer 
)
ORDER BY first_name;



-- 4. Ýlk 3 sorguyu tekrar eden veriler için de yapalým.
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