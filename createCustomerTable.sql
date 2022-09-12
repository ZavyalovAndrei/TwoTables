create schema netology;

create table CUSTOMERS (
                           id int primary key auto_increment,
                           name varchar(250) not null,
                           surname varchar(250) not null,
                           age int not null check ( age > 0 ),
                           phone_number int check ( phone_number > 0 ) default null
);

create index customers_index
on CUSTOMERS (id, name, surname);

insert CUSTOMERS (name, surname, age, phone_number)
values
    ('Yan', 'Fedorov', 37, 9643675),
    ('Alexey', 'Uzenjuk', 28, 7852323),
    ('Damiano', 'David', 23, 8856337),
    ('Anessa', 'Lippa', 27, 45236856),
    ('Vladimir', 'Kotlyarov', 34, 1120568),
    ('Billie', 'Eilish Pirate Baird O\'Connell', 22, 6687993),
    ('Alexey', 'Kortnev', 55, 7852526),
    ('Alexandr', 'Ivanov', 54, 8371557),
    ('Alexey', 'Gorshnev', 46, 5632489),
    ('Dmitry', 'Spirin', 47, 8756930),
    ('Alexey', 'Nikonov', 46, 8721546);