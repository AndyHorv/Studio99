toc.dat                                                                                             0000600 0004000 0002000 00000010465 13553266061 0014454 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        PGDMP                
        	    w           postgres    11.5    11.5     
           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false                    0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false                    0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false                    1262    13012    postgres    DATABASE     �   CREATE DATABASE postgres WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'French_France.1252' LC_CTYPE = 'French_France.1252';
    DROP DATABASE postgres;
             postgres    false                    0    0    DATABASE postgres    COMMENT     N   COMMENT ON DATABASE postgres IS 'default administrative connection database';
                  postgres    false    2829                     2615    16527    cinema    SCHEMA        CREATE SCHEMA cinema;
    DROP SCHEMA cinema;
             cinema    false         �            1259    16534    film    TABLE     �   CREATE TABLE cinema.film (
    idfilm bigint NOT NULL,
    titre character varying(45) NOT NULL,
    date integer,
    duree bigint,
    realisateur_idrealisateur bigint
);
    DROP TABLE cinema.film;
       cinema         postgres    false    6         �            1259    16537    realisateur    TABLE     �   CREATE TABLE cinema.realisateur (
    idrealisateur bigint NOT NULL,
    nom character varying(45) NOT NULL,
    prenom character varying(45)
);
    DROP TABLE cinema.realisateur;
       cinema         postgres    false    6         �            1259    16531    seance    TABLE     �   CREATE TABLE cinema.seance (
    id bigint NOT NULL,
    debut timestamp without time zone,
    fin timestamp without time zone,
    film_id integer
);
    DROP TABLE cinema.seance;
       cinema         postgres    false    6                   0    16534    film 
   TABLE DATA               U   COPY cinema.film (idfilm, titre, date, duree, realisateur_idrealisateur) FROM stdin;
    cinema       postgres    false    198       2822.dat           0    16537    realisateur 
   TABLE DATA               A   COPY cinema.realisateur (idrealisateur, nom, prenom) FROM stdin;
    cinema       postgres    false    199       2823.dat           0    16531    seance 
   TABLE DATA               9   COPY cinema.seance (id, debut, fin, film_id) FROM stdin;
    cinema       postgres    false    197       2821.dat �
           2606    16543    film film_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY cinema.film
    ADD CONSTRAINT film_pkey PRIMARY KEY (idfilm);
 8   ALTER TABLE ONLY cinema.film DROP CONSTRAINT film_pkey;
       cinema         postgres    false    198         �
           2606    16545    realisateur realisateur_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY cinema.realisateur
    ADD CONSTRAINT realisateur_pkey PRIMARY KEY (idrealisateur);
 F   ALTER TABLE ONLY cinema.realisateur DROP CONSTRAINT realisateur_pkey;
       cinema         postgres    false    199         �
           2606    16550    seance seance_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY cinema.seance
    ADD CONSTRAINT seance_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY cinema.seance DROP CONSTRAINT seance_pkey;
       cinema         postgres    false    197         �
           2606    16551 (   film film_realisateur_idrealisateur_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY cinema.film
    ADD CONSTRAINT film_realisateur_idrealisateur_fkey FOREIGN KEY (realisateur_idrealisateur) REFERENCES cinema.realisateur(idrealisateur);
 R   ALTER TABLE ONLY cinema.film DROP CONSTRAINT film_realisateur_idrealisateur_fkey;
       cinema       postgres    false    198    2697    199         �
           2606    16556    seance seance_film_id_fkey    FK CONSTRAINT     |   ALTER TABLE ONLY cinema.seance
    ADD CONSTRAINT seance_film_id_fkey FOREIGN KEY (film_id) REFERENCES cinema.film(idfilm);
 D   ALTER TABLE ONLY cinema.seance DROP CONSTRAINT seance_film_id_fkey;
       cinema       postgres    false    198    2695    197                                                                                                                                                                                                                   2822.dat                                                                                            0000600 0004000 0002000 00000000126 13553266061 0014255 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	Retour a Zombieland	2019	99	2
2	JoJo Rabbit	2019	108	3
3	Les Evades	1994	144	1
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                          2823.dat                                                                                            0000600 0004000 0002000 00000000070 13553266061 0014254 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	Darabont	Frank
2	Fleischer	Ruben
3	Waititi	Taika
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                        2821.dat                                                                                            0000600 0004000 0002000 00000000374 13553266061 0014261 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	2019-10-29 17:10:00	2019-10-29 19:00:00	3
2	2019-10-29 15:40:00	2019-10-29 17:00:00	2
3	2019-10-29 14:30:00	2019-10-29 15:20:00	1
4	2019-10-29 09:00:00	2019-10-29 10:00:00	1
5	2019-10-29 08:30:00	2019-10-29 09:00:00	2
6	2019-10-29 06:00:00	\N	1
\.


                                                                                                                                                                                                                                                                    restore.sql                                                                                         0000600 0004000 0002000 00000010161 13553266061 0015372 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        --
-- NOTE:
--
-- File paths need to be edited. Search for $$PATH$$ and
-- replace it with the path to the directory containing
-- the extracted data files.
--
--
-- PostgreSQL database dump
--

-- Dumped from database version 11.5
-- Dumped by pg_dump version 11.5

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

DROP DATABASE postgres;
--
-- Name: postgres; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE postgres WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'French_France.1252' LC_CTYPE = 'French_France.1252';


ALTER DATABASE postgres OWNER TO postgres;

\connect postgres

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
-- Name: DATABASE postgres; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON DATABASE postgres IS 'default administrative connection database';


--
-- Name: cinema; Type: SCHEMA; Schema: -; Owner: cinema
--

CREATE SCHEMA cinema;


ALTER SCHEMA cinema OWNER TO cinema;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: film; Type: TABLE; Schema: cinema; Owner: postgres
--

CREATE TABLE cinema.film (
    idfilm bigint NOT NULL,
    titre character varying(45) NOT NULL,
    date integer,
    duree bigint,
    realisateur_idrealisateur bigint
);


ALTER TABLE cinema.film OWNER TO postgres;

--
-- Name: realisateur; Type: TABLE; Schema: cinema; Owner: postgres
--

CREATE TABLE cinema.realisateur (
    idrealisateur bigint NOT NULL,
    nom character varying(45) NOT NULL,
    prenom character varying(45)
);


ALTER TABLE cinema.realisateur OWNER TO postgres;

--
-- Name: seance; Type: TABLE; Schema: cinema; Owner: postgres
--

CREATE TABLE cinema.seance (
    id bigint NOT NULL,
    debut timestamp without time zone,
    fin timestamp without time zone,
    film_id integer
);


ALTER TABLE cinema.seance OWNER TO postgres;

--
-- Data for Name: film; Type: TABLE DATA; Schema: cinema; Owner: postgres
--

COPY cinema.film (idfilm, titre, date, duree, realisateur_idrealisateur) FROM stdin;
\.
COPY cinema.film (idfilm, titre, date, duree, realisateur_idrealisateur) FROM '$$PATH$$/2822.dat';

--
-- Data for Name: realisateur; Type: TABLE DATA; Schema: cinema; Owner: postgres
--

COPY cinema.realisateur (idrealisateur, nom, prenom) FROM stdin;
\.
COPY cinema.realisateur (idrealisateur, nom, prenom) FROM '$$PATH$$/2823.dat';

--
-- Data for Name: seance; Type: TABLE DATA; Schema: cinema; Owner: postgres
--

COPY cinema.seance (id, debut, fin, film_id) FROM stdin;
\.
COPY cinema.seance (id, debut, fin, film_id) FROM '$$PATH$$/2821.dat';

--
-- Name: film film_pkey; Type: CONSTRAINT; Schema: cinema; Owner: postgres
--

ALTER TABLE ONLY cinema.film
    ADD CONSTRAINT film_pkey PRIMARY KEY (idfilm);


--
-- Name: realisateur realisateur_pkey; Type: CONSTRAINT; Schema: cinema; Owner: postgres
--

ALTER TABLE ONLY cinema.realisateur
    ADD CONSTRAINT realisateur_pkey PRIMARY KEY (idrealisateur);


--
-- Name: seance seance_pkey; Type: CONSTRAINT; Schema: cinema; Owner: postgres
--

ALTER TABLE ONLY cinema.seance
    ADD CONSTRAINT seance_pkey PRIMARY KEY (id);


--
-- Name: film film_realisateur_idrealisateur_fkey; Type: FK CONSTRAINT; Schema: cinema; Owner: postgres
--

ALTER TABLE ONLY cinema.film
    ADD CONSTRAINT film_realisateur_idrealisateur_fkey FOREIGN KEY (realisateur_idrealisateur) REFERENCES cinema.realisateur(idrealisateur);


--
-- Name: seance seance_film_id_fkey; Type: FK CONSTRAINT; Schema: cinema; Owner: postgres
--

ALTER TABLE ONLY cinema.seance
    ADD CONSTRAINT seance_film_id_fkey FOREIGN KEY (film_id) REFERENCES cinema.film(idfilm);


--
-- PostgreSQL database dump complete
--

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               