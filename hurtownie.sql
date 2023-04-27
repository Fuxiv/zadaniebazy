create table zadanie.hurtownie
(
    hurtownia_id    int auto_increment
        primary key,
    nazwa_hurtownii text not null,
    kategoria_id    int  not null,
    constraint hurtownie_ibfk_1
        foreign key (kategoria_id) references zadanie.kategorie (kategoria_id)
);

create index kategoria_id
    on zadanie.hurtownie (kategoria_id);

