create table authors
(
    id      serial,
    name    varchar not null,
    surname varchar not null,
    constraint authors_pk
        primary key (id)
);

