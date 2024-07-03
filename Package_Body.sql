CREATE OR REPLACE PACKAGE BODY VeriGiris_Pkg AS

  PROCEDURE M��teriD�zenle(
    p_musteri_id IN O_M��teriler.M��teri_id%TYPE,
    p_ad IN O_M��teriler.Ad%TYPE,
    p_eposta IN O_M��teriler.E_posta%TYPE,
    p_telefon IN O_M��teriler.Telefon%TYPE,
    p_adress IN O_M��teriler.Adress%TYPE
  ) IS
  BEGIN
    UPDATE O_M��teriler
    SET Ad = p_ad,
        E_posta = p_eposta,
        Telefon = p_telefon,
        Adress = p_adress
    WHERE M��teri_id = p_musteri_id;
    COMMIT;
  END M��teriD�zenle;


  PROCEDURE �r�nD�zenle(
    p_urun_id IN O_�r�nler.�r�n_id%TYPE,
    p_urun_adi IN O_�r�nler.�r�n_ad�%TYPE,
    p_kategori IN O_�r�nler.Kategori%TYPE,
    p_fiyat IN O_�r�nler.fiyat%TYPE
  ) IS
  BEGIN
    UPDATE O_�r�nler
    SET �r�n_adi = p_urun_adi,
        Kategori = p_kategori,
        fiyat = p_fiyat
    WHERE �r�n_id = p_urun_id;
    COMMIT;
  END �r�nD�zenle;


  PROCEDURE Sat��D�zenle(
    p_satis_id IN O_Sat��lar.Sat��_id%TYPE,
    p_musteri_id IN O_Sat��lar.M��teri_id%TYPE,
    p_odeme_yontemi_id IN O_Sat��lar.�deme_Y�ntemi_id%TYPE,
    p_satis_tarihi IN O_Sat��lar.Sat��_Tarihi%TYPE,
    p_toplam_tutar IN O_Sat��lar.Toplam_Tutar%TYPE
  ) IS
  BEGIN
    UPDATE O_Sat��lar
    SET M��teri_id = p_musteri_id,
        �deme_Y�ntemi_id = p_odeme_yontemi_id,
        Sat��_Tarihi = p_satis_tarihi,
        Toplam_Tutar = p_toplam_tutar
    WHERE Sat��_id = p_satis_id;
    COMMIT;
  END Sat��D�zenle;


  PROCEDURE �al��anD�zenle(
    p_calisan_id IN O_�al��anlar.�al��an_id%TYPE,
    p_calisan_ad IN O_�al��anlar.�al��an_Ad%TYPE,
    p_pozisyon IN O_�al��anlar.Pozisyon%TYPE,
    p_ise_giris_tarihi IN O_�al��anlar.��e_Giri�_Tarihi%TYPE,
    p_maas IN O_�al��anlar.Maa�%TYPE
  ) IS
  BEGIN
    UPDATE O_�al��anlar
    SET �al��an_Ad = p_calisan_ad,
        Pozisyon = p_pozisyon,
        ��e_Giri�_Tarihi = p_ise_giris_tarihi,
        Maa� = p_maas
    WHERE �al��an_id = p_calisan_id;
    COMMIT;
  END �al��anD�zenle;


  PROCEDURE StokMiktar�D�zenle(
    p_urun_id IN O_Stok.�r�n_id%TYPE,
    p_stok_miktari IN O_Stok.Stok_Miktar�%TYPE
  ) IS
  BEGIN
    UPDATE O_Stok
    SET Stok_Miktar� = p_stok_miktari
    WHERE �r�n_id = p_urun_id;
    COMMIT;
  END StokMiktar�D�zenle;


  PROCEDURE Sipari�D�zenle(
    p_siparis_id IN O_Sipari�ler.Sipari�_id%TYPE,
    p_tedarikci_id IN O_Sipari�ler.Tedarik�i_id%TYPE,
    p_odeme_yontemi_id IN O_Sipari�ler.�deme_Y�ntemi_id%TYPE,
    p_siparis_tarihi IN O_Sipari�ler.Sipari�_Tarihi%TYPE,
    p_toplam_tutar IN O_Sipari�ler.Toplam_Tutar%TYPE
  ) IS
  BEGIN
    UPDATE O_Sipari�ler
    SET Tedarik�i_id = p_tedarikci_id,
        �deme_Y�ntemi_id = p_odeme_yontemi_id,
        Sipari�_Tarihi = p_siparis_tarihi,
        Toplam_Tutar = p_toplam_tutar
    WHERE Sipari�_id = p_siparis_id;
    COMMIT;
  END Sipari�D�zenle;
    

  PROCEDURE �demeY�ntemiD�zenle(
    p_odeme_yontemi_id IN O_�deme_Y�ntemleri.�deme_Y�ntemi_id%TYPE,
    p_yontem_adi IN O_�deme_Y�ntemleri.Y�ntem_Ad�%TYPE
  ) IS
  BEGIN
    UPDATE O_�deme_Y�ntemleri
    SET Y�ntem_Ad� = p_yontem_adi
    WHERE �deme_Y�ntemi_id = p_odeme_yontemi_id;
    COMMIT;
  END �demeY�ntemiD�zenle;


  PROCEDURE PromosyonD�zenle(
    p_promosyon_id IN O_Promosyonlar.Promosyon_id%TYPE,
    p_promosyon_adi IN O_Promosyonlar.Promosyon_Ad�%TYPE,
    p_baslangic_tarihi IN O_Promosyonlar.Ba�lang��_Tarihi%TYPE,
    p_bitis_tarihi IN O_Promosyonlar.Biti�_Tarihi%TYPE
  ) IS
  BEGIN
    UPDATE O_Promosyonlar
    SET Promosyon_Ad� = p_promosyon_adi,
        Ba�lang��_Tarihi = p_baslangic_tarihi,
        Biti�_Tarihi = p_bitis_tarihi
    WHERE Promosyon_id = p_promosyon_id;
    COMMIT;
  END PromosyonD�zenle;


  PROCEDURE Sat�lan�r�nD�zenle(
    p_satis_id IN O_Sat�lan_�r�nler.Sat��_id%TYPE,
    p_urun_id IN O_Sat�lan_�r�nler.�r�n_id%TYPE,
    p_miktar IN O_Sat�lan_�r�nler.Miktar%TYPE
  ) IS
  BEGIN
    UPDATE O_Sat�lan_�r�nler
    SET Sat��_id = p_satis_id,
        �r�n_id = p_urun_id,
        Miktar = p_miktar
    WHERE Sat��_id = p_satis_id;
    COMMIT;
  END Sat�lan�r�nD�zenle;


  PROCEDURE Sat��PromosyonuD�zenle(
    p_satis_id IN O_Sat��_Promosyonlar�.Sat��_id%TYPE,
    p_promosyon_id IN O_Sat��_Promosyonlar�.Promosyon_id%TYPE
  ) IS
  BEGIN
    UPDATE O_Sat��_Promosyonlar�
    SET Sat��_id = p_satis_id,
        Promosyon_id = p_promosyon_id
    WHERE Sat��_id = p_satis_id;
    COMMIT;
  END Sat��PromosyonuD�zenle;


  PROCEDURE Tedarik�iD�zenle(
    p_tedarikci_id IN O_Tedarik�iler.Tedarik�i_id%TYPE,
    p_ad IN O_Tedarik�iler.Ad%TYPE,
    p_iletisim_bilgileri IN O_Tedarik�iler.�leti�im_Bilgileri%TYPE
  ) IS
  BEGIN
    UPDATE O_Tedarik�iler
    SET Ad = p_ad,
        �leti�im_Bilgileri = p_iletisim_bilgileri
    WHERE Tedarik�i_id = p_tedarikci_id;
    COMMIT;
  END Tedarik�iD�zenle;
  

  PROCEDURE Sipari��r�nlerD�zenle(
    p_siparis_id IN O_Sipari�_�r�nler.Sipari�_id%TYPE,
    p_urun_id IN O_Sipari�_�r�nler.�r�n_id%TYPE,
    p_miktar IN O_Sipari�_�r�nler.Miktar%TYPE
  ) IS
  BEGIN
    UPDATE O_Sipari�_�r�nler
    SET Sipari�_id = p_siparis_id,
        �r�n_id = p_urun_id,
        Miktar = p_miktar
    Where Sipari�_id = p_siparis_id;
    COMMIT;
  END Sipari��r�nlerD�zenle;
  

  PROCEDURE M��teriEkle(
    p_ad IN O_M��teriler.Ad%TYPE,
    p_eposta IN O_M��teriler.E_posta%TYPE,
    p_telefon IN O_M��teriler.Telefon%TYPE,
    p_adress IN O_M��teriler.Adress%TYPE
  ) IS
  BEGIN
    INSERT INTO O_M��teriler (M��teri_id, Ad, E_posta, Telefon, Adress)
    VALUES (SEQ_M��teriler.NEXTVAL, p_ad, p_eposta, p_telefon, p_adress);
    COMMIT;
  END M��teriEkle;


  PROCEDURE �r�nEkle(
    p_urun_adi IN O_�r�nler.�r�n_ad�%TYPE,
    p_kategori IN O_�r�nler.Kategori%TYPE,
    p_fiyat IN O_�r�nler.fiyat%TYPE
  ) IS
  BEGIN
    INSERT INTO O_�r�nler (�r�n_id, �r�n_ad�, Kategori, fiyat)
    VALUES (SEQ_�r�nler.NEXTVAL, p_urun_adi, p_kategori, p_fiyat);
    COMMIT;
  END �r�nEkle;


  PROCEDURE Sat��Ekle(
    p_musteri_id IN O_Sat��lar.M��teri_id%TYPE,
    p_odeme_yontemi_id IN O_Sat��lar.�deme_Y�ntemi_id%TYPE,
    p_satis_tarihi IN O_Sat��lar.Sat��_Tarihi%TYPE,
    p_toplam_tutar IN O_Sat��lar.Toplam_Tutar%TYPE
  ) IS
  BEGIN
    INSERT INTO O_Sat��lar (Sat��_id, M��teri_id, �deme_Y�ntemi_id, Sat��_Tarihi, Toplam_Tutar)
    VALUES (SEQ_Sat��lar.NEXTVAL, p_musteri_id, p_odeme_yontemi_id, p_satis_tarihi, p_toplam_tutar);
    COMMIT;
  END Sat��Ekle;


  PROCEDURE �al��anEkle(
    p_calisan_ad IN O_�al��anlar.�al��an_Ad%TYPE,
    p_pozisyon IN O_�al��anlar.Pozisyon%TYPE,
    p_ise_giris_tarihi IN O_�al��anlar.��e_Giri�_Tarihi%TYPE,
    p_maas IN O_�al��anlar.Maa�%TYPE
  ) IS
  BEGIN
    INSERT INTO O_�al��anlar (�al��an_id, �al��an_Ad, Pozisyon, ��e_Giri�_Tarihi, Maa�)
    VALUES (SEQ_�al��anlar.NEXTVAL, p_calisan_ad, p_pozisyon, p_ise_giris_tarihi, p_maas);
    COMMIT;
  END �al��anEkle;


  PROCEDURE Sat�lan�r�nEkle(
    p_satis_id IN O_Sat�lan_�r�nler.Sat��_id%TYPE,
    p_urun_id IN O_Sat�lan_�r�nler.�r�n_id%TYPE,
    p_miktar IN O_Sat�lan_�r�nler.Miktar%TYPE
  ) IS
  BEGIN
    INSERT INTO O_Sat�lan_�r�nler (Sat��_id, �r�n_id, Miktar)
    VALUES (p_satis_id, p_urun_id, p_miktar);
    COMMIT;
  END Sat�lan�r�nEkle;


  PROCEDURE �demeY�ntemiEkle(
    p_yontem_adi IN O_�deme_Y�ntemleri.Y�ntem_Ad�%TYPE
  ) IS
  BEGIN
    INSERT INTO O_�deme_Y�ntemleri (�deme_Y�ntemi_id, Y�ntem_Ad�)
    VALUES (SEQ_�deme_Y�ntemleri.NEXTVAL, p_yontem_adi);
    COMMIT;
  END �demeY�ntemiEkle;


  PROCEDURE Tedarik�iEkle(
    p_ad IN O_Tedarik�iler.Ad%TYPE,
    p_iletisim_bilgileri IN O_Tedarik�iler.�leti�im_Bilgileri%TYPE
  ) IS
  BEGIN
    INSERT INTO O_Tedarik�iler (Tedarik�i_id, Ad, �leti�im_Bilgileri)
    VALUES (SEQ_Tedarik�iler.NEXTVAL, p_ad, p_iletisim_bilgileri);
    COMMIT;
  END Tedarik�iEkle;


  PROCEDURE Sipari�Ekle(
    p_tedarikci_id IN O_Sipari�ler.Tedarik�i_id%TYPE,
    p_odeme_yontemi_id IN O_Sipari�ler.�deme_Y�ntemi_id%TYPE,
    p_siparis_tarihi IN O_Sipari�ler.Sipari�_Tarihi%TYPE,
    p_toplam_tutar IN O_Sipari�ler.Toplam_Tutar%TYPE
  ) IS
  BEGIN
    INSERT INTO O_Sipari�ler (Sipari�_id, Tedarik�i_id, �deme_Y�ntemi_id, Sipari�_Tarihi, Toplam_Tutar)
    VALUES (SEQ_Sipari�ler.NEXTVAL, p_tedarikci_id, p_odeme_yontemi_id, p_siparis_tarihi, p_toplam_tutar);
    COMMIT;
  END Sipari�Ekle;


  PROCEDURE StokEkle(
    p_urun_id IN O_Stok.�r�n_id%TYPE,
    p_stok_miktari IN O_Stok.Stok_Miktar�%TYPE
  ) IS
  BEGIN
    INSERT INTO O_Stok (�r�n_id, Stok_Miktar�)
    VALUES (p_urun_id, p_stok_miktari);
    COMMIT;
  END StokEkle;


  PROCEDURE PromosyonEkle(
    p_promosyon_adi IN O_Promosyonlar.Promosyon_Ad�%TYPE,
    p_baslangic_tarihi IN O_Promosyonlar.Ba�lang��_Tarihi%TYPE,
    p_bitis_tarihi IN O_Promosyonlar.Biti�_Tarihi%TYPE
  ) IS
  BEGIN
    INSERT INTO O_Promosyonlar (Promosyon_id, Promosyon_Ad�, Ba�lang��_Tarihi, Biti�_Tarihi)
    VALUES (SEQ_Promosyonlar.NEXTVAL, p_promosyon_adi, p_baslangic_tarihi, p_bitis_tarihi);
    COMMIT;
  END PromosyonEkle;


  PROCEDURE Sat��PromosyonuEkle(
    p_satis_id IN O_Sat��_Promosyonlar�.Sat��_id%TYPE,
    p_promosyon_id IN O_Sat��_Promosyonlar�.Promosyon_id%TYPE
  ) IS
  BEGIN
    INSERT INTO O_Sat��_Promosyonlar� (Sat��_id, Promosyon_id)
    VALUES (p_satis_id, p_promosyon_id);
    COMMIT;
  END Sat��PromosyonuEkle;
  

  PROCEDURE Sipari��r�nlerEkle(
    p_siparis_id IN O_Sipari�_�r�nler.Sipari�_id%TYPE,
    p_urun_id IN O_Sipari�_�r�nler.�r�n_id%TYPE,
    p_miktar IN O_Sipari�_�r�nler.Miktar%TYPE
  ) IS
  BEGIN
    INSERT INTO O_Sipari�_�r�nler (Sipari�_id, �r�n_id,Miktar)
    VALUES (p_siparis_id, p_urun_id, p_miktar);
    COMMIT;
  END Sipari��r�nlerEkle;
  

  PROCEDURE �r�nSil(p_urun_id IN NUMBER) IS
  BEGIN
    DELETE FROM O_�r�nler WHERE �r�n_id = p_urun_id;
    COMMIT;
  END �r�nSil;

  PROCEDURE M��teriSil(p_musteri_id IN NUMBER) IS
  BEGIN
    DELETE FROM O_M��teriler WHERE M��teri_id = p_musteri_id;
    COMMIT;
  END M��teriSil;

  PROCEDURE �al��anSil(p_calisan_id IN NUMBER) IS
  BEGIN
    DELETE FROM O_�al��anlar WHERE �al��an_id = p_calisan_id;
    COMMIT;
  END �al��anSil;

  PROCEDURE Tedarik�iSil(p_tedarikci_id IN NUMBER) IS
  BEGIN
    DELETE FROM O_Tedarik�iler WHERE Tedarik�i_id = p_tedarikci_id;
    COMMIT;
  END Tedarik�iSil;
  
  -- Tekrar eden �al��an kay�tlar�n� silen prosed�r--------------------------------------
 PROCEDURE SilTekrarEden�al��anlar IS
  BEGIN
    DELETE FROM O_�al��anlar
    WHERE rowid NOT IN (
      SELECT MIN(rowid)
      FROM O_�al��anlar
      GROUP BY �al��an_ad,Pozisyon,��e_Giri�_Tarihi,Maa�
    );
    COMMIT;
  END SilTekrarEden�al��anlar;
END VeriGiris_Pkg;
/