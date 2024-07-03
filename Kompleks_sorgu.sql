SET SERVEROUTPUT ON
DECLARE
    v_sql_query VARCHAR2(1000);
    v_criteria VARCHAR2(200);
    v_result SYS_REFCURSOR;
    v_ürün_id O_Ürünler.Ürün_id%TYPE;
    v_ürün_adý O_Ürünler.Ürün_adý%TYPE;
    v_kategori O_Ürünler.Kategori%TYPE;
BEGIN

    v_criteria := 'Kategori = ''okul''';

    -- Dinamik SQL sorgusunu oluþturma
    v_sql_query := 'SELECT Ürün_id, Ürün_adý, Kategori FROM O_Ürünler WHERE ' || v_criteria;

    -- Sorguyu çalýþtýrma
    OPEN v_result FOR v_sql_query;

    -- Sonucu görüntüleme
    DBMS_OUTPUT.PUT_LINE('Ürünler Tablosundan ' || v_criteria || ' kriterine uygun kayýtlar getirildi:');
    LOOP
        FETCH v_result INTO v_ürün_id, v_ürün_adý, v_kategori;
        EXIT WHEN v_result%NOTFOUND;
        -- Sonuçlarý iþleme kodlarý buraya yazýlabilir
        DBMS_OUTPUT.PUT_LINE('Ürün ID: ' || v_ürün_id || ', Ürün Adý: ' || v_ürün_adý || ', Kategori: ' || v_kategori);
    END LOOP;

    CLOSE v_result;
END;
/



