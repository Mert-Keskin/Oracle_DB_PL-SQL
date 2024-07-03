CREATE OR REPLACE PACKAGE VeriGiris_Pkg AS
  -- Müþteri ekleme prosedürü
  PROCEDURE MüþteriEkle(
    p_ad IN O_Müþteriler.Ad%TYPE,
    p_eposta IN O_Müþteriler.E_posta%TYPE,
    p_telefon IN O_Müþteriler.Telefon%TYPE,
    p_adress IN O_Müþteriler.Adress%TYPE
  );

  -- Ürün ekleme prosedürü
  PROCEDURE ÜrünEkle(
    p_urun_adi IN O_Ürünler.Ürün_adý%TYPE,
    p_kategori IN O_Ürünler.Kategori%TYPE,
    p_fiyat IN O_Ürünler.fiyat%TYPE
  );

  -- Satýþ ekleme prosedürü
  PROCEDURE SatýþEkle(
    p_musteri_id IN O_Satýþlar.Müþteri_id%TYPE,
    p_odeme_yontemi_id IN O_Satýþlar.Ödeme_Yöntemi_id%TYPE,
    p_satis_tarihi IN O_Satýþlar.Satýþ_Tarihi%TYPE,
    p_toplam_tutar IN O_Satýþlar.Toplam_Tutar%TYPE
  );

  -- Çalýþan ekleme prosedürü
  PROCEDURE ÇalýþanEkle(
    p_calisan_ad IN O_Çalýþanlar.Çalýþan_Ad%TYPE,
    p_pozisyon IN O_Çalýþanlar.Pozisyon%TYPE,
    p_ise_giris_tarihi IN O_Çalýþanlar.Ýþe_Giriþ_Tarihi%TYPE,
    p_maas IN O_Çalýþanlar.Maaþ%TYPE
  );

  -- Satýlan ürün ekleme prosedürü
  PROCEDURE SatýlanÜrünEkle(
    p_satis_id IN O_Satýlan_Ürünler.Satýþ_id%TYPE,
    p_urun_id IN O_Satýlan_Ürünler.Ürün_id%TYPE,
    p_miktar IN O_Satýlan_Ürünler.Miktar%TYPE
  );

  -- Ödeme yöntemi ekleme prosedürü
  PROCEDURE ÖdemeYöntemiEkle(
    p_yontem_adi IN O_Ödeme_Yöntemleri.Yöntem_Adý%TYPE
  );

  -- Tedarikçi ekleme prosedürü
  PROCEDURE TedarikçiEkle(
    p_ad IN O_Tedarikçiler.Ad%TYPE,
    p_iletisim_bilgileri IN O_Tedarikçiler.Ýletiþim_Bilgileri%TYPE
  );

  -- Sipariþ ekleme prosedürü
  PROCEDURE SipariþEkle(
    p_tedarikci_id IN O_Sipariþler.Tedarikçi_id%TYPE,
    p_odeme_yontemi_id IN O_Sipariþler.Ödeme_Yöntemi_id%TYPE,
    p_siparis_tarihi IN O_Sipariþler.Sipariþ_Tarihi%TYPE,
    p_toplam_tutar IN O_Sipariþler.Toplam_Tutar%TYPE
  );

  -- Stok ekleme prosedürü
  PROCEDURE StokEkle(
    p_urun_id IN O_Stok.Ürün_id%TYPE,
    p_stok_miktari IN O_Stok.Stok_Miktarý%TYPE
  );

  -- Promosyon ekleme prosedürü
  PROCEDURE PromosyonEkle(
    p_promosyon_adi IN O_Promosyonlar.Promosyon_Adý%TYPE,
    p_baslangic_tarihi IN O_Promosyonlar.Baþlangýç_Tarihi%TYPE,
    p_bitis_tarihi IN O_Promosyonlar.Bitiþ_Tarihi%TYPE
  );

  -- Satýþ promosyonu ekleme prosedürü
  PROCEDURE SatýþPromosyonuEkle(
    p_satis_id IN O_Satýþ_Promosyonlarý.Satýþ_id%TYPE,
    p_promosyon_id IN O_Satýþ_Promosyonlarý.Promosyon_id%TYPE
  );
  --Sipariþ_Ürünler ekleme prosedürü
   PROCEDURE SipariþÜrünlerEkle(
    p_siparis_id IN O_Sipariþ_Ürünler.Sipariþ_id%TYPE,
    p_urun_id IN O_Sipariþ_Ürünler.Ürün_id%TYPE,
    p_miktar IN O_Sipariþ_Ürünler.Miktar%TYPE
  );


-- Müþteri düzenleme prosedürü
  PROCEDURE MüþteriDüzenle(
    p_musteri_id IN O_Müþteriler.Müþteri_id%TYPE,
    p_ad IN O_Müþteriler.Ad%TYPE,
    p_eposta IN O_Müþteriler.E_posta%TYPE,
    p_telefon IN O_Müþteriler.Telefon%TYPE,
    p_adress IN O_Müþteriler.Adress%TYPE
  );

  -- Ürün düzenleme prosedürü
  PROCEDURE ÜrünDüzenle(
    p_urun_id IN O_Ürünler.Ürün_id%TYPE,
    p_urun_adi IN O_Ürünler.Ürün_adý%TYPE,
    p_kategori IN O_Ürünler.Kategori%TYPE,
    p_fiyat IN O_Ürünler.fiyat%TYPE
  );

  -- Satýþ düzenleme prosedürü
  PROCEDURE SatýþDüzenle(
    p_satýs_id IN O_Satýþlar.Satýþ_id%TYPE,
    p_musteri_id IN O_Satýþlar.Müþteri_id%TYPE,
    p_odeme_yontemi_id IN O_Satýþlar.Ödeme_Yöntemi_id%TYPE,
    p_satis_tarihi IN O_Satýþlar.Satýþ_Tarihi%TYPE,
    p_toplam_tutar IN O_Satýþlar.Toplam_Tutar%TYPE
  );

  -- Çalýþan düzenleme prosedürü
  PROCEDURE ÇalýþanDüzenle(
    p_calisan_id IN O_Çalýþanlar.Çalýþan_id%TYPE,
    p_calisan_ad IN O_Çalýþanlar.Çalýþan_Ad%TYPE,
    p_pozisyon IN O_Çalýþanlar.Pozisyon%TYPE,
    p_ise_giris_tarihi IN O_Çalýþanlar.Ýþe_Giriþ_Tarihi%TYPE,
    p_maas IN O_Çalýþanlar.Maaþ%TYPE
  );

  -- Ürün stok miktarý düzenleme prosedürü
  PROCEDURE StokMiktarýDüzenle(
    p_urun_id IN O_Stok.Ürün_id%TYPE,
    p_stok_miktari IN O_Stok.Stok_Miktarý%TYPE
  );

  -- Sipariþ düzenleme prosedürü
  PROCEDURE SipariþDüzenle(
    p_siparis_id IN O_Sipariþler.Sipariþ_id%TYPE,
    p_tedarikci_id IN O_Sipariþler.Tedarikçi_id%TYPE,
    p_odeme_yontemi_id IN O_Sipariþler.Ödeme_Yöntemi_id%TYPE,
    p_siparis_tarihi IN O_Sipariþler.Sipariþ_Tarihi%TYPE,
    p_toplam_tutar IN O_Sipariþler.Toplam_Tutar%TYPE
  );
    
  -- Ödeme yöntemi düzenleme prosedürü
  PROCEDURE ÖdemeYöntemiDüzenle(
    p_odeme_yontemi_id IN O_Ödeme_Yöntemleri.Ödeme_Yöntemi_id%TYPE,
    p_yontem_adi IN O_Ödeme_Yöntemleri.Yöntem_Adý%TYPE
  );

  -- Promosyon düzenleme prosedürü
  PROCEDURE PromosyonDüzenle(
    p_promosyon_id IN O_Promosyonlar.Promosyon_id%TYPE,
    p_promosyon_adi IN O_Promosyonlar.Promosyon_Adý%TYPE,
    p_baslangic_tarihi IN O_Promosyonlar.Baþlangýç_Tarihi%TYPE,
    p_bitis_tarihi IN O_Promosyonlar.Bitiþ_Tarihi%TYPE
  );

  -- Satýlan ürün düzenleme prosedürü
  PROCEDURE SatýlanÜrünDüzenle(
    p_satis_id IN O_Satýlan_Ürünler.Satýþ_id%TYPE,
    p_urun_id IN O_Satýlan_Ürünler.Ürün_id%TYPE,
    p_miktar IN O_Satýlan_Ürünler.Miktar%TYPE
  );

  -- Satýþ promosyonu düzenleme prosedürü
  PROCEDURE SatýþPromosyonuDüzenle(
    p_satis_id IN O_Satýþ_Promosyonlarý.Satýþ_id%TYPE,
    p_promosyon_id IN O_Satýþ_Promosyonlarý.Promosyon_id%TYPE
  );

  -- Tedarikçi düzenleme prosedürü
  PROCEDURE TedarikçiDüzenle(
    p_tedarikci_id IN O_Tedarikçiler.Tedarikçi_id%TYPE,
    p_ad IN O_Tedarikçiler.Ad%TYPE,
    p_iletisim_bilgileri IN O_Tedarikçiler.Ýletiþim_Bilgileri%TYPE
  );
  PROCEDURE SipariþÜrünlerDüzenle(
    p_siparis_id IN O_Sipariþ_Ürünler.Sipariþ_id%TYPE,
    p_urun_id IN O_Sipariþ_Ürünler.Ürün_id%TYPE,
    p_miktar IN O_Sipariþ_Ürünler.Miktar%TYPE
  );
  
  -- Silme Prosedürleri
  PROCEDURE ÜrünSil(p_urun_id IN NUMBER);
  PROCEDURE MüþteriSil(p_musteri_id IN NUMBER);
  PROCEDURE ÇalýþanSil(p_calisan_id IN NUMBER);
  PROCEDURE TedarikçiSil(p_tedarikci_id IN NUMBER);
  -- Tekrar eden müþteri kayýtlarýný silen prosedür
  PROCEDURE SilTekrarEdenÇalýþanlar;
END VeriGiris_Pkg;
/

