SET SERVEROUTPUT ON
DECLARE
  v_sql      VARCHAR2(1000);
  v_cursor   SYS_REFCURSOR;
  v_id       O_Müþteriler.Müþteri_id%TYPE;
  v_name     O_Müþteriler.Ad%TYPE;
  v_email    O_Müþteriler.E_posta%TYPE;
  v_phone    O_Müþteriler.Telefon%TYPE;
  v_address  O_Müþteriler.Adress%TYPE;
BEGIN
  v_sql := 'SELECT Müþteri_id, Ad, E_posta, Telefon, Adress FROM O_Müþteriler WHERE Ad = :1';

  OPEN v_cursor FOR v_sql USING 'Mert';

  LOOP
    FETCH v_cursor INTO v_id, v_name, v_email, v_phone, v_address;
    EXIT WHEN v_cursor%NOTFOUND;
    DBMS_OUTPUT.PUT_LINE('Müþteri ID: ' || v_id || ', Ad: ' || v_name || ', E-posta: ' || v_email || ', Telefon: ' || v_phone || ', Adres: ' || v_address);
  END LOOP;

  CLOSE v_cursor;
END;
/
