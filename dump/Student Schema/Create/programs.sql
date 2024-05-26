create table programs
(
    id               serial,
    name             varchar not null,
    date_of_creation date    not null,
    constraint programs_pk
        primary key (id)
);

