CREATE TABLE O_Müþteriler(
  Müþteri_id Integer NOT NULL,
  Ad Char(20 ),
  E_Posta Char(50 ),
  Telefon Char(11 ),
  Adress Char(200 )
)
/

CREATE TABLE O_Ürünler(
  Ürün_id Integer NOT NULL,
  Ürün_adý Char(20 ),
  Kategori Char(20 ),
  fiyat Float
)
/
CREATE TABLE O_Satýþlar(
  Satýþ_id Integer NOT NULL,
  Müþteri_id Integer,
  Ödeme_Yöntemi_id Integer,
  Satýþ_Tarihi Char(20 ),
  Toplam_Tutar Float
)
/
CREATE TABLE O_Çalýþanlar(
  Çalýþan_id Integer NOT NULL,
  Çalýþan_Ad Char(50 ),
  Pozisyon Char(20 ),
  Ýþe_Giriþ_Tarihi Char(20 ),
  Maaþ Integer
)
/
CREATE TABLE O_Satýlan_Ürünler(
  Satýþ_id Integer NOT NULL,
  Ürün_id Integer NOT NULL,
  Miktar Integer
)
/
CREATE TABLE O_Ödeme_Yöntemleri(
  Ödeme_Yöntemi_id Integer NOT NULL,
  Yöntem_Adý Char(20 )
)
/
CREATE TABLE O_Tedarikçiler(
  Tedarikçi_id Integer NOT NULL,
  Ad Char(50 ),
  Ýletiþim_Bilgileri Char(100 )
)
/
CREATE TABLE O_Sipariþler(
  Sipariþ_id Integer NOT NULL,
  Tedarikçi_id Integer,
  Ödeme_Yöntemi_id Integer,
  Sipariþ_Tarihi Char(20 ),
  Toplam_Tutar Float
)
/
CREATE TABLE O_Sipariþ_Ürünler(
  Sipariþ_id Integer NOT NULL,
  Ürün_id Integer NOT NULL,
  Miktar Integer
)
/
CREATE TABLE O_Stok(
  Ürün_id Integer NOT NULL,
  Stok_Miktarý Integer
)
/
CREATE TABLE O_Promosyonlar(
  Promosyon_id Integer NOT NULL,
  Promosyon_Adý Char(50 ),
  Baþlangýç_Tarihi Char(20 ),
  Bitiþ_Tarihi Char(20 )
)
/
CREATE TABLE O_Satýþ_Promosyonlarý(
  Satýþ_id Integer NOT NULL,
  Promosyon_id Integer NOT NULL
)
/