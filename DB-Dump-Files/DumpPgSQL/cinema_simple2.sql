--
-- PostgreSQL database dump
--

-- Dumped from database version 11.5
-- Dumped by pg_dump version 11.5

-- Started on 2019-10-18 09:34:58

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

--
-- TOC entry 7 (class 2615 OID 16446)
-- Name: Cinema; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA "Cinema";


ALTER SCHEMA "Cinema" OWNER TO postgres;

--
-- TOC entry 1 (class 3079 OID 16384)
-- Name: adminpack; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS adminpack WITH SCHEMA pg_catalog;


--
-- TOC entry 2833 (class 0 OID 0)
-- Dependencies: 1
-- Name: EXTENSION adminpack; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION adminpack IS 'administrative functions for PostgreSQL';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 200 (class 1259 OID 16457)
-- Name: film; Type: TABLE; Schema: Cinema; Owner: postgres
--

CREATE TABLE "Cinema".film (
    id integer NOT NULL,
    titre character varying(168) NOT NULL,
    duree integer
);


ALTER TABLE "Cinema".film OWNER TO postgres;

--
-- TOC entry 199 (class 1259 OID 16455)
-- Name: film_id_seq; Type: SEQUENCE; Schema: Cinema; Owner: postgres
--

CREATE SEQUENCE "Cinema".film_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "Cinema".film_id_seq OWNER TO postgres;

--
-- TOC entry 2834 (class 0 OID 0)
-- Dependencies: 199
-- Name: film_id_seq; Type: SEQUENCE OWNED BY; Schema: Cinema; Owner: postgres
--

ALTER SEQUENCE "Cinema".film_id_seq OWNED BY "Cinema".film.id;


--
-- TOC entry 198 (class 1259 OID 16449)
-- Name: seance; Type: TABLE; Schema: Cinema; Owner: postgres
--

CREATE TABLE "Cinema".seance (
    id integer NOT NULL,
    debut timestamp without time zone NOT NULL,
    fin timestamp without time zone,
    film_id integer
);


ALTER TABLE "Cinema".seance OWNER TO postgres;

--
-- TOC entry 201 (class 1259 OID 16463)
-- Name: seance_fim_id_seq; Type: SEQUENCE; Schema: Cinema; Owner: postgres
--

CREATE SEQUENCE "Cinema".seance_fim_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "Cinema".seance_fim_id_seq OWNER TO postgres;

--
-- TOC entry 2835 (class 0 OID 0)
-- Dependencies: 201
-- Name: seance_fim_id_seq; Type: SEQUENCE OWNED BY; Schema: Cinema; Owner: postgres
--

ALTER SEQUENCE "Cinema".seance_fim_id_seq OWNED BY "Cinema".seance.film_id;


--
-- TOC entry 197 (class 1259 OID 16447)
-- Name: seance_id_seq; Type: SEQUENCE; Schema: Cinema; Owner: postgres
--

CREATE SEQUENCE "Cinema".seance_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "Cinema".seance_id_seq OWNER TO postgres;

--
-- TOC entry 2836 (class 0 OID 0)
-- Dependencies: 197
-- Name: seance_id_seq; Type: SEQUENCE OWNED BY; Schema: Cinema; Owner: postgres
--

ALTER SEQUENCE "Cinema".seance_id_seq OWNED BY "Cinema".seance.id;


--
-- TOC entry 2696 (class 2604 OID 16460)
-- Name: film id; Type: DEFAULT; Schema: Cinema; Owner: postgres
--

ALTER TABLE ONLY "Cinema".film ALTER COLUMN id SET DEFAULT nextval('"Cinema".film_id_seq'::regclass);


--
-- TOC entry 2694 (class 2604 OID 16452)
-- Name: seance id; Type: DEFAULT; Schema: Cinema; Owner: postgres
--

ALTER TABLE ONLY "Cinema".seance ALTER COLUMN id SET DEFAULT nextval('"Cinema".seance_id_seq'::regclass);


--
-- TOC entry 2695 (class 2604 OID 16465)
-- Name: seance film_id; Type: DEFAULT; Schema: Cinema; Owner: postgres
--

ALTER TABLE ONLY "Cinema".seance ALTER COLUMN film_id SET DEFAULT nextval('"Cinema".seance_fim_id_seq'::regclass);


--
-- TOC entry 2826 (class 0 OID 16457)
-- Dependencies: 200
-- Data for Name: film; Type: TABLE DATA; Schema: Cinema; Owner: postgres
--

COPY "Cinema".film (id, titre, duree) FROM stdin;
1	The Lighthouse	109
2	Greener Grass	95
3	Joker	122
\.


--
-- TOC entry 2824 (class 0 OID 16449)
-- Dependencies: 198
-- Data for Name: seance; Type: TABLE DATA; Schema: Cinema; Owner: postgres
--

COPY "Cinema".seance (id, debut, fin, film_id) FROM stdin;
1	2019-10-29 17:10:00	2019-10-29 19:00:00	3
2	2019-10-29 15:40:00	2019-10-29 17:00:00	2
3	2019-10-29 14:30:00	2019-10-29 15:20:00	1
4	2019-10-29 09:00:00	2019-10-29 10:00:00	1
5	2019-10-29 08:30:00	2019-10-29 09:00:00	2
6	2019-10-29 06:00:00	\N	1
\.


--
-- TOC entry 2837 (class 0 OID 0)
-- Dependencies: 199
-- Name: film_id_seq; Type: SEQUENCE SET; Schema: Cinema; Owner: postgres
--

SELECT pg_catalog.setval('"Cinema".film_id_seq', 3, true);


--
-- TOC entry 2838 (class 0 OID 0)
-- Dependencies: 201
-- Name: seance_fim_id_seq; Type: SEQUENCE SET; Schema: Cinema; Owner: postgres
--

SELECT pg_catalog.setval('"Cinema".seance_fim_id_seq', 1, false);


--
-- TOC entry 2839 (class 0 OID 0)
-- Dependencies: 197
-- Name: seance_id_seq; Type: SEQUENCE SET; Schema: Cinema; Owner: postgres
--

SELECT pg_catalog.setval('"Cinema".seance_id_seq', 6, true);


--
-- TOC entry 2700 (class 2606 OID 16462)
-- Name: film film_pkey; Type: CONSTRAINT; Schema: Cinema; Owner: postgres
--

ALTER TABLE ONLY "Cinema".film
    ADD CONSTRAINT film_pkey PRIMARY KEY (id);


--
-- TOC entry 2698 (class 2606 OID 16454)
-- Name: seance seance_pkey; Type: CONSTRAINT; Schema: Cinema; Owner: postgres
--

ALTER TABLE ONLY "Cinema".seance
    ADD CONSTRAINT seance_pkey PRIMARY KEY (id);


--
-- TOC entry 2701 (class 2606 OID 16470)
-- Name: seance film_id_fk; Type: FK CONSTRAINT; Schema: Cinema; Owner: postgres
--

ALTER TABLE ONLY "Cinema".seance
    ADD CONSTRAINT film_id_fk FOREIGN KEY (film_id) REFERENCES "Cinema".film(id);


-- Completed on 2019-10-18 09:34:59

--
-- PostgreSQL database dump complete
--

