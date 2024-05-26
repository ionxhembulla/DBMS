create table lib_books
(
    book_isbn    bigint  not null,
    lc_code      varchar,
    no_of_copies integer not null,
    constraint lib_books_pk
        primary key (book_isbn),
    constraint lib_books_subcategories_lc_code_fk
        foreign key (lc_code) references subcategories (lc_code),
    constraint lib_books_books_isbn_fk
        foreign key (book_isbn) references book.books
);

