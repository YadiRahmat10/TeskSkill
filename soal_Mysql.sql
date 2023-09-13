-- DATABASE Classic Model

USE classicmodels;

SELECT * FROM customers;

-- SOAL 1 //query menampilkan customerNumber yg memesan productLine ---> total productionline > 23 

SELECT count(customerNumber) as productionline 
FROM customers 
GROUP BY productLines 
HAVING productionline >= 23;

-- SOAL 2.a //Buat stored procedure pada mysql untuk mengekstrak isi dari ksm_kurs_pajak menjadi 1 table kurs pajak 

-- //semua produk
DELIMITER //
CREATE PROCEDURE kurs_pajak(id_ksm_kurs_pajak, kurs_rate, tgl, curr_id) --// atau kurs_pajak()
SELECT * FROM ksm_kurs_pajak;
END
//
DELIMITER;
CALL kurs_pajak() --//memanggil table

-- //ambil 1 produk
DELIMITER //
CREATE PROCEDURE kurs_pajak(IN id_ksm_kurs_pajak INT)
SELECT * FROM ksm_kurs_pajak WHERE id = id_ksm_kurs_pajak;
END
//
DELIMITER;
CALL kurs_pajak() --//memanggil table

-- SOAL 2.b //Stored procedure akan di roll back dari start transaction
START TRANSACTION;
INSERT INTO CALL ksm_kurs_pajak(id_ksm_kurs_pajak, kurs_rate, tgl, curr_id)
VALUES INTO (" "," "," "," "); -- //isi table ksm_kurs_pajak
SELECT * FROM ksm_kurs_pajak;
DELETE FROM ksm_kurs_pajak;
SELECT * FROM ksm_kurs_pajak;
ROLLBACK;

-- SOAL 3 //Mencari tanggal terkecil dari string yang ter-concatenated
SELECT * 
FROM ksm_kurs_pajak 
WHERE kurs_rate LIKE = '2015-03-29' ; --//Input yang dihasilkan









