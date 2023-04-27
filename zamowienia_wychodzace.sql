create table zadanie.zamowienia_wychodzace
(
    zamowienie_id     int auto_increment
        primary key,
    typ_zamowienia_id int   not null,
    kurier_id         int   not null,
    produkt_id        int   not null,
    ilosc_produktu    int   not null,
    uzytkownik_id     int   not null,
    cena              float not null,
    constraint zamowienia_wychodzace_ibfk_1
        foreign key (typ_zamowienia_id) references zadanie.typy_zamowien (typ_zamowienia_id),
    constraint zamowienia_wychodzace_ibfk_2
        foreign key (kurier_id) references zadanie.kurierzy (kurier_id),
    constraint zamowienia_wychodzace_ibfk_3
        foreign key (produkt_id) references zadanie.produkty (produkt_id),
    constraint zamowienia_wychodzace_ibfk_4
        foreign key (uzytkownik_id) references zadanie.uzytkownicy (uzytkownik_id)
);

create index kurier_id
    on zadanie.zamowienia_wychodzace (kurier_id);

create index produkt_id
    on zadanie.zamowienia_wychodzace (produkt_id);

create index typ_zamowienia_id
    on zadanie.zamowienia_wychodzace (typ_zamowienia_id);

create index uzytkownik_id
    on zadanie.zamowienia_wychodzace (uzytkownik_id);

