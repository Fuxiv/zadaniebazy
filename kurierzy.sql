create table zadanie.kurierzy
(
    kurier_id     int auto_increment
        primary key,
    nazwa_kuriera text       not null,
    kategoria_id  int        not null,
    rozwozi       tinyint(1) not null comment 'rozwozi - true, przywozi(z hurtownii) - false',
    constraint kurierzy_ibfk_1
        foreign key (kategoria_id) references zadanie.kategorie (kategoria_id)
);

create index kategoria_id
    on zadanie.kurierzy (kategoria_id);

