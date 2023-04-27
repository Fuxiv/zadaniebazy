create table zadanie.zamowienia_przychodzace
(
    zamowienie_id     int auto_increment
        primary key,
    typ_zamowienia_id int   not null,
    kurier_id         int   not null,
    produkt_id        int   not null,
    ilosc_produktu    int   not null,
    hurtownia_id      int   not null,
    cena              float not null,
    constraint zamowienia_przychodzace_ibfk_1
        foreign key (typ_zamowienia_id) references zadanie.typy_zamowien (typ_zamowienia_id),
    constraint zamowienia_przychodzace_ibfk_2
        foreign key (kurier_id) references zadanie.kurierzy (kurier_id),
    constraint zamowienia_przychodzace_ibfk_3
        foreign key (produkt_id) references zadanie.produkty (produkt_id),
    constraint zamowienia_przychodzace_ibfk_4
        foreign key (hurtownia_id) references zadanie.hurtownie (hurtownia_id)
);

create index hurtownia_id
    on zadanie.zamowienia_przychodzace (hurtownia_id);

create index kurier_id
    on zadanie.zamowienia_przychodzace (kurier_id);

create index produkt_id
    on zadanie.zamowienia_przychodzace (produkt_id);

create index typ_zamowienia_id
    on zadanie.zamowienia_przychodzace (typ_zamowienia_id);

