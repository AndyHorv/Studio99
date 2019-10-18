toc.dat                                                                                             0000600 0004000 0002000 00000014450 13552266243 0014453 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        PGDMP           )    	        	    w           postgres    11.5    11.5                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false                    0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false                    0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false                    1262    13012    postgres    DATABASE     �   CREATE DATABASE postgres WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'French_France.1252' LC_CTYPE = 'French_France.1252';
    DROP DATABASE postgres;
             postgres    false                    0    0    DATABASE postgres    COMMENT     N   COMMENT ON DATABASE postgres IS 'default administrative connection database';
                  postgres    false    2833                     2615    16446    Cinema    SCHEMA        CREATE SCHEMA "Cinema";
    DROP SCHEMA "Cinema";
             postgres    false                     3079    16384 	   adminpack 	   EXTENSION     A   CREATE EXTENSION IF NOT EXISTS adminpack WITH SCHEMA pg_catalog;
    DROP EXTENSION adminpack;
                  false                    0    0    EXTENSION adminpack    COMMENT     M   COMMENT ON EXTENSION adminpack IS 'administrative functions for PostgreSQL';
                       false    1         �            1259    16457    film    TABLE     v   CREATE TABLE "Cinema".film (
    id integer NOT NULL,
    titre character varying(168) NOT NULL,
    duree integer
);
    DROP TABLE "Cinema".film;
       Cinema         postgres    false    7         �            1259    16455    film_id_seq    SEQUENCE     �   CREATE SEQUENCE "Cinema".film_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE "Cinema".film_id_seq;
       Cinema       postgres    false    200    7                    0    0    film_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE "Cinema".film_id_seq OWNED BY "Cinema".film.id;
            Cinema       postgres    false    199         �            1259    16449    seance    TABLE     �   CREATE TABLE "Cinema".seance (
    id integer NOT NULL,
    debut timestamp without time zone NOT NULL,
    fin timestamp without time zone,
    film_id integer
);
    DROP TABLE "Cinema".seance;
       Cinema         postgres    false    7         �            1259    16463    seance_fim_id_seq    SEQUENCE     �   CREATE SEQUENCE "Cinema".seance_fim_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE "Cinema".seance_fim_id_seq;
       Cinema       postgres    false    7    198                    0    0    seance_fim_id_seq    SEQUENCE OWNED BY     L   ALTER SEQUENCE "Cinema".seance_fim_id_seq OWNED BY "Cinema".seance.film_id;
            Cinema       postgres    false    201         �            1259    16447    seance_id_seq    SEQUENCE     �   CREATE SEQUENCE "Cinema".seance_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE "Cinema".seance_id_seq;
       Cinema       postgres    false    7    198                    0    0    seance_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE "Cinema".seance_id_seq OWNED BY "Cinema".seance.id;
            Cinema       postgres    false    197         �
           2604    16460    film id    DEFAULT     f   ALTER TABLE ONLY "Cinema".film ALTER COLUMN id SET DEFAULT nextval('"Cinema".film_id_seq'::regclass);
 8   ALTER TABLE "Cinema".film ALTER COLUMN id DROP DEFAULT;
       Cinema       postgres    false    199    200    200         �
           2604    16452 	   seance id    DEFAULT     j   ALTER TABLE ONLY "Cinema".seance ALTER COLUMN id SET DEFAULT nextval('"Cinema".seance_id_seq'::regclass);
 :   ALTER TABLE "Cinema".seance ALTER COLUMN id DROP DEFAULT;
       Cinema       postgres    false    198    197    198         �
           2604    16465    seance film_id    DEFAULT     s   ALTER TABLE ONLY "Cinema".seance ALTER COLUMN film_id SET DEFAULT nextval('"Cinema".seance_fim_id_seq'::regclass);
 ?   ALTER TABLE "Cinema".seance ALTER COLUMN film_id DROP DEFAULT;
       Cinema       postgres    false    201    198         
          0    16457    film 
   TABLE DATA                     Cinema       postgres    false    200       2826.dat           0    16449    seance 
   TABLE DATA                     Cinema       postgres    false    198       2824.dat            0    0    film_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('"Cinema".film_id_seq', 3, true);
            Cinema       postgres    false    199                    0    0    seance_fim_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('"Cinema".seance_fim_id_seq', 1, false);
            Cinema       postgres    false    201                    0    0    seance_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('"Cinema".seance_id_seq', 6, true);
            Cinema       postgres    false    197         �
           2606    16462    film film_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY "Cinema".film
    ADD CONSTRAINT film_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY "Cinema".film DROP CONSTRAINT film_pkey;
       Cinema         postgres    false    200         �
           2606    16454    seance seance_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY "Cinema".seance
    ADD CONSTRAINT seance_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY "Cinema".seance DROP CONSTRAINT seance_pkey;
       Cinema         postgres    false    198         �
           2606    16470    seance film_id_fk    FK CONSTRAINT     s   ALTER TABLE ONLY "Cinema".seance
    ADD CONSTRAINT film_id_fk FOREIGN KEY (film_id) REFERENCES "Cinema".film(id);
 =   ALTER TABLE ONLY "Cinema".seance DROP CONSTRAINT film_id_fk;
       Cinema       postgres    false    2700    198    200                                                                                                                                                                                                                                2826.dat                                                                                            0000600 0004000 0002000 00000000347 13552266243 0014267 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        INSERT INTO "Cinema".film (id, titre, duree) VALUES (1, 'The Lighthouse', 109);
INSERT INTO "Cinema".film (id, titre, duree) VALUES (2, 'Greener Grass', 95);
INSERT INTO "Cinema".film (id, titre, duree) VALUES (3, 'Joker', 122);


                                                                                                                                                                                                                                                                                         2824.dat                                                                                            0000600 0004000 0002000 00000001243 13552266243 0014261 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        INSERT INTO "Cinema".seance (id, debut, fin, film_id) VALUES (1, '2019-10-29 17:10:00', '2019-10-29 19:00:00', 3);
INSERT INTO "Cinema".seance (id, debut, fin, film_id) VALUES (2, '2019-10-29 15:40:00', '2019-10-29 17:00:00', 2);
INSERT INTO "Cinema".seance (id, debut, fin, film_id) VALUES (3, '2019-10-29 14:30:00', '2019-10-29 15:20:00', 1);
INSERT INTO "Cinema".seance (id, debut, fin, film_id) VALUES (4, '2019-10-29 09:00:00', '2019-10-29 10:00:00', 1);
INSERT INTO "Cinema".seance (id, debut, fin, film_id) VALUES (5, '2019-10-29 08:30:00', '2019-10-29 09:00:00', 2);
INSERT INTO "Cinema".seance (id, debut, fin, film_id) VALUES (6, '2019-10-29 06:00:00', NULL, 1);


                                                                                                                                                                                                                                                                                                                                                             restore.sql                                                                                         0000600 0004000 0002000 00000012534 13552266243 0015401 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        --
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
-- Name: Cinema; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA "Cinema";


ALTER SCHEMA "Cinema" OWNER TO postgres;

--
-- Name: adminpack; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS adminpack WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION adminpack; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION adminpack IS 'administrative functions for PostgreSQL';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: film; Type: TABLE; Schema: Cinema; Owner: postgres
--

CREATE TABLE "Cinema".film (
    id integer NOT NULL,
    titre character varying(168) NOT NULL,
    duree integer
);


ALTER TABLE "Cinema".film OWNER TO postgres;

--
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
-- Name: film_id_seq; Type: SEQUENCE OWNED BY; Schema: Cinema; Owner: postgres
--

ALTER SEQUENCE "Cinema".film_id_seq OWNED BY "Cinema".film.id;


--
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
-- Name: seance_fim_id_seq; Type: SEQUENCE OWNED BY; Schema: Cinema; Owner: postgres
--

ALTER SEQUENCE "Cinema".seance_fim_id_seq OWNED BY "Cinema".seance.film_id;


--
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
-- Name: seance_id_seq; Type: SEQUENCE OWNED BY; Schema: Cinema; Owner: postgres
--

ALTER SEQUENCE "Cinema".seance_id_seq OWNED BY "Cinema".seance.id;


--
-- Name: film id; Type: DEFAULT; Schema: Cinema; Owner: postgres
--

ALTER TABLE ONLY "Cinema".film ALTER COLUMN id SET DEFAULT nextval('"Cinema".film_id_seq'::regclass);


--
-- Name: seance id; Type: DEFAULT; Schema: Cinema; Owner: postgres
--

ALTER TABLE ONLY "Cinema".seance ALTER COLUMN id SET DEFAULT nextval('"Cinema".seance_id_seq'::regclass);


--
-- Name: seance film_id; Type: DEFAULT; Schema: Cinema; Owner: postgres
--

ALTER TABLE ONLY "Cinema".seance ALTER COLUMN film_id SET DEFAULT nextval('"Cinema".seance_fim_id_seq'::regclass);


--
-- Data for Name: film; Type: TABLE DATA; Schema: Cinema; Owner: postgres
--

\i $$PATH$$/2826.dat

--
-- Data for Name: seance; Type: TABLE DATA; Schema: Cinema; Owner: postgres
--

\i $$PATH$$/2824.dat

--
-- Name: film_id_seq; Type: SEQUENCE SET; Schema: Cinema; Owner: postgres
--

SELECT pg_catalog.setval('"Cinema".film_id_seq', 3, true);


--
-- Name: seance_fim_id_seq; Type: SEQUENCE SET; Schema: Cinema; Owner: postgres
--

SELECT pg_catalog.setval('"Cinema".seance_fim_id_seq', 1, false);


--
-- Name: seance_id_seq; Type: SEQUENCE SET; Schema: Cinema; Owner: postgres
--

SELECT pg_catalog.setval('"Cinema".seance_id_seq', 6, true);


--
-- Name: film film_pkey; Type: CONSTRAINT; Schema: Cinema; Owner: postgres
--

ALTER TABLE ONLY "Cinema".film
    ADD CONSTRAINT film_pkey PRIMARY KEY (id);


--
-- Name: seance seance_pkey; Type: CONSTRAINT; Schema: Cinema; Owner: postgres
--

ALTER TABLE ONLY "Cinema".seance
    ADD CONSTRAINT seance_pkey PRIMARY KEY (id);


--
-- Name: seance film_id_fk; Type: FK CONSTRAINT; Schema: Cinema; Owner: postgres
--

ALTER TABLE ONLY "Cinema".seance
    ADD CONSTRAINT film_id_fk FOREIGN KEY (film_id) REFERENCES "Cinema".film(id);


--
-- PostgreSQL database dump complete
--

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    