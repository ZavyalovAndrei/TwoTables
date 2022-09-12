create table ORDERS (
                        id serial primary key not null,
                        date timestamp default now() not null,
                        customer_id int not null,
                        product_name varchar(250) not null,
                        amount int not null check ( amount > 0 ),
                        foreign key (customer_id) references CUSTOMERS (id)
);
create index orders_index
on ORDERS (id, customer_id, date);

insert ORDERS (date, customer_id, product_name, amount)
values
    ('2022-09-05 10:22:11', 7, 'Bluetooth receiver Ugreen', 1),
    ('2022-09-05 12:46:52', 4, 'Notebook Xiaomi RedmiBook Pro 14"', 1),
    ('2022-09-05 16:18:14', 11, 'Lenovo Tab P11 Pro TB-J706L', 2),
    ('2022-09-05 17:01:36', 1, 'SD card Sandisk 128ГБ SDSDXDK-128G-GN4IN UHS-II U3', 6),
    ('2022-09-05 17:30:17', 8, 'Telephone Xiaomi Redmi 10C NFC 4/64', 1),
    ('2022-09-06 09:08:33', 5, 'Video camera Sony y ILME-FX3', 1),
    ('2022-09-06 13:45:10', 10, 'Wireless headphones Marshall Minor III', 1),
    ('2022-09-07 09:03:31', 3, 'Wi-fi repeater Xiaomi Mi Wi-Fi Range Extender Pro CN', 1),
    ('2022-09-07 11:34:26', 2, 'Telephone Apple iPhone 14 Pro Max 128', 1),
    ('2022-09-07 13:04:56', 6, 'Keyboard Xiaomi MIIIW', 9),
    ('2022-09-07 14:09:03', 9, 'Notebook MSI GF63 10SC-635XRU', 1),
    ('2022-09-08 10:16:28', 3, 'Wi-fi router TP-LINK Archer C80', 2),
    ('2022-09-08 11:37:02', 11, 'Sony PlayStation 5 825Gb', 1),
    ('2022-09-08 16:59:29', 5, 'Computer  GANSOR-158348', 1),
    ('2022-09-09 09:25:45', 9, 'Monitor Samsung Odyssey G5 C34G55TWWI', 1),
    ('2022-09-09 11:44:54', 8, 'Clock Samsung Galaxy Watch4 Classic', 1),
    ('2022-09-09 15:09:16', 4, 'Video card GIGABYTE AORUS GeForce RTX 3080 Ti', 1),
    ('2022-09-09 15:45:37', 6, 'PC power supply Dell PS-2112-2D-LF', 1);