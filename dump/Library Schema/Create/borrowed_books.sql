create table borrowed_books
(
    book_isbn     bigint  not null,
    student_id    integer not null,
    is_returned   boolean not null,
    date_borrowed date    not null,
    constraint borrowed_books_pk
        primary key (book_isbn, student_id),
    constraint borrowed_books_students_id_fk
        foreign key (student_id) references student.students,
    constraint borrowed_books_lib_books_book_isbn_fk
        foreign key (book_isbn) references lib_books
);

create trigger book_copies_trigger
    before insert or update
    on borrowed_books
    for each row
execute procedure public.check_book_copies();

