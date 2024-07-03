CREATE OR REPLACE TRIGGER SatýþEklendi_Trigger
AFTER INSERT ON O_Satýþlar
FOR EACH ROW
BEGIN
    INSERT INTO O_Satýþ_Promosyonlarý (Satýþ_id, Promosyon_id)
    VALUES (:NEW.Satýþ_id, 1);
END;
/
