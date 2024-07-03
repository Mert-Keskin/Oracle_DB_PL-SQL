CREATE OR REPLACE PACKAGE VeriGiris_Pkg AS
  -- M��teri ekleme prosed�r�
  PROCEDURE M��teriEkle(
    p_ad IN O_M��teriler.Ad%TYPE,
    p_eposta IN O_M��teriler.E_posta%TYPE,
    p_telefon IN O_M��teriler.Telefon%TYPE,
    p_adress IN O_M��teriler.Adress%TYPE
  );

  -- �r�n ekleme prosed�r�
  PROCEDURE �r�nEkle(
    p_urun_adi IN O_�r�nler.�r�n_ad�%TYPE,
    p_kategori IN O_�r�nler.Kategori%TYPE,
    p_fiyat IN O_�r�nler.fiyat%TYPE
  );

  -- Sat�� ekleme prosed�r�
  PROCEDURE Sat��Ekle(
    p_musteri_id IN O_Sat��lar.M��teri_id%TYPE,
    p_odeme_yontemi_id IN O_Sat��lar.�deme_Y�ntemi_id%TYPE,
    p_satis_tarihi IN O_Sat��lar.Sat��_Tarihi%TYPE,
    p_toplam_tutar IN O_Sat��lar.Toplam_Tutar%TYPE
  );

  -- �al��an ekleme prosed�r�
  PROCEDURE �al��anEkle(
    p_calisan_ad IN O_�al��anlar.�al��an_Ad%TYPE,
    p_pozisyon IN O_�al��anlar.Pozisyon%TYPE,
    p_ise_giris_tarihi IN O_�al��anlar.��e_Giri�_Tarihi%TYPE,
    p_maas IN O_�al��anlar.Maa�%TYPE
  );

  -- Sat�lan �r�n ekleme prosed�r�
  PROCEDURE Sat�lan�r�nEkle(
    p_satis_id IN O_Sat�lan_�r�nler.Sat��_id%TYPE,
    p_urun_id IN O_Sat�lan_�r�nler.�r�n_id%TYPE,
    p_miktar IN O_Sat�lan_�r�nler.Miktar%TYPE
  );

  -- �deme y�ntemi ekleme prosed�r�
  PROCEDURE �demeY�ntemiEkle(
    p_yontem_adi IN O_�deme_Y�ntemleri.Y�ntem_Ad�%TYPE
  );

  -- Tedarik�i ekleme prosed�r�
  PROCEDURE Tedarik�iEkle(
    p_ad IN O_Tedarik�iler.Ad%TYPE,
    p_iletisim_bilgileri IN O_Tedarik�iler.�leti�im_Bilgileri%TYPE
  );

  -- Sipari� ekleme prosed�r�
  PROCEDURE Sipari�Ekle(
    p_tedarikci_id IN O_Sipari�ler.Tedarik�i_id%TYPE,
    p_odeme_yontemi_id IN O_Sipari�ler.�deme_Y�ntemi_id%TYPE,
    p_siparis_tarihi IN O_Sipari�ler.Sipari�_Tarihi%TYPE,
    p_toplam_tutar IN O_Sipari�ler.Toplam_Tutar%TYPE
  );

  -- Stok ekleme prosed�r�
  PROCEDURE StokEkle(
    p_urun_id IN O_Stok.�r�n_id%TYPE,
    p_stok_miktari IN O_Stok.Stok_Miktar�%TYPE
  );

  -- Promosyon ekleme prosed�r�
  PROCEDURE PromosyonEkle(
    p_promosyon_adi IN O_Promosyonlar.Promosyon_Ad�%TYPE,
    p_baslangic_tarihi IN O_Promosyonlar.Ba�lang��_Tarihi%TYPE,
    p_bitis_tarihi IN O_Promosyonlar.Biti�_Tarihi%TYPE
  );

  -- Sat�� promosyonu ekleme prosed�r�
  PROCEDURE Sat��PromosyonuEkle(
    p_satis_id IN O_Sat��_Promosyonlar�.Sat��_id%TYPE,
    p_promosyon_id IN O_Sat��_Promosyonlar�.Promosyon_id%TYPE
  );
  --Sipari�_�r�nler ekleme prosed�r�
   PROCEDURE Sipari��r�nlerEkle(
    p_siparis_id IN O_Sipari�_�r�nler.Sipari�_id%TYPE,
    p_urun_id IN O_Sipari�_�r�nler.�r�n_id%TYPE,
    p_miktar IN O_Sipari�_�r�nler.Miktar%TYPE
  );


-- M��teri d�zenleme prosed�r�
  PROCEDURE M��teriD�zenle(
    p_musteri_id IN O_M��teriler.M��teri_id%TYPE,
    p_ad IN O_M��teriler.Ad%TYPE,
    p_eposta IN O_M��teriler.E_posta%TYPE,
    p_telefon IN O_M��teriler.Telefon%TYPE,
    p_adress IN O_M��teriler.Adress%TYPE
  );

  -- �r�n d�zenleme prosed�r�
  PROCEDURE �r�nD�zenle(
    p_urun_id IN O_�r�nler.�r�n_id%TYPE,
    p_urun_adi IN O_�r�nler.�r�n_ad�%TYPE,
    p_kategori IN O_�r�nler.Kategori%TYPE,
    p_fiyat IN O_�r�nler.fiyat%TYPE
  );

  -- Sat�� d�zenleme prosed�r�
  PROCEDURE Sat��D�zenle(
    p_sat�s_id IN O_Sat��lar.Sat��_id%TYPE,
    p_musteri_id IN O_Sat��lar.M��teri_id%TYPE,
    p_odeme_yontemi_id IN O_Sat��lar.�deme_Y�ntemi_id%TYPE,
    p_satis_tarihi IN O_Sat��lar.Sat��_Tarihi%TYPE,
    p_toplam_tutar IN O_Sat��lar.Toplam_Tutar%TYPE
  );

  -- �al��an d�zenleme prosed�r�
  PROCEDURE �al��anD�zenle(
    p_calisan_id IN O_�al��anlar.�al��an_id%TYPE,
    p_calisan_ad IN O_�al��anlar.�al��an_Ad%TYPE,
    p_pozisyon IN O_�al��anlar.Pozisyon%TYPE,
    p_ise_giris_tarihi IN O_�al��anlar.��e_Giri�_Tarihi%TYPE,
    p_maas IN O_�al��anlar.Maa�%TYPE
  );

  -- �r�n stok miktar� d�zenleme prosed�r�
  PROCEDURE StokMiktar�D�zenle(
    p_urun_id IN O_Stok.�r�n_id%TYPE,
    p_stok_miktari IN O_Stok.Stok_Miktar�%TYPE
  );

  -- Sipari� d�zenleme prosed�r�
  PROCEDURE Sipari�D�zenle(
    p_siparis_id IN O_Sipari�ler.Sipari�_id%TYPE,
    p_tedarikci_id IN O_Sipari�ler.Tedarik�i_id%TYPE,
    p_odeme_yontemi_id IN O_Sipari�ler.�deme_Y�ntemi_id%TYPE,
    p_siparis_tarihi IN O_Sipari�ler.Sipari�_Tarihi%TYPE,
    p_toplam_tutar IN O_Sipari�ler.Toplam_Tutar%TYPE
  );
    
  -- �deme y�ntemi d�zenleme prosed�r�
  PROCEDURE �demeY�ntemiD�zenle(
    p_odeme_yontemi_id IN O_�deme_Y�ntemleri.�deme_Y�ntemi_id%TYPE,
    p_yontem_adi IN O_�deme_Y�ntemleri.Y�ntem_Ad�%TYPE
  );

  -- Promosyon d�zenleme prosed�r�
  PROCEDURE PromosyonD�zenle(
    p_promosyon_id IN O_Promosyonlar.Promosyon_id%TYPE,
    p_promosyon_adi IN O_Promosyonlar.Promosyon_Ad�%TYPE,
    p_baslangic_tarihi IN O_Promosyonlar.Ba�lang��_Tarihi%TYPE,
    p_bitis_tarihi IN O_Promosyonlar.Biti�_Tarihi%TYPE
  );

  -- Sat�lan �r�n d�zenleme prosed�r�
  PROCEDURE Sat�lan�r�nD�zenle(
    p_satis_id IN O_Sat�lan_�r�nler.Sat��_id%TYPE,
    p_urun_id IN O_Sat�lan_�r�nler.�r�n_id%TYPE,
    p_miktar IN O_Sat�lan_�r�nler.Miktar%TYPE
  );

  -- Sat�� promosyonu d�zenleme prosed�r�
  PROCEDURE Sat��PromosyonuD�zenle(
    p_satis_id IN O_Sat��_Promosyonlar�.Sat��_id%TYPE,
    p_promosyon_id IN O_Sat��_Promosyonlar�.Promosyon_id%TYPE
  );

  -- Tedarik�i d�zenleme prosed�r�
  PROCEDURE Tedarik�iD�zenle(
    p_tedarikci_id IN O_Tedarik�iler.Tedarik�i_id%TYPE,
    p_ad IN O_Tedarik�iler.Ad%TYPE,
    p_iletisim_bilgileri IN O_Tedarik�iler.�leti�im_Bilgileri%TYPE
  );
  PROCEDURE Sipari��r�nlerD�zenle(
    p_siparis_id IN O_Sipari�_�r�nler.Sipari�_id%TYPE,
    p_urun_id IN O_Sipari�_�r�nler.�r�n_id%TYPE,
    p_miktar IN O_Sipari�_�r�nler.Miktar%TYPE
  );
  
  -- Silme Prosed�rleri
  PROCEDURE �r�nSil(p_urun_id IN NUMBER);
  PROCEDURE M��teriSil(p_musteri_id IN NUMBER);
  PROCEDURE �al��anSil(p_calisan_id IN NUMBER);
  PROCEDURE Tedarik�iSil(p_tedarikci_id IN NUMBER);
  -- Tekrar eden m��teri kay�tlar�n� silen prosed�r
  PROCEDURE SilTekrarEden�al��anlar;
END VeriGiris_Pkg;
/

