create table zadanie.produkty
(
    produkt_id     int auto_increment
        primary key,
    nazwa_produktu text  not null,
    kategoria_id   int   not null,
    cena_produktu  float not null,
    constraint produkty_ibfk_1
        foreign key (kategoria_id) references zadanie.kategorie (kategoria_id)
);

create index kategoria_id
    on zadanie.produkty (kategoria_id);

