ALTER TABLE O_M��teriler ADD CONSTRAINT PK_O_M��teriler PRIMARY KEY (M��teri_id)
/
ALTER TABLE O_�r�nler ADD CONSTRAINT PK_O_�r�nler PRIMARY KEY (�r�n_id)
/
CREATE INDEX IX_Relationship12 ON O_Sat��lar (�deme_Y�ntemi_id)
/

CREATE INDEX IX_Relationship14 ON O_Sat��lar (M��teri_id)
/

-- Add keys for table O_Sat��lar

ALTER TABLE O_Sat��lar ADD CONSTRAINT PK_O_Sat��lar PRIMARY KEY (Sat��_id)
/
ALTER TABLE O_�al��anlar ADD CONSTRAINT PK_O_�al��anlar PRIMARY KEY (�al��an_id)
/
ALTER TABLE O_Sat�lan_�r�nler ADD CONSTRAINT PK_O_Sat�lan_�r�nler PRIMARY KEY (�r�n_id,Sat��_id)
/
ALTER TABLE O_�deme_Y�ntemleri ADD CONSTRAINT PK_O_�deme_Y�ntemleri PRIMARY KEY (�deme_Y�ntemi_id)
/
ALTER TABLE O_Tedarik�iler ADD CONSTRAINT PK_O_Tedarik�iler PRIMARY KEY (Tedarik�i_id)
/
CREATE INDEX IX_Relationship8 ON O_Sipari�ler (Tedarik�i_id)
/

CREATE INDEX IX_Relationship11 ON O_Sipari�ler (�deme_Y�ntemi_id)
/

ALTER TABLE O_Sipari�ler ADD CONSTRAINT PK_O_Sipari�ler PRIMARY KEY (Sipari�_id)
/
ALTER TABLE O_Sipari�_�r�nler ADD CONSTRAINT PK_O_Sipari�_�r�nler PRIMARY KEY (Sipari�_id,�r�n_id)
/
ALTER TABLE O_Stok ADD CONSTRAINT PK_O_Stok PRIMARY KEY (�r�n_id)
/
ALTER TABLE O_Promosyonlar ADD CONSTRAINT PK_O_Promosyonlar PRIMARY KEY (Promosyon_id)
/
ALTER TABLE O_Sat��_Promosyonlar� ADD CONSTRAINT PK_O_Sat��_Promosyonlar� PRIMARY KEY (Sat��_id,Promosyon_id)
/
ALTER TABLE O_Sat�lan_�r�nler ADD CONSTRAINT Relationship2 FOREIGN KEY (�r�n_id) REFERENCES O_�r�nler (�r�n_id)
/



ALTER TABLE O_Sat�lan_�r�nler ADD CONSTRAINT Relationship3 FOREIGN KEY (Sat��_id) REFERENCES O_Sat��lar (Sat��_id)
/



ALTER TABLE O_Sipari�_�r�nler ADD CONSTRAINT Relationship4 FOREIGN KEY (Sipari�_id) REFERENCES O_Sipari�ler (Sipari�_id)
/



ALTER TABLE O_Sipari�_�r�nler ADD CONSTRAINT Relationship5 FOREIGN KEY (�r�n_id) REFERENCES O_�r�nler (�r�n_id)
/



ALTER TABLE O_Stok ADD CONSTRAINT Relationship7 FOREIGN KEY (�r�n_id) REFERENCES O_�r�nler (�r�n_id)
/



ALTER TABLE O_Sipari�ler ADD CONSTRAINT Relationship8 FOREIGN KEY (Tedarik�i_id) REFERENCES O_Tedarik�iler (Tedarik�i_id)
/



ALTER TABLE O_Sat��_Promosyonlar� ADD CONSTRAINT Relationship9 FOREIGN KEY (Sat��_id) REFERENCES O_Sat��lar (Sat��_id)
/



ALTER TABLE O_Sat��_Promosyonlar� ADD CONSTRAINT Relationship10 FOREIGN KEY (Promosyon_id) REFERENCES O_Promosyonlar (Promosyon_id)
/



ALTER TABLE O_Sipari�ler ADD CONSTRAINT Relationship11 FOREIGN KEY (�deme_Y�ntemi_id) REFERENCES O_�deme_Y�ntemleri (�deme_Y�ntemi_id)
/



ALTER TABLE O_Sat��lar ADD CONSTRAINT Relationship12 FOREIGN KEY (�deme_Y�ntemi_id) REFERENCES O_�deme_Y�ntemleri (�deme_Y�ntemi_id)
/



ALTER TABLE O_Sat��lar ADD CONSTRAINT Relationship14 FOREIGN KEY (M��teri_id) REFERENCES O_M��teriler (M��teri_id)
/