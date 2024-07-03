SET SERVEROUTPUT ON
DECLARE
    v_sql_query VARCHAR2(1000);
    v_criteria VARCHAR2(200);
    v_result SYS_REFCURSOR;
    v_�r�n_id O_�r�nler.�r�n_id%TYPE;
    v_�r�n_ad� O_�r�nler.�r�n_ad�%TYPE;
    v_kategori O_�r�nler.Kategori%TYPE;
BEGIN

    v_criteria := 'Kategori = ''okul''';

    -- Dinamik SQL sorgusunu olu�turma
    v_sql_query := 'SELECT �r�n_id, �r�n_ad�, Kategori FROM O_�r�nler WHERE ' || v_criteria;

    -- Sorguyu �al��t�rma
    OPEN v_result FOR v_sql_query;

    -- Sonucu g�r�nt�leme
    DBMS_OUTPUT.PUT_LINE('�r�nler Tablosundan ' || v_criteria || ' kriterine uygun kay�tlar getirildi:');
    LOOP
        FETCH v_result INTO v_�r�n_id, v_�r�n_ad�, v_kategori;
        EXIT WHEN v_result%NOTFOUND;
        -- Sonu�lar� i�leme kodlar� buraya yaz�labilir
        DBMS_OUTPUT.PUT_LINE('�r�n ID: ' || v_�r�n_id || ', �r�n Ad�: ' || v_�r�n_ad� || ', Kategori: ' || v_kategori);
    END LOOP;

    CLOSE v_result;
END;
/



