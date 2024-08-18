toc.dat                                                                                             0000600 0004000 0002000 00000006406 14657416540 0014461 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        PGDMP                       |         	   checklist    16.4    16.4     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false         �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false         �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false         �           1262    16398 	   checklist    DATABASE     �   CREATE DATABASE checklist WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United States.1252';
    DROP DATABASE checklist;
                postgres    false                     2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
                pg_database_owner    false         �           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                   pg_database_owner    false    4         �            1259    16400    task    TABLE     �   CREATE TABLE public.task (
    id integer NOT NULL,
    name text NOT NULL,
    description text NOT NULL,
    status boolean NOT NULL
);
    DROP TABLE public.task;
       public         heap    postgres    false    4         �           0    0 
   TABLE task    ACL     9   GRANT SELECT,INSERT,UPDATE ON TABLE public.task TO sean;
          public          postgres    false    216         �            1259    16399    task_id_seq    SEQUENCE     �   CREATE SEQUENCE public.task_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.task_id_seq;
       public          postgres    false    4    216         �           0    0    task_id_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE public.task_id_seq OWNED BY public.task.id;
          public          postgres    false    215         �           0    0    SEQUENCE task_id_seq    ACL     2   GRANT ALL ON SEQUENCE public.task_id_seq TO sean;
          public          postgres    false    215         P           2604    16403    task id    DEFAULT     b   ALTER TABLE ONLY public.task ALTER COLUMN id SET DEFAULT nextval('public.task_id_seq'::regclass);
 6   ALTER TABLE public.task ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    216    215    216         �          0    16400    task 
   TABLE DATA           =   COPY public.task (id, name, description, status) FROM stdin;
    public          postgres    false    216       4835.dat �           0    0    task_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.task_id_seq', 20, true);
          public          postgres    false    215         R           2606    16407    task task_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY public.task
    ADD CONSTRAINT task_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.task DROP CONSTRAINT task_pkey;
       public            postgres    false    216                                                                                                                                                                                                                                                                  4835.dat                                                                                            0000600 0004000 0002000 00000002402 14657416540 0014267 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        2	Study for History Exam	Review chapters 5-8 for the upcoming history exam.	f
3	Submit Science Project	Turn in the completed science project on photosynthesis.	t
4	Attend Study Group	Join the study group session for chemistry.	t
5	Update Class Notes	Organize and update notes for the biology class.	f
6	Register for New Semester	Complete the registration process for the next semester.	t
7	Meet Academic Advisor	Schedule and attend a meeting with the academic advisor.	f
8	Submit English Essay	Write and submit the essay on Shakespeare’s works.	f
9	Participate in Extracurricular Activities	Join the debate club practice session.	t
10	Check Library Due Dates	Ensure all borrowed books are returned on time.	f
11	clean room	throw away unused books	f
12	clean room	throw away unused books	f
13	wipe windows	get clean cloth from cupboard	f
14	wipe windows	123	f
15	wipe windows	123	f
16	learn Rust	watch youtube and learn Rust	f
17	learn Rust	watch youtube and learn Rust	f
18	watch Gurren Lagaan	I AM THE DRILL THAT WILL PIERCE THE HEAVENS	f
19	watch Gurren Lagaan	I AM THE DRILL THAT WILL PIERCE THE HEAVENS	f
20	watch Gurren Lagaan	I AM THE DRILL THAT WILL PIERCE THE HEAVENS	f
1	Complete Math Assignment	Finish the math homework on algebra. Treat it like a practice test.	f
\.


                                                                                                                                                                                                                                                              restore.sql                                                                                         0000600 0004000 0002000 00000006270 14657416540 0015405 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        --
-- NOTE:
--
-- File paths need to be edited. Search for $$PATH$$ and
-- replace it with the path to the directory containing
-- the extracted data files.
--
--
-- PostgreSQL database dump
--

-- Dumped from database version 16.4
-- Dumped by pg_dump version 16.4

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

DROP DATABASE checklist;
--
-- Name: checklist; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE checklist WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United States.1252';


ALTER DATABASE checklist OWNER TO postgres;

\connect checklist

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
-- Name: public; Type: SCHEMA; Schema: -; Owner: pg_database_owner
--

CREATE SCHEMA public;


ALTER SCHEMA public OWNER TO pg_database_owner;

--
-- Name: SCHEMA public; Type: COMMENT; Schema: -; Owner: pg_database_owner
--

COMMENT ON SCHEMA public IS 'standard public schema';


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: task; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.task (
    id integer NOT NULL,
    name text NOT NULL,
    description text NOT NULL,
    status boolean NOT NULL
);


ALTER TABLE public.task OWNER TO postgres;

--
-- Name: task_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.task_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.task_id_seq OWNER TO postgres;

--
-- Name: task_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.task_id_seq OWNED BY public.task.id;


--
-- Name: task id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.task ALTER COLUMN id SET DEFAULT nextval('public.task_id_seq'::regclass);


--
-- Data for Name: task; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.task (id, name, description, status) FROM stdin;
\.
COPY public.task (id, name, description, status) FROM '$$PATH$$/4835.dat';

--
-- Name: task_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.task_id_seq', 20, true);


--
-- Name: task task_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.task
    ADD CONSTRAINT task_pkey PRIMARY KEY (id);


--
-- Name: TABLE task; Type: ACL; Schema: public; Owner: postgres
--

GRANT SELECT,INSERT,UPDATE ON TABLE public.task TO sean;


--
-- Name: SEQUENCE task_id_seq; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON SEQUENCE public.task_id_seq TO sean;


--
-- PostgreSQL database dump complete
--

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        