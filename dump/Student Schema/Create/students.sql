create table students
(
    id         serial,
    name       varchar not null,
    surname    varchar not null,
    birthday   date    not null,
    program_id integer not null,
    constraint students_pk
        primary key (id),
    constraint students_programs_id_fk
        foreign key (program_id) references programs
);

