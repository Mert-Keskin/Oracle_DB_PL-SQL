CREATE OR REPLACE TRIGGER Sat��Eklendi_Trigger
AFTER INSERT ON O_Sat��lar
FOR EACH ROW
BEGIN
    INSERT INTO O_Sat��_Promosyonlar� (Sat��_id, Promosyon_id)
    VALUES (:NEW.Sat��_id, 1);
END;
/
