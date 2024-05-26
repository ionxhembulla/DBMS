create table book_author
(
    book_isbn bigint  not null,
    author_id integer not null,
    constraint book_author_pk
        primary key (book_isbn, author_id),
    constraint book_author_authors_id_fk
        foreign key (author_id) references authors,
    constraint book_author_books_isbn_fk
        foreign key (book_isbn) references books
);

