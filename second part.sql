CREATE TABLE  credit_card(
    order1_number INTEGER,
    card_number VARCHAR(50) NOT NULL ,
    exp_date DATE,
    FOREIGN KEY (order1_number) REFERENCES order1(number)
);
INSERT INTO customers VALUES (1,ROW('Nurkhat', 'Bekmaganbet'),
                              ROW('Kazakhstan', 'Almaty','Islama-70k1'),
                              87028400707,'{"tobyshbay@mail.ru","a_tobyshbai@kbtu.kz"}'
                              );
INSERT INTO customers VALUES (2,ROW('Alfreds', 'Futterkiste'),
                              ROW('Germany', 'Berlin','Obere Str. 57'),12209
                              ,'{"tobyshbay@mail.ru","a_tobyshbai@kbtu.kz"}'
                              );
INSERT INTO customers VALUES (3,ROW('Ana', 'Trujillo'),
                              ROW('Mexico','México D.F.','Avda. de la Constitución 2222'),
                              05021,'{"tobyshbay@mail.ru","a_tobyshbai@kbtu.kz"}'
                              );
INSERT INTO customers VALUES (4,ROW('Antonio', 'Moreno'),
                              ROW('Mexico', 'México D.F.','Mataderos 2312'),
                              05023,'{"tobyshbay@mail.ru","a_tobyshbai@kbtu.kz"}'
                              );
INSERT INTO customers VALUES (5,ROW('Thomas', 'Hardy'),
                              ROW('UK', 'London','120 Hanover Sq.'),
                              67000,'{"tobyshbay@mail.ru","a_tobyshbai@kbtu.kz"}'
                              );
INSERT INTO customers VALUES (6,ROW('Hanna', 'Moos'),
                              ROW('Germany', 'Mannheim','Forsterstr. 57'),
                              68306,'{"tobyshbay@mail.ru","a_tobyshbai@kbtu.kz"}'
                              );
INSERT INTO customers VALUES (7,ROW('Martín', 'Sommer'),
                              ROW('Spain', 'Madrid','C/ Araquil, 67'),
                              28023,'{"tobyshbay@mail.ru","a_tobyshbai@kbtu.kz"}'
                              );
INSERT INTO customers VALUES (8,ROW('Laurence', 'Lebihans'),
                              ROW('France', 'Marseille','12, rue des Bouchers'),
                              13008,'{"tobyshbay@mail.ru","a_tobyshbai@kbtu.kz"}'
                              );
INSERT INTO customers VALUES (9,ROW('Elizabeth', 'Lincoln'),
                              ROW('Canada', 'Tsawassen','23 Tsawassen Blvd.'),
                              1010,'{"tobyshbay@mail.ru","a_tobyshbai@kbtu.kz"}'
                              );
INSERT INTO customers VALUES (10,ROW('Francisco', 'Chang'),
                              ROW('Mexico', 'México D.F.','Sierras de Granada 9993'),
                              05022,'{"tobyshbay@mail.ru","a_tobyshbai@kbtu.kz"}'
                              );
INSERT INTO customers VALUES (11,ROW('Carine', 'Schmitt'),
                              ROW('France', 'Nantes','54, rue Royale'),
                              44000,'{"tobyshbay@mail.ru","a_tobyshbai@kbtu.kz"}'
                              );
INSERT INTO customers VALUES (12,ROW('Paolo', 'Accorti'),
                              ROW('Italy', 'Torino','Via Monte Bianco 34'),
                              10100,'{"tobyshbay@mail.ru","a_tobyshbai@kbtu.kz"}'
                              );
INSERT INTO transport_company VALUES (101,'FedEx',50,4006,'{"FedEx.00@bk.ru","FedEx.01@mail.ru"}');
INSERT INTO transport_company VALUES (102,'UPS',50,4006,'{"UPS.00@bk.ru","UPS.01@mail.ru"}');
INSERT INTO transport_company VALUES (103,'DHL',50,4006,'{"DHL.00@bk.ru","DHL.01@mail.ru"}');
INSERT INTO transport_company VALUES (104,'USPS',50,4006,'{"USPS.00@bk.ru","USPS.01@mail.ru"}');
----------------------------------------FedEx, UPS, DHL, USPS
--DELETE FROM transport_company;