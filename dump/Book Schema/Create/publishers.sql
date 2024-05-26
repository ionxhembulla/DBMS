create table publishers
(
    id   serial,
    name varchar not null,
    constraint publishers_pk
        primary key (id)
);

