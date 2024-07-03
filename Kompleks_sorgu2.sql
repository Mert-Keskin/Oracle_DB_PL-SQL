SET SERVEROUTPUT ON
DECLARE
  v_sql      VARCHAR2(1000);
  v_cursor   SYS_REFCURSOR;
  v_id       O_M��teriler.M��teri_id%TYPE;
  v_name     O_M��teriler.Ad%TYPE;
  v_email    O_M��teriler.E_posta%TYPE;
  v_phone    O_M��teriler.Telefon%TYPE;
  v_address  O_M��teriler.Adress%TYPE;
BEGIN
  v_sql := 'SELECT M��teri_id, Ad, E_posta, Telefon, Adress FROM O_M��teriler WHERE Ad = :1';

  OPEN v_cursor FOR v_sql USING 'Mert';

  LOOP
    FETCH v_cursor INTO v_id, v_name, v_email, v_phone, v_address;
    EXIT WHEN v_cursor%NOTFOUND;
    DBMS_OUTPUT.PUT_LINE('M��teri ID: ' || v_id || ', Ad: ' || v_name || ', E-posta: ' || v_email || ', Telefon: ' || v_phone || ', Adres: ' || v_address);
  END LOOP;

  CLOSE v_cursor;
END;
/
