--DELETE FROM order1;
INSERT INTO order1 VALUES (1,101,'FedEx',50,'2021-12-14','2021-12-21','2021-12-19',1);
INSERT INTO order1(number, transport_id, name_company, price, day_order, term, customers_id) VALUES (2,101,'FedEx',50,'2021-12-13','2021-12-21',2);
INSERT INTO order1 VALUES (3,101,'FedEx',50,'2021-12-12','2021-12-21','2021-12-21',3);
INSERT INTO order1 VALUES (4,102,'UPS',50,'2021-12-17','2021-12-24','2021-12-25',4);
INSERT INTO order1 VALUES (5,102,'UPS',50,'2021-12-20','2021-12-25','2021-12-25',5);
INSERT INTO order1 VALUES (6,102,'UPS',50,'2021-12-20','2021-12-26','2021-12-25',6);
INSERT INTO order1 VALUES (7,103,'DHL',50,'2021-12-22','2021-12-27','2021-12-27',7);
INSERT INTO order1 VALUES (8,103,'DHL',50,'2021-12-23','2021-12-30','2021-12-31',8);
INSERT INTO order1 VALUES (9,103,'DHL',50,'2021-12-24','2021-12-31','2021-12-30',9);
INSERT INTO order1 VALUES (10,104,'USPS',50,'2021-12-27','2022-01-01','2022-01-02',10);
INSERT INTO order1 VALUES (11,104,'USPS',50,'2021-01-01','2022-01-10','2022-01-10',11);
INSERT INTO order1 VALUES (12,104,'USPS',50,'2022-01-07','2022-01-14','2022-01-14',12);
INSERT INTO order1 VALUES (13,103,'DHL',50,'2022-01-29','2022-02-01','2022-02-01',7);
INSERT INTO order1 VALUES (14,103,'DHL',50,'2022-01-27','2022-02-03','2022-02-03',8);
INSERT INTO order1 VALUES (15,103,'DHL',50,'2022-02-05','2022-02-13','2022-02-12',7);
INSERT INTO order1 VALUES (16,104,'USPS',50,'2022-02-27','2022-03-01','2022-03-01',8);
INSERT INTO order1 VALUES (17,104,'USPS',50,'2022-03-12','2022-03-19','2022-03-19',7);
INSERT INTO order1 VALUES (18,104,'USPS',50,'2022-03-15','2022-03-22','2022-03-23',12);
INSERT INTO order1 VALUES (19,103,'DHL',50,'2021-12-21','2021-12-31','2022-01-01',9);
--DELETE FROM regular_customer;
INSERT INTO regular_customer VALUES (9,'123456',101);
INSERT INTO regular_customer VALUES (8,'456123',103);
INSERT INTO regular_customer VALUES (7,'142536',103);
INSERT INTO regular_customer VALUES (12,'172839',104);
INSERT INTO credit_card VALUES (1,'123123','2021-12-14');
INSERT INTO credit_card VALUES (2,'123456','2021-12-13');
INSERT INTO credit_card VALUES (3,'456798','2021-12-12');
INSERT INTO credit_card VALUES (4,'987654','2021-12-17');
INSERT INTO credit_card VALUES (5,'465321','2021-12-20');
INSERT INTO credit_card VALUES (6,'123789','2021-12-20');
INSERT INTO credit_card VALUES (10,'456456','2021-12-27');
INSERT INTO credit_card VALUES (11,'147258','2021-01-01');




-- DELETE FROM truck;
INSERT INTO truck VALUES (301,'airplane','S-45.123',101);
INSERT INTO truck VALUES (1721,'truck','S-45.123',101);
INSERT INTO truck VALUES (303,'airplane','S-45.123',102);
INSERT INTO truck VALUES (304,'truck','S-45.123',102);
INSERT INTO truck VALUES (305,'airplane','S-45.123',103);
INSERT INTO truck VALUES (306,'truck','S-45.123',103);
INSERT INTO truck VALUES (307,'airplane','S-45.123',104);
INSERT INTO truck VALUES (308,'truck','S-45.123',104);

--DELETE FROM package;
INSERT INTO package VALUES (1,3,2,1);
INSERT INTO package VALUES (2,5,1,2);
INSERT INTO package VALUES (3,2,3,3);
INSERT INTO package VALUES (4,7,2,4);
INSERT INTO package VALUES (5,3,1,5);
INSERT INTO package VALUES (6,8,3,6);
INSERT INTO package VALUES (7,3,1,7);
INSERT INTO package VALUES (8,3,1,8);
INSERT INTO package VALUES (9,1,1,9);
INSERT INTO package VALUES (10,1,1,10);
INSERT INTO package VALUES (11,13,3,11);
INSERT INTO package VALUES (12,15,3,12);
INSERT INTO package VALUES (13,3,2,7);
INSERT INTO package VALUES (14,1,1,8);
INSERT INTO package VALUES (15,6,2,7);
INSERT INTO package VALUES (16,8,3,8);
INSERT INTO package VALUES (17,3,1,7);
INSERT INTO package VALUES (18,11,3,12);
INSERT INTO package VALUES (19,4,2,9);

INSERT INTO int_shipment VALUES (1,true,3);
INSERT INTO int_shipment VALUES (2,true,5);
INSERT INTO int_shipment VALUES (3,true,11);
--
SELECT p.package_id,o.customers_id,o.number,o.transport_id,o.name_company FROM package p
    INNER JOIN int_shipment i_s on p.package_id = i_s.package_id
    INNER JOIN order1 o on o.number = p.order_id;