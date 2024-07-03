CREATE OR REPLACE PACKAGE BODY VeriGiris_Pkg AS

  PROCEDURE MüþteriDüzenle(
    p_musteri_id IN O_Müþteriler.Müþteri_id%TYPE,
    p_ad IN O_Müþteriler.Ad%TYPE,
    p_eposta IN O_Müþteriler.E_posta%TYPE,
    p_telefon IN O_Müþteriler.Telefon%TYPE,
    p_adress IN O_Müþteriler.Adress%TYPE
  ) IS
  BEGIN
    UPDATE O_Müþteriler
    SET Ad = p_ad,
        E_posta = p_eposta,
        Telefon = p_telefon,
        Adress = p_adress
    WHERE Müþteri_id = p_musteri_id;
    COMMIT;
  END MüþteriDüzenle;


  PROCEDURE ÜrünDüzenle(
    p_urun_id IN O_Ürünler.Ürün_id%TYPE,
    p_urun_adi IN O_Ürünler.Ürün_adý%TYPE,
    p_kategori IN O_Ürünler.Kategori%TYPE,
    p_fiyat IN O_Ürünler.fiyat%TYPE
  ) IS
  BEGIN
    UPDATE O_Ürünler
    SET Ürün_adi = p_urun_adi,
        Kategori = p_kategori,
        fiyat = p_fiyat
    WHERE Ürün_id = p_urun_id;
    COMMIT;
  END ÜrünDüzenle;


  PROCEDURE SatýþDüzenle(
    p_satis_id IN O_Satýþlar.Satýþ_id%TYPE,
    p_musteri_id IN O_Satýþlar.Müþteri_id%TYPE,
    p_odeme_yontemi_id IN O_Satýþlar.Ödeme_Yöntemi_id%TYPE,
    p_satis_tarihi IN O_Satýþlar.Satýþ_Tarihi%TYPE,
    p_toplam_tutar IN O_Satýþlar.Toplam_Tutar%TYPE
  ) IS
  BEGIN
    UPDATE O_Satýþlar
    SET Müþteri_id = p_musteri_id,
        Ödeme_Yöntemi_id = p_odeme_yontemi_id,
        Satýþ_Tarihi = p_satis_tarihi,
        Toplam_Tutar = p_toplam_tutar
    WHERE Satýþ_id = p_satis_id;
    COMMIT;
  END SatýþDüzenle;


  PROCEDURE ÇalýþanDüzenle(
    p_calisan_id IN O_Çalýþanlar.Çalýþan_id%TYPE,
    p_calisan_ad IN O_Çalýþanlar.Çalýþan_Ad%TYPE,
    p_pozisyon IN O_Çalýþanlar.Pozisyon%TYPE,
    p_ise_giris_tarihi IN O_Çalýþanlar.Ýþe_Giriþ_Tarihi%TYPE,
    p_maas IN O_Çalýþanlar.Maaþ%TYPE
  ) IS
  BEGIN
    UPDATE O_Çalýþanlar
    SET Çalýþan_Ad = p_calisan_ad,
        Pozisyon = p_pozisyon,
        Ýþe_Giriþ_Tarihi = p_ise_giris_tarihi,
        Maaþ = p_maas
    WHERE Çalýþan_id = p_calisan_id;
    COMMIT;
  END ÇalýþanDüzenle;


  PROCEDURE StokMiktarýDüzenle(
    p_urun_id IN O_Stok.Ürün_id%TYPE,
    p_stok_miktari IN O_Stok.Stok_Miktarý%TYPE
  ) IS
  BEGIN
    UPDATE O_Stok
    SET Stok_Miktarý = p_stok_miktari
    WHERE Ürün_id = p_urun_id;
    COMMIT;
  END StokMiktarýDüzenle;


  PROCEDURE SipariþDüzenle(
    p_siparis_id IN O_Sipariþler.Sipariþ_id%TYPE,
    p_tedarikci_id IN O_Sipariþler.Tedarikçi_id%TYPE,
    p_odeme_yontemi_id IN O_Sipariþler.Ödeme_Yöntemi_id%TYPE,
    p_siparis_tarihi IN O_Sipariþler.Sipariþ_Tarihi%TYPE,
    p_toplam_tutar IN O_Sipariþler.Toplam_Tutar%TYPE
  ) IS
  BEGIN
    UPDATE O_Sipariþler
    SET Tedarikçi_id = p_tedarikci_id,
        Ödeme_Yöntemi_id = p_odeme_yontemi_id,
        Sipariþ_Tarihi = p_siparis_tarihi,
        Toplam_Tutar = p_toplam_tutar
    WHERE Sipariþ_id = p_siparis_id;
    COMMIT;
  END SipariþDüzenle;
    

  PROCEDURE ÖdemeYöntemiDüzenle(
    p_odeme_yontemi_id IN O_Ödeme_Yöntemleri.Ödeme_Yöntemi_id%TYPE,
    p_yontem_adi IN O_Ödeme_Yöntemleri.Yöntem_Adý%TYPE
  ) IS
  BEGIN
    UPDATE O_Ödeme_Yöntemleri
    SET Yöntem_Adý = p_yontem_adi
    WHERE Ödeme_Yöntemi_id = p_odeme_yontemi_id;
    COMMIT;
  END ÖdemeYöntemiDüzenle;


  PROCEDURE PromosyonDüzenle(
    p_promosyon_id IN O_Promosyonlar.Promosyon_id%TYPE,
    p_promosyon_adi IN O_Promosyonlar.Promosyon_Adý%TYPE,
    p_baslangic_tarihi IN O_Promosyonlar.Baþlangýç_Tarihi%TYPE,
    p_bitis_tarihi IN O_Promosyonlar.Bitiþ_Tarihi%TYPE
  ) IS
  BEGIN
    UPDATE O_Promosyonlar
    SET Promosyon_Adý = p_promosyon_adi,
        Baþlangýç_Tarihi = p_baslangic_tarihi,
        Bitiþ_Tarihi = p_bitis_tarihi
    WHERE Promosyon_id = p_promosyon_id;
    COMMIT;
  END PromosyonDüzenle;


  PROCEDURE SatýlanÜrünDüzenle(
    p_satis_id IN O_Satýlan_Ürünler.Satýþ_id%TYPE,
    p_urun_id IN O_Satýlan_Ürünler.Ürün_id%TYPE,
    p_miktar IN O_Satýlan_Ürünler.Miktar%TYPE
  ) IS
  BEGIN
    UPDATE O_Satýlan_Ürünler
    SET Satýþ_id = p_satis_id,
        Ürün_id = p_urun_id,
        Miktar = p_miktar
    WHERE Satýþ_id = p_satis_id;
    COMMIT;
  END SatýlanÜrünDüzenle;


  PROCEDURE SatýþPromosyonuDüzenle(
    p_satis_id IN O_Satýþ_Promosyonlarý.Satýþ_id%TYPE,
    p_promosyon_id IN O_Satýþ_Promosyonlarý.Promosyon_id%TYPE
  ) IS
  BEGIN
    UPDATE O_Satýþ_Promosyonlarý
    SET Satýþ_id = p_satis_id,
        Promosyon_id = p_promosyon_id
    WHERE Satýþ_id = p_satis_id;
    COMMIT;
  END SatýþPromosyonuDüzenle;


  PROCEDURE TedarikçiDüzenle(
    p_tedarikci_id IN O_Tedarikçiler.Tedarikçi_id%TYPE,
    p_ad IN O_Tedarikçiler.Ad%TYPE,
    p_iletisim_bilgileri IN O_Tedarikçiler.Ýletiþim_Bilgileri%TYPE
  ) IS
  BEGIN
    UPDATE O_Tedarikçiler
    SET Ad = p_ad,
        Ýletiþim_Bilgileri = p_iletisim_bilgileri
    WHERE Tedarikçi_id = p_tedarikci_id;
    COMMIT;
  END TedarikçiDüzenle;
  

  PROCEDURE SipariþÜrünlerDüzenle(
    p_siparis_id IN O_Sipariþ_Ürünler.Sipariþ_id%TYPE,
    p_urun_id IN O_Sipariþ_Ürünler.Ürün_id%TYPE,
    p_miktar IN O_Sipariþ_Ürünler.Miktar%TYPE
  ) IS
  BEGIN
    UPDATE O_Sipariþ_Ürünler
    SET Sipariþ_id = p_siparis_id,
        Ürün_id = p_urun_id,
        Miktar = p_miktar
    Where Sipariþ_id = p_siparis_id;
    COMMIT;
  END SipariþÜrünlerDüzenle;
  

  PROCEDURE MüþteriEkle(
    p_ad IN O_Müþteriler.Ad%TYPE,
    p_eposta IN O_Müþteriler.E_posta%TYPE,
    p_telefon IN O_Müþteriler.Telefon%TYPE,
    p_adress IN O_Müþteriler.Adress%TYPE
  ) IS
  BEGIN
    INSERT INTO O_Müþteriler (Müþteri_id, Ad, E_posta, Telefon, Adress)
    VALUES (SEQ_Müþteriler.NEXTVAL, p_ad, p_eposta, p_telefon, p_adress);
    COMMIT;
  END MüþteriEkle;


  PROCEDURE ÜrünEkle(
    p_urun_adi IN O_Ürünler.Ürün_adý%TYPE,
    p_kategori IN O_Ürünler.Kategori%TYPE,
    p_fiyat IN O_Ürünler.fiyat%TYPE
  ) IS
  BEGIN
    INSERT INTO O_Ürünler (Ürün_id, Ürün_adý, Kategori, fiyat)
    VALUES (SEQ_Ürünler.NEXTVAL, p_urun_adi, p_kategori, p_fiyat);
    COMMIT;
  END ÜrünEkle;


  PROCEDURE SatýþEkle(
    p_musteri_id IN O_Satýþlar.Müþteri_id%TYPE,
    p_odeme_yontemi_id IN O_Satýþlar.Ödeme_Yöntemi_id%TYPE,
    p_satis_tarihi IN O_Satýþlar.Satýþ_Tarihi%TYPE,
    p_toplam_tutar IN O_Satýþlar.Toplam_Tutar%TYPE
  ) IS
  BEGIN
    INSERT INTO O_Satýþlar (Satýþ_id, Müþteri_id, Ödeme_Yöntemi_id, Satýþ_Tarihi, Toplam_Tutar)
    VALUES (SEQ_Satýþlar.NEXTVAL, p_musteri_id, p_odeme_yontemi_id, p_satis_tarihi, p_toplam_tutar);
    COMMIT;
  END SatýþEkle;


  PROCEDURE ÇalýþanEkle(
    p_calisan_ad IN O_Çalýþanlar.Çalýþan_Ad%TYPE,
    p_pozisyon IN O_Çalýþanlar.Pozisyon%TYPE,
    p_ise_giris_tarihi IN O_Çalýþanlar.Ýþe_Giriþ_Tarihi%TYPE,
    p_maas IN O_Çalýþanlar.Maaþ%TYPE
  ) IS
  BEGIN
    INSERT INTO O_Çalýþanlar (Çalýþan_id, Çalýþan_Ad, Pozisyon, Ýþe_Giriþ_Tarihi, Maaþ)
    VALUES (SEQ_Çalýþanlar.NEXTVAL, p_calisan_ad, p_pozisyon, p_ise_giris_tarihi, p_maas);
    COMMIT;
  END ÇalýþanEkle;


  PROCEDURE SatýlanÜrünEkle(
    p_satis_id IN O_Satýlan_Ürünler.Satýþ_id%TYPE,
    p_urun_id IN O_Satýlan_Ürünler.Ürün_id%TYPE,
    p_miktar IN O_Satýlan_Ürünler.Miktar%TYPE
  ) IS
  BEGIN
    INSERT INTO O_Satýlan_Ürünler (Satýþ_id, Ürün_id, Miktar)
    VALUES (p_satis_id, p_urun_id, p_miktar);
    COMMIT;
  END SatýlanÜrünEkle;


  PROCEDURE ÖdemeYöntemiEkle(
    p_yontem_adi IN O_Ödeme_Yöntemleri.Yöntem_Adý%TYPE
  ) IS
  BEGIN
    INSERT INTO O_Ödeme_Yöntemleri (Ödeme_Yöntemi_id, Yöntem_Adý)
    VALUES (SEQ_Ödeme_Yöntemleri.NEXTVAL, p_yontem_adi);
    COMMIT;
  END ÖdemeYöntemiEkle;


  PROCEDURE TedarikçiEkle(
    p_ad IN O_Tedarikçiler.Ad%TYPE,
    p_iletisim_bilgileri IN O_Tedarikçiler.Ýletiþim_Bilgileri%TYPE
  ) IS
  BEGIN
    INSERT INTO O_Tedarikçiler (Tedarikçi_id, Ad, Ýletiþim_Bilgileri)
    VALUES (SEQ_Tedarikçiler.NEXTVAL, p_ad, p_iletisim_bilgileri);
    COMMIT;
  END TedarikçiEkle;


  PROCEDURE SipariþEkle(
    p_tedarikci_id IN O_Sipariþler.Tedarikçi_id%TYPE,
    p_odeme_yontemi_id IN O_Sipariþler.Ödeme_Yöntemi_id%TYPE,
    p_siparis_tarihi IN O_Sipariþler.Sipariþ_Tarihi%TYPE,
    p_toplam_tutar IN O_Sipariþler.Toplam_Tutar%TYPE
  ) IS
  BEGIN
    INSERT INTO O_Sipariþler (Sipariþ_id, Tedarikçi_id, Ödeme_Yöntemi_id, Sipariþ_Tarihi, Toplam_Tutar)
    VALUES (SEQ_Sipariþler.NEXTVAL, p_tedarikci_id, p_odeme_yontemi_id, p_siparis_tarihi, p_toplam_tutar);
    COMMIT;
  END SipariþEkle;


  PROCEDURE StokEkle(
    p_urun_id IN O_Stok.Ürün_id%TYPE,
    p_stok_miktari IN O_Stok.Stok_Miktarý%TYPE
  ) IS
  BEGIN
    INSERT INTO O_Stok (Ürün_id, Stok_Miktarý)
    VALUES (p_urun_id, p_stok_miktari);
    COMMIT;
  END StokEkle;


  PROCEDURE PromosyonEkle(
    p_promosyon_adi IN O_Promosyonlar.Promosyon_Adý%TYPE,
    p_baslangic_tarihi IN O_Promosyonlar.Baþlangýç_Tarihi%TYPE,
    p_bitis_tarihi IN O_Promosyonlar.Bitiþ_Tarihi%TYPE
  ) IS
  BEGIN
    INSERT INTO O_Promosyonlar (Promosyon_id, Promosyon_Adý, Baþlangýç_Tarihi, Bitiþ_Tarihi)
    VALUES (SEQ_Promosyonlar.NEXTVAL, p_promosyon_adi, p_baslangic_tarihi, p_bitis_tarihi);
    COMMIT;
  END PromosyonEkle;


  PROCEDURE SatýþPromosyonuEkle(
    p_satis_id IN O_Satýþ_Promosyonlarý.Satýþ_id%TYPE,
    p_promosyon_id IN O_Satýþ_Promosyonlarý.Promosyon_id%TYPE
  ) IS
  BEGIN
    INSERT INTO O_Satýþ_Promosyonlarý (Satýþ_id, Promosyon_id)
    VALUES (p_satis_id, p_promosyon_id);
    COMMIT;
  END SatýþPromosyonuEkle;
  

  PROCEDURE SipariþÜrünlerEkle(
    p_siparis_id IN O_Sipariþ_Ürünler.Sipariþ_id%TYPE,
    p_urun_id IN O_Sipariþ_Ürünler.Ürün_id%TYPE,
    p_miktar IN O_Sipariþ_Ürünler.Miktar%TYPE
  ) IS
  BEGIN
    INSERT INTO O_Sipariþ_Ürünler (Sipariþ_id, Ürün_id,Miktar)
    VALUES (p_siparis_id, p_urun_id, p_miktar);
    COMMIT;
  END SipariþÜrünlerEkle;
  

  PROCEDURE ÜrünSil(p_urun_id IN NUMBER) IS
  BEGIN
    DELETE FROM O_Ürünler WHERE Ürün_id = p_urun_id;
    COMMIT;
  END ÜrünSil;

  PROCEDURE MüþteriSil(p_musteri_id IN NUMBER) IS
  BEGIN
    DELETE FROM O_Müþteriler WHERE Müþteri_id = p_musteri_id;
    COMMIT;
  END MüþteriSil;

  PROCEDURE ÇalýþanSil(p_calisan_id IN NUMBER) IS
  BEGIN
    DELETE FROM O_Çalýþanlar WHERE Çalýþan_id = p_calisan_id;
    COMMIT;
  END ÇalýþanSil;

  PROCEDURE TedarikçiSil(p_tedarikci_id IN NUMBER) IS
  BEGIN
    DELETE FROM O_Tedarikçiler WHERE Tedarikçi_id = p_tedarikci_id;
    COMMIT;
  END TedarikçiSil;
  
  -- Tekrar eden çalýþan kayýtlarýný silen prosedür--------------------------------------
 PROCEDURE SilTekrarEdenÇalýþanlar IS
  BEGIN
    DELETE FROM O_Çalýþanlar
    WHERE rowid NOT IN (
      SELECT MIN(rowid)
      FROM O_Çalýþanlar
      GROUP BY Çalýþan_ad,Pozisyon,Ýþe_Giriþ_Tarihi,Maaþ
    );
    COMMIT;
  END SilTekrarEdenÇalýþanlar;
END VeriGiris_Pkg;
/