ALTER TABLE O_Müþteriler ADD CONSTRAINT PK_O_Müþteriler PRIMARY KEY (Müþteri_id)
/
ALTER TABLE O_Ürünler ADD CONSTRAINT PK_O_Ürünler PRIMARY KEY (Ürün_id)
/
CREATE INDEX IX_Relationship12 ON O_Satýþlar (Ödeme_Yöntemi_id)
/

CREATE INDEX IX_Relationship14 ON O_Satýþlar (Müþteri_id)
/

-- Add keys for table O_Satýþlar

ALTER TABLE O_Satýþlar ADD CONSTRAINT PK_O_Satýþlar PRIMARY KEY (Satýþ_id)
/
ALTER TABLE O_Çalýþanlar ADD CONSTRAINT PK_O_Çalýþanlar PRIMARY KEY (Çalýþan_id)
/
ALTER TABLE O_Satýlan_Ürünler ADD CONSTRAINT PK_O_Satýlan_Ürünler PRIMARY KEY (Ürün_id,Satýþ_id)
/
ALTER TABLE O_Ödeme_Yöntemleri ADD CONSTRAINT PK_O_Ödeme_Yöntemleri PRIMARY KEY (Ödeme_Yöntemi_id)
/
ALTER TABLE O_Tedarikçiler ADD CONSTRAINT PK_O_Tedarikçiler PRIMARY KEY (Tedarikçi_id)
/
CREATE INDEX IX_Relationship8 ON O_Sipariþler (Tedarikçi_id)
/

CREATE INDEX IX_Relationship11 ON O_Sipariþler (Ödeme_Yöntemi_id)
/

ALTER TABLE O_Sipariþler ADD CONSTRAINT PK_O_Sipariþler PRIMARY KEY (Sipariþ_id)
/
ALTER TABLE O_Sipariþ_Ürünler ADD CONSTRAINT PK_O_Sipariþ_Ürünler PRIMARY KEY (Sipariþ_id,Ürün_id)
/
ALTER TABLE O_Stok ADD CONSTRAINT PK_O_Stok PRIMARY KEY (Ürün_id)
/
ALTER TABLE O_Promosyonlar ADD CONSTRAINT PK_O_Promosyonlar PRIMARY KEY (Promosyon_id)
/
ALTER TABLE O_Satýþ_Promosyonlarý ADD CONSTRAINT PK_O_Satýþ_Promosyonlarý PRIMARY KEY (Satýþ_id,Promosyon_id)
/
ALTER TABLE O_Satýlan_Ürünler ADD CONSTRAINT Relationship2 FOREIGN KEY (Ürün_id) REFERENCES O_Ürünler (Ürün_id)
/



ALTER TABLE O_Satýlan_Ürünler ADD CONSTRAINT Relationship3 FOREIGN KEY (Satýþ_id) REFERENCES O_Satýþlar (Satýþ_id)
/



ALTER TABLE O_Sipariþ_Ürünler ADD CONSTRAINT Relationship4 FOREIGN KEY (Sipariþ_id) REFERENCES O_Sipariþler (Sipariþ_id)
/



ALTER TABLE O_Sipariþ_Ürünler ADD CONSTRAINT Relationship5 FOREIGN KEY (Ürün_id) REFERENCES O_Ürünler (Ürün_id)
/



ALTER TABLE O_Stok ADD CONSTRAINT Relationship7 FOREIGN KEY (Ürün_id) REFERENCES O_Ürünler (Ürün_id)
/



ALTER TABLE O_Sipariþler ADD CONSTRAINT Relationship8 FOREIGN KEY (Tedarikçi_id) REFERENCES O_Tedarikçiler (Tedarikçi_id)
/



ALTER TABLE O_Satýþ_Promosyonlarý ADD CONSTRAINT Relationship9 FOREIGN KEY (Satýþ_id) REFERENCES O_Satýþlar (Satýþ_id)
/



ALTER TABLE O_Satýþ_Promosyonlarý ADD CONSTRAINT Relationship10 FOREIGN KEY (Promosyon_id) REFERENCES O_Promosyonlar (Promosyon_id)
/



ALTER TABLE O_Sipariþler ADD CONSTRAINT Relationship11 FOREIGN KEY (Ödeme_Yöntemi_id) REFERENCES O_Ödeme_Yöntemleri (Ödeme_Yöntemi_id)
/



ALTER TABLE O_Satýþlar ADD CONSTRAINT Relationship12 FOREIGN KEY (Ödeme_Yöntemi_id) REFERENCES O_Ödeme_Yöntemleri (Ödeme_Yöntemi_id)
/



ALTER TABLE O_Satýþlar ADD CONSTRAINT Relationship14 FOREIGN KEY (Müþteri_id) REFERENCES O_Müþteriler (Müþteri_id)
/