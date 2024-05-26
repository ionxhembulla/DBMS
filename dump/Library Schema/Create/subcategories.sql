create table subcategories
(
    name        varchar not null,
    code        varchar not null,
    category_id char    not null,
    lc_code     varchar,
    constraint subcategories_pk
        primary key (category_id, code),
    constraint subcategories_pk_2
        unique (lc_code),
    constraint subcategories_category_id_fk
        foreign key (category_id) references category
);

