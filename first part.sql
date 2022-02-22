CREATE TYPE name1 as(
    first_name VARCHAR(50),
    last_name VARCHAR(50)
                   );
CREATE TYPE address1 as(
    country VARCHAR(50),
    city VARCHAR(50),
    street VARCHAR(50)
                      );
-- DROP SCHEMA public CASCADE;
-- CREATE SCHEMA public;
--

CREATE TABLE customers(
    id INTEGER PRIMARY KEY ,
    name name1 NOT NULL,
    address address1 NOT NULL,
    phone VARCHAR NOT NULL ,
    email VARCHAR(50)[] NOT NULL
);

CREATE TABLE order1(
    number INTEGER PRIMARY KEY,
    transport_id INTEGER,
    name_company VARCHAR(50) NOT NULL ,
    price INTEGER NOT NULL CHECK ( price>0 ),
    day_order DATE NOT NULL ,
    term DATE NOT NULL ,
    receive_order DATE ,
    customers_id INTEGER,
    FOREIGN KEY (customers_id) REFERENCES customers(id)
);
CREATE TABLE transport_company(
    transport_id INTEGER PRIMARY KEY ,
    name_company VARCHAR(50) NOT NULL ,
    price INTEGER NOT NULL CHECK ( price>0 ),
    phone_num INTEGER NOT NULL ,
    email VARCHAR(50)[] NOT NULL,
    order_id INTEGER,
    FOREIGN KEY (order_id) REFERENCES order1(number)
);
CREATE TABLE Package(
    package_id INTEGER PRIMARY KEY ,
    weight INTEGER NOT NULL ,
    size INTEGER NOT NULL CHECK ( size in (1,2,3) ),
    order_id INTEGER,
    FOREIGN KEY(order_id) REFERENCES order1(number)
);
CREATE TABLE has_materials(
    has_id INTEGER PRIMARY KEY ,
    hazardous bool,
    package_id INTEGER,
    FOREIGN KEY(package_id) REFERENCES Package(package_id)
);
CREATE TABLE int_shipment(
    int_id INTEGER PRIMARY KEY ,
    international bool,
    package_id INTEGER,
    FOREIGN KEY(package_id) REFERENCES Package(package_id)
);
CREATE TABLE truck(
    truck_id INTEGER PRIMARY KEY ,
    truck_type VARCHAR(50),
    current_location VARCHAR(50),
    --transport_id1 INTEGER,
    transport_id INTEGER,
    FOREIGN KEY (transport_id) REFERENCES transport_company(transport_id)
);
CREATE TABLE regular_customer(
    customers_id INTEGER,
    account_number VARCHAR,
    transport_id INTEGER,
    FOREIGN KEY (transport_id) references transport_company(transport_id),
    FOREIGN KEY (customers_id) REFERENCES customers(id)
);