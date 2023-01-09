/*film tablosunda bulunan tüm sütunlardaki verileri replacement cost deðeri 
12.99 dan büyük eþit ve 16.99 küçük olma koþuluyla sýralayýnýz 
( BETWEEN - AND yapýsýný kullanýnýz.)*/
Select replacement_cost from film where replacement_cost Between 12.99 and 16.99;

---------------------------------------------------------------------------------------------------------

--2 actor tablosunda bulunan first_name ve last_name sütunlardaki verileri first_name 
--'Penelope' veya 'Nick' veya 'Ed' deðerleri olmasý koþuluyla sýralayýnýz. ( IN operatörünü kullanýnýz.)
select first_name,last_name from actor where first_name IN('Penelope','Nick','Ed');

---------------------------------------------------------------------------------------------------------

--3 film tablosunda bulunan tüm sütunlardaki verileri rental_rate 0.99, 2.99, 4.99
--VE replacement_cost 12.99, 15.99, 28.99 olma koþullarýyla sýralayýnýz. ( IN operatörünü kullanýnýz.)
select *from film where rental_rate IN(0.99, 2.99, 4.99) AND replacement_cost IN(12.99, 15.99, 28.99);