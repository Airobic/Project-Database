INSERT INTO has_materials VALUES (1,true,4);
INSERT INTO has_materials VALUES (2,true,6);
INSERT INTO has_materials VALUES (3,true,11);

SELECT p.package_id,o.customers_id,o.number,o.transport_id,o.name_company FROM package p
    INNER JOIN has_materials hm on p.package_id = hm.package_id
    INNER JOIN order1 o on o.number = p.order_id;

SELECT p.package_id,o.customers_id,o.number,o.transport_id,o.name_company FROM package p
    INNER JOIN has_materials hm on p.package_id = hm.package_id
    INNER JOIN order1 o on o.number = p.order_id
    WHERE p.package_id  IN (
        SELECT p.package_id FROM package p
    INNER JOIN int_shipment i_s on p.package_id = i_s.package_id
    INNER JOIN order1 o on o.number = p.order_id
    );


SELECT t.truck_id,t_c.name_company,o.number,o.customers_id FROM transport_company t_c
    INNER JOIN order1 o on t_c.transport_id=o.transport_id
    INNER JOIN truck t on t_c.transport_id = t.transport_id
WHERE t.truck_id=1721 AND o.receive_order='2021-12-21';

SELECT t.truck_id,t_c.name_company,o.number,o.customers_id FROM transport_company t_c
    INNER JOIN order1 o on t_c.transport_id=o.transport_id
    INNER JOIN truck t on t_c.transport_id = t.transport_id
WHERE t.truck_id=1721 AND o.receive_order!='2021-12-21';

SELECT c.id,c.name,count(o.customers_id) FROM customers c
    INNER JOIN order1 o on c.id = o.customers_id
WHERE o.term>='2021-01-01' AND o.term<='2021-12-31'
GROUP BY (c.id,c.name)
ORDER BY (count(o.customers_id)) DESC LIMIT 1;

SELECT c.id,c.name,SUM(o.price) FROM customers c
    INNER JOIN order1 o on c.id = o.customers_id
WHERE o.term>='2021-01-01' AND o.term<='2021-12-31'
GROUP BY (c.id,c.name)
ORDER BY (SUM(O.price)) DESC LIMIT 1;


SELECT c.id,c.name,count(o.customers_id),(c.address).street FROM customers c
    INNER JOIN order1 o on c.id = o.customers_id
GROUP BY (c.id,c.name)
ORDER BY (count(o.customers_id)) DESC LIMIT 1;

SELECT o.number,o.name_company,o.term, o.receive_order FROM order1 o
WHERE o.term<o.receive_order;