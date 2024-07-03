CREATE TABLE O_M��teriler(
  M��teri_id Integer NOT NULL,
  Ad Char(20 ),
  E_Posta Char(50 ),
  Telefon Char(11 ),
  Adress Char(200 )
)
/

CREATE TABLE O_�r�nler(
  �r�n_id Integer NOT NULL,
  �r�n_ad� Char(20 ),
  Kategori Char(20 ),
  fiyat Float
)
/
CREATE TABLE O_Sat��lar(
  Sat��_id Integer NOT NULL,
  M��teri_id Integer,
  �deme_Y�ntemi_id Integer,
  Sat��_Tarihi Char(20 ),
  Toplam_Tutar Float
)
/
CREATE TABLE O_�al��anlar(
  �al��an_id Integer NOT NULL,
  �al��an_Ad Char(50 ),
  Pozisyon Char(20 ),
  ��e_Giri�_Tarihi Char(20 ),
  Maa� Integer
)
/
CREATE TABLE O_Sat�lan_�r�nler(
  Sat��_id Integer NOT NULL,
  �r�n_id Integer NOT NULL,
  Miktar Integer
)
/
CREATE TABLE O_�deme_Y�ntemleri(
  �deme_Y�ntemi_id Integer NOT NULL,
  Y�ntem_Ad� Char(20 )
)
/
CREATE TABLE O_Tedarik�iler(
  Tedarik�i_id Integer NOT NULL,
  Ad Char(50 ),
  �leti�im_Bilgileri Char(100 )
)
/
CREATE TABLE O_Sipari�ler(
  Sipari�_id Integer NOT NULL,
  Tedarik�i_id Integer,
  �deme_Y�ntemi_id Integer,
  Sipari�_Tarihi Char(20 ),
  Toplam_Tutar Float
)
/
CREATE TABLE O_Sipari�_�r�nler(
  Sipari�_id Integer NOT NULL,
  �r�n_id Integer NOT NULL,
  Miktar Integer
)
/
CREATE TABLE O_Stok(
  �r�n_id Integer NOT NULL,
  Stok_Miktar� Integer
)
/
CREATE TABLE O_Promosyonlar(
  Promosyon_id Integer NOT NULL,
  Promosyon_Ad� Char(50 ),
  Ba�lang��_Tarihi Char(20 ),
  Biti�_Tarihi Char(20 )
)
/
CREATE TABLE O_Sat��_Promosyonlar�(
  Sat��_id Integer NOT NULL,
  Promosyon_id Integer NOT NULL
)
/