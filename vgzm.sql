--
-- PostgreSQL database dump
--

-- Dumped from database version 15.2
-- Dumped by pg_dump version 15.2

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: line813; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.line813 (
    bus_stop_id integer NOT NULL,
    stop_name text,
    stop_time text,
    trip_index_id integer NOT NULL,
    line_number_id integer NOT NULL
);


ALTER TABLE public.line813 OWNER TO postgres;

--
-- Name: firstview; Type: VIEW; Schema: public; Owner: postgres
--

CREATE VIEW public.firstview AS
 SELECT line813.bus_stop_id,
    line813.stop_name,
    line813.stop_time,
    line813.trip_index_id,
    line813.line_number_id
   FROM public.line813;


ALTER TABLE public.firstview OWNER TO postgres;

--
-- Name: line813_l813_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.line813_l813_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.line813_l813_id_seq OWNER TO postgres;

--
-- Name: line813_l813_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.line813_l813_id_seq OWNED BY public.line813.bus_stop_id;


--
-- Name: line813trip101; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.line813trip101 (
    id integer NOT NULL,
    stop_name text,
    stop_time text,
    trips_id integer
);


ALTER TABLE public.line813trip101 OWNER TO postgres;

--
-- Name: line813trip101_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.line813trip101_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.line813trip101_id_seq OWNER TO postgres;

--
-- Name: line813trip101_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.line813trip101_id_seq OWNED BY public.line813trip101.id;


--
-- Name: line813trip102; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.line813trip102 (
    id integer NOT NULL,
    stop_name text,
    stop_time text
);


ALTER TABLE public.line813trip102 OWNER TO postgres;

--
-- Name: line813trip102route1_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.line813trip102route1_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.line813trip102route1_id_seq OWNER TO postgres;

--
-- Name: line813trip102route1_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.line813trip102route1_id_seq OWNED BY public.line813trip102.id;


--
-- Name: line813trip103; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.line813trip103 (
    id integer NOT NULL,
    stop_name text,
    stop_time text
);


ALTER TABLE public.line813trip103 OWNER TO postgres;

--
-- Name: line813trip103route1_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.line813trip103route1_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.line813trip103route1_id_seq OWNER TO postgres;

--
-- Name: line813trip103route1_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.line813trip103route1_id_seq OWNED BY public.line813trip103.id;


--
-- Name: line813trip104; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.line813trip104 (
    id integer NOT NULL,
    stop_name text,
    stop_time text
);


ALTER TABLE public.line813trip104 OWNER TO postgres;

--
-- Name: line813trip104route1_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.line813trip104route1_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.line813trip104route1_id_seq OWNER TO postgres;

--
-- Name: line813trip104route1_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.line813trip104route1_id_seq OWNED BY public.line813trip104.id;


--
-- Name: line813trip105; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.line813trip105 (
    id integer NOT NULL,
    stop_name text,
    stop_time text
);


ALTER TABLE public.line813trip105 OWNER TO postgres;

--
-- Name: line813trip105route1_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.line813trip105route1_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.line813trip105route1_id_seq OWNER TO postgres;

--
-- Name: line813trip105route1_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.line813trip105route1_id_seq OWNED BY public.line813trip105.id;


--
-- Name: line813trip106; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.line813trip106 (
    id integer NOT NULL,
    stop_name text,
    stop_time text
);


ALTER TABLE public.line813trip106 OWNER TO postgres;

--
-- Name: line813trip106_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.line813trip106_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.line813trip106_id_seq OWNER TO postgres;

--
-- Name: line813trip106_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.line813trip106_id_seq OWNED BY public.line813trip106.id;


--
-- Name: lines; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.lines (
    line_number_id integer NOT NULL,
    line_number text
);


ALTER TABLE public.lines OWNER TO postgres;

--
-- Name: trips; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.trips (
    trip_index_id integer NOT NULL,
    trip_index integer
);


ALTER TABLE public.trips OWNER TO postgres;

--
-- Name: line813 bus_stop_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.line813 ALTER COLUMN bus_stop_id SET DEFAULT nextval('public.line813_l813_id_seq'::regclass);


--
-- Name: line813trip101 id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.line813trip101 ALTER COLUMN id SET DEFAULT nextval('public.line813trip101_id_seq'::regclass);


--
-- Name: line813trip102 id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.line813trip102 ALTER COLUMN id SET DEFAULT nextval('public.line813trip102route1_id_seq'::regclass);


--
-- Name: line813trip103 id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.line813trip103 ALTER COLUMN id SET DEFAULT nextval('public.line813trip103route1_id_seq'::regclass);


--
-- Name: line813trip104 id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.line813trip104 ALTER COLUMN id SET DEFAULT nextval('public.line813trip104route1_id_seq'::regclass);


--
-- Name: line813trip105 id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.line813trip105 ALTER COLUMN id SET DEFAULT nextval('public.line813trip105route1_id_seq'::regclass);


--
-- Name: line813trip106 id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.line813trip106 ALTER COLUMN id SET DEFAULT nextval('public.line813trip106_id_seq'::regclass);


--
-- Data for Name: line813; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.line813 (bus_stop_id, stop_name, stop_time, trip_index_id, line_number_id) FROM stdin;
2	Sosnowiec Dworzec PKP	05:11:	101	12
3	Pogon Kosciol	05:16:	101	12
4	Pogon Akademiki	05:18:	101	12
5	Bedzin Cmentarz Komunalny	05:20:	101	12
6	Bedzin Stadion	05:23:	101	12
7	Osiedle Syberka Pilsudskiego	05:26:	101	12
8	Osiedle Syberka Kosciol	05:28:	101	12
9	Osiedle Syberka Pawilony	05:29:	101	12
10	Osiedle Syberka Osrodek Zdrowia	05:30:	101	12
11	Bedzin Zamek	05:32:	101	12
12	Bedzin Stadion	05:34:	101	12
13	Bedzin Cmentarz Komunalny STREFA	05:38:	101	12
14	Pogon Akademiki	05:40:	101	12
15	Pogon Klub Kiepury	05:42:	101	12
16	Sosnowiec Dworzec PKP	05:47:	101	12
17	Sosnowiec Sobieskiego	05:48:	101	12
18	Sosnowiec Osiedle Piastow	05:50:	101	12
19	Sosnowiec Egzotarium	05:51:	101	12
20	Dabrowka Mala Skrzyzowanie	05:56:	101	12
21	Dabrowka Mala Centrum Handlowe	05:58:	101	12
22	Dabrowka Mala Pawilon Agata	05:59:	101	12
23	Katowice Strefa Kultury	06:02:	101	12
24	Katowice Strefa Kultury NOSPR	06:04:	101	12
25	Katowice Aleja Korfantego	06:06:	101	12
26	Katowice Piotra Skargi	06:07:	101	12
27	Katowice Piotra Skargi	06:17:	102	12
28	Katowice Strefa Kultury	06:23:	102	12
29	Dabrowka Mala Centrum Handlowe	06:26:	102	12
30	Dabrowka Mala Skrzyzowanie	06:28:	102	12
31	Sosnowiec Egzotarium	06:33:	102	12
32	Sosnowiec Osiedle Piastow	06:34:	102	12
33	Sosnowiec Sobieskiego	06:36:	102	12
34	Sosnowiec Dworzec PKP	06:37:	102	12
35	Pogon Kosciol	06:42:	102	12
36	Pogon Akademiki	06:44:	102	12
37	Bedzin Cmentarz Komunalny	06:46:	102	12
38	Bedzin Stadion	06:49:	102	12
39	Osiedle Syberka Pilsudskiego	06:52:	102	12
40	Osiedle Syberka Kosciol	06:54:	102	12
41	Osiedle Syberka Pawilony	06:55:	102	12
42	Osiedle Syberka Osrodek Zdrowia	06:56:	102	12
43	Bedzin Zamek	06:58:	102	12
44	Bedzin Stadion	07:00:	102	12
45	Bedzin Cmentarz Komunalny STREFA	07:04:	102	12
46	Pogon Akademiki	07:06:	102	12
47	Pogon Klub Kiepury	07:08:	102	12
48	Sosnowiec Dworzec PKP	07:13:	102	12
49	Sosnowiec Sobieskiego	07:14:	102	12
50	Sosnowiec Osiedle Piastow	07:16:	102	12
51	Sosnowiec Egzotarium	07:17:	102	12
52	Dabrowka Mala Skrzyzowanie	07:22:	102	12
53	Dabrowka Mala Centrum Handlowe	07:24:	102	12
54	Dabrowka Mala Pawilon Agata	07:25:	102	12
55	Katowice Strefa Kultury	07:28:	102	12
56	Katowice Strefa Kultury NOSPR	07:30:	102	12
57	Katowice Aleja Korfantego	07:32:	102	12
58	Katowice Piotra Skargi	07:33:	102	12
\.


--
-- Data for Name: line813trip101; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.line813trip101 (id, stop_name, stop_time, trips_id) FROM stdin;
11	Bedzin Stadion	05:34:	1
7	Osiedle Syberka Kosciol	05:28:	1
3	Pogon Akademiki	05:18:	1
15	Sosnowiec Dworzec PKP	05:47:	1
20	Dabrowka Mala Centrum Handlowe	05:58:	1
23	Katowice Strefa Kultury NOSPR	06:04:	1
19	Dabrowka Mala Skrzyzowanie	05:56:	1
16	Sosnowiec Sobieskiego	05:48:	1
25	Katowice Piotra Skargi	06:07:	1
24	Katowice Aleja Korfantego	06:06:	1
5	Bedzin Stadion	05:23:	1
9	Osiedle Syberka Osrodek Zdrowia	05:30:	1
13	Pogon Akademiki	05:40:	1
1	Sosnowiec Dworzec PKP	05:11:	1
21	Dabrowka Mala Pawilon Agata	05:59:	1
22	Katowice Strefa Kultury	06:02:	1
18	Sosnowiec Egzotarium	05:51:	1
17	Sosnowiec Osiedle Piastow	05:50:	1
4	Bedzin Cmentarz Komunalny	05:20:	1
10	Bedzin Zamek	05:32:	1
6	Osiedle Syberka Pilsudskiego	05:26:	1
2	Pogon Kosciol	05:16:	1
8	Osiedle Syberka Pawilony	05:29:	1
12	Bedzin Cmentarz Komunalny STREFA	05:38:	1
14	Pogon Klub Kiepury	05:42:	1
26	Katowice Piotra Skargi	06:17:00	2
27	Katowice Strefa Kultury	06:23:00	2
28	Dabrowka Mala Centrum Handlowe	06:26:00	2
29	Dabrowka Mala Skrzyzowanie	06:28:00	2
30	Sosnowiec Egzotarium	06:33:00	2
31	Sosnowiec Osiedle Piastow	06:34:00	2
32	Sosnowiec Sobieskiego	06:36:00	2
33	Sosnowiec Dworzec PKP	06:37:00	2
34	Pogon Kosciol	06:42:00	2
35	Pogon Akademiki	06:44:00	2
36	Bedzin Cmentarz Komunalny	06:46:00	2
37	Bedzin Stadion	06:49:00	2
38	Osiedle Syberka Pilsudskiego	06:52:00	2
39	Osiedle Syberka Kosciol	06:54:00	2
40	Osiedle Syberka Pawilony	06:55:00	2
41	Osiedle Syberka Osrodek Zdrowia	06:56:00	2
42	Bedzin Zamek	06:58:00	2
43	Bedzin Stadion	07:00:00	2
44	Bedzin Cmentarz Komunalny STREFA	07:04:00	2
45	Pogon Akademiki	07:06:00	2
46	Pogon Klub Kiepury	07:08:00	2
47	Sosnowiec Dworzec PKP	07:13:00	2
48	Sosnowiec Sobieskiego	07:14:00	2
49	Sosnowiec Osiedle Piastow	07:16:00	2
50	Sosnowiec Egzotarium	07:17:00	2
51	Dabrowka Mala Skrzyzowanie	07:22:00	2
52	Dabrowka Mala Centrum Handlowe	07:24:00	2
53	Dabrowka Mala Pawilon Agata	07:25:00	2
54	Katowice Strefa Kultury	07:28:00	2
55	Katowice Strefa Kultury NOSPR	07:30:00	2
56	Katowice Aleja Korfantego	07:32:00	2
57	Katowice Piotra Skargi	07:33:00	2
\.


--
-- Data for Name: line813trip102; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.line813trip102 (id, stop_name, stop_time) FROM stdin;
1	Katowice Piotra Skargi	06:17:00
2	Katowice Strefa Kultury	06:23:00
3	Dabrowka Mala Centrum Handlowe	06:26:00
4	Dabrowka Mala Skrzyzowanie	06:28:00
5	Sosnowiec Egzotarium	06:33:00
6	Sosnowiec Osiedle Piastow	06:34:00
7	Sosnowiec Sobieskiego	06:36:00
8	Sosnowiec Dworzec PKP	06:37:00
9	Pogon Kosciol	06:42:00
10	Pogon Akademiki	06:44:00
11	Bedzin Cmentarz Komunalny	06:46:00
12	Bedzin Stadion	06:49:00
13	Osiedle Syberka Pilsudskiego	06:52:00
14	Osiedle Syberka Kosciol	06:54:00
15	Osiedle Syberka Pawilony	06:55:00
16	Osiedle Syberka Osrodek Zdrowia	06:56:00
17	Bedzin Zamek	06:58:00
18	Bedzin Stadion	07:00:00
19	Bedzin Cmentarz Komunalny STREFA	07:04:00
20	Pogon Akademiki	07:06:00
21	Pogon Klub Kiepury	07:08:00
22	Sosnowiec Dworzec PKP	07:13:00
23	Sosnowiec Sobieskiego	07:14:00
24	Sosnowiec Osiedle Piastow	07:16:00
25	Sosnowiec Egzotarium	07:17:00
26	Dabrowka Mala Skrzyzowanie	07:22:00
27	Dabrowka Mala Centrum Handlowe	07:24:00
28	Dabrowka Mala Pawilon Agata	07:25:00
29	Katowice Strefa Kultury	07:28:00
30	Katowice Strefa Kultury NOSPR	07:30:00
31	Katowice Aleja Korfantego	07:32:00
32	Katowice Piotra Skargi	07:33:00
\.


--
-- Data for Name: line813trip103; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.line813trip103 (id, stop_name, stop_time) FROM stdin;
4	Dabrowka Mala Skrzyzowanie	07:58:00
7	Sosnowiec Sobieskiego	08:06:00
5	Sosnowiec Egzotarium	08:03:00
8	Sosnowiec Dworzec PKP	08:07:00
1	Katowice Piotra Skargi	07:47:00
3	Dabrowka Mala Centrum Handlowe	07:56:00
6	Sosnowiec Osiedle Piastow	08:04:00
2	Katowice Strefa Kultury	07:53:00
\.


--
-- Data for Name: line813trip104; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.line813trip104 (id, stop_name, stop_time) FROM stdin;
1	Osiedle Syberka Kosciol	13:24:00
2	Osiedle Syberka Pawilony	13:25:00
3	Osiedle Syberka Osrodek Zdrowia	13:26:00
4	Bedzin Zamek	13:28:00
5	Bedzin Stadion	13:30:00
6	Bedzin Cmentarz Komunalny STREFA	13:34:00
7	Pogon Akademiki	13:36:00
8	Pogon Klub Kiepury	13:38:00
9	Sosnowiec Dworzec PKP	13:43:00
10	Sosnowiec Sobieskiego	13:44:00
11	Sosnowiec Osiedle Piastow	13:46:00
12	Sosnowiec Egzotarium	13:47:00
13	Dabrowka Mala Skrzyzowanie	13:52:00
14	Dabrowka Mala Centrum Handlowe	13:54:00
15	Dabrowka Mala Pawilon Agata	13:55:00
16	Katowice Strefa Kultury	13:58:00
17	Katowice Strefa Kultury NOSPR	14:00:00
18	Katowice Aleja Korfantego	14:02:00
19	Katowice Piotra Skargi	14:03:00
\.


--
-- Data for Name: line813trip105; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.line813trip105 (id, stop_name, stop_time) FROM stdin;
1	Katowice Piotra Skargi	14:17:00
2	Katowice Strefa Kultury	14:23:00
3	Dabrowka Mala Centrum Handlowe	14:26:00
4	Dabrowka Mala Skrzyzowanie	14:28:00
5	Sosnowiec Egzotarium	14:33:00
6	Sosnowiec Osiedle Piastow	14:34:00
7	Sosnowiec Sobieskiego	14:36:00
8	Sosnowiec Dworzec PKP	14:37:00
9	Pogon Kosciol	14:42:00
10	Pogon Akademiki	14:44:00
11	Bedzin Cmentarz Komunalny	14:46:00
12	Bedzin Stadion	14:49:00
13	Osiedle Syberka Pilsudskiego	14:52:00
14	Osiedle Syberka Kosciol	14:54:00
15	Osiedle Syberka Pawilony	14:55:00
16	Osiedle Syberka Osrodek Zdrowia	14:56:00
17	Bedzin Zamek	14:58:00
18	Bedzin Stadion	15:00:00
19	Bedzin Cmentarz Komunalny STREFA	15:04:00
20	Pogon Akademiki	15:06:00
21	Pogon Klub Kiepury	15:08:00
22	Sosnowiec Dworzec PKP	15:13:00
23	Sosnowiec Sobieskiego	15:14:00
24	Sosnowiec Osiedle Piastow	15:16:00
25	Sosnowiec Egzotarium	15:17:00
26	Dabrowka Mala Skrzyzowanie	15:22:00
27	Dabrowka Mala Centrum Handlowe	15:24:00
28	Dabrowka Mala Pawilon Agata	15:25:00
29	Katowice Strefa Kultury	15:28:00
30	Katowice Strefa Kultury NOSPR	15:30:00
31	Katowice Aleja Korfantego	15:32:00
32	Katowice Piotra Skargi	15:33:00
\.


--
-- Data for Name: line813trip106; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.line813trip106 (id, stop_name, stop_time) FROM stdin;
1	Katowice Piotra Skargi	15:47:00
2	Katowice Strefa Kultury	15:54:00
3	Dabrowka Mala Centrum Handlowe	15:57:00
4	Dabrowka Mala Skrzyzowanie	15:59:00
5	Sosnowiec Egzotarium	16:04:00
6	Sosnowiec Osiedle Piastow	16:05:00
7	Sosnowiec Sobieskiego	16:07:00
8	Sosnowiec Dworzec PKP	16:08:00
9	Pogon Kosciol	16:13:00
10	Pogon Akademiki	16:15:00
11	Bedzin Cmentarz Komunalny	16:17:00
\.


--
-- Data for Name: lines; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.lines (line_number_id, line_number) FROM stdin;
1	40
2	90
3	182
4	237
5	275
6	299
7	616
8	638
9	800
10	807
11	808
12	813
13	814
14	817
15	902N
16	M2
17	M4
18	T-21
\.


--
-- Data for Name: trips; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.trips (trip_index_id, trip_index) FROM stdin;
101	101
102	102
103	103
104	104
105	105
106	106
\.


--
-- Name: line813_l813_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.line813_l813_id_seq', 58, true);


--
-- Name: line813trip101_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.line813trip101_id_seq', 57, true);


--
-- Name: line813trip102route1_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.line813trip102route1_id_seq', 32, true);


--
-- Name: line813trip103route1_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.line813trip103route1_id_seq', 8, true);


--
-- Name: line813trip104route1_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.line813trip104route1_id_seq', 19, true);


--
-- Name: line813trip105route1_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.line813trip105route1_id_seq', 32, true);


--
-- Name: line813trip106_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.line813trip106_id_seq', 11, true);


--
-- Name: line813 line813_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.line813
    ADD CONSTRAINT line813_pkey PRIMARY KEY (bus_stop_id);


--
-- Name: line813trip101 line813trip101_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.line813trip101
    ADD CONSTRAINT line813trip101_pkey PRIMARY KEY (id);


--
-- Name: line813trip102 line813trip102route1_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.line813trip102
    ADD CONSTRAINT line813trip102route1_pkey PRIMARY KEY (id);


--
-- Name: line813trip103 line813trip103route1_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.line813trip103
    ADD CONSTRAINT line813trip103route1_pkey PRIMARY KEY (id);


--
-- Name: line813trip104 line813trip104route1_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.line813trip104
    ADD CONSTRAINT line813trip104route1_pkey PRIMARY KEY (id);


--
-- Name: line813trip105 line813trip105route1_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.line813trip105
    ADD CONSTRAINT line813trip105route1_pkey PRIMARY KEY (id);


--
-- Name: line813trip106 line813trip106_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.line813trip106
    ADD CONSTRAINT line813trip106_pkey PRIMARY KEY (id);


--
-- Name: lines lines_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.lines
    ADD CONSTRAINT lines_pkey PRIMARY KEY (line_number_id);


--
-- Name: trips trips_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.trips
    ADD CONSTRAINT trips_pkey PRIMARY KEY (trip_index_id);


--
-- Name: line813 line_number_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.line813
    ADD CONSTRAINT line_number_id_fk FOREIGN KEY (line_number_id) REFERENCES public.lines(line_number_id);


--
-- Name: line813 trip_index_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.line813
    ADD CONSTRAINT trip_index_id_fk FOREIGN KEY (trip_index_id) REFERENCES public.trips(trip_index_id);


--
-- PostgreSQL database dump complete
--

