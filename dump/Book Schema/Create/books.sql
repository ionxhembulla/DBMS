create table books
(
    isbn             bigint  not null,
    publisher_id     integer not null,
    title            varchar not null,
    publication_year integer not null,
    no_of_pages      integer not null,
    edition          integer not null,
    constraint books_pk
        primary key (isbn),
    constraint books_publishers_id_fk
        foreign key (publisher_id) references publishers
);

