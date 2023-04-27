create table zadanie.pracownicy
(
    pracownik_id   int auto_increment
        primary key,
    imie           text not null,
    nazwisko       text not null,
    data_urodzenia date not null,
    stanowisko_id  int  not null,
    constraint pracownicy_ibfk_1
        foreign key (stanowisko_id) references zadanie.stanowiska (stanowisko_id)
);

create index stanowisko_id
    on zadanie.pracownicy (stanowisko_id);

