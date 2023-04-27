create table zadanie.uzytkownicy
(
    uzytkownik_id       int auto_increment
        primary key,
    nazwa_uzytkownika   text not null,
    data_urodzenia      date not null,
    adres_uzytkownika   text null,
    telefon_uzytkownika int  null,
    typ_konta_id        int  null,
    haslo               int  not null,
    imie                text not null,
    nazwisko            text not null,
    constraint uzytkownicy_ibfk_1
        foreign key (typ_konta_id) references zadanie.typy_kont (typ_konta_id)
);

create index typ_konta_id
    on zadanie.uzytkownicy (typ_konta_id);

