toc.dat                                                                                             0000600 0004000 0002000 00000007011 14666075346 0014457 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        PGDMP   
                    |         	   checklist    16.4    16.4     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false         �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false         �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false         �           1262    16566 	   checklist    DATABASE     �   CREATE DATABASE checklist WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United States.1252';
    DROP DATABASE checklist;
                postgres    false                     2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
                pg_database_owner    false         �           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                   pg_database_owner    false    4         �            1259    16572    task    TABLE     �   CREATE TABLE public.task (
    id integer NOT NULL,
    name character varying(255),
    description text,
    status boolean
);
    DROP TABLE public.task;
       public         heap    postgres    false    4         �            1259    16594    task_id_seq    SEQUENCE     t   CREATE SEQUENCE public.task_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.task_id_seq;
       public          postgres    false    4         �            1259    16593    user_id_seq    SEQUENCE     t   CREATE SEQUENCE public.user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.user_id_seq;
       public          postgres    false    4         �            1259    16586    users    TABLE     �   CREATE TABLE public.users (
    id integer NOT NULL,
    username character varying(20),
    email character varying(255),
    password character varying(255)
);
    DROP TABLE public.users;
       public         heap    postgres    false    4         �          0    16572    task 
   TABLE DATA                 public          postgres    false    215       4840.dat �          0    16586    users 
   TABLE DATA                 public          postgres    false    216       4841.dat �           0    0    task_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.task_id_seq', 21, true);
          public          postgres    false    218         �           0    0    user_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.user_id_seq', 1, false);
          public          postgres    false    217         V           2606    16578    task task_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY public.task
    ADD CONSTRAINT task_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.task DROP CONSTRAINT task_pkey;
       public            postgres    false    215         X           2606    16592    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            postgres    false    216                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               4840.dat                                                                                            0000600 0004000 0002000 00000005340 14666075346 0014274 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        INSERT INTO public.task (id, name, description, status) VALUES (4, 'Attend Study Group', 'Join the study group session for chemistry.', true);
INSERT INTO public.task (id, name, description, status) VALUES (5, 'Update Class Notes', 'Organize and update notes for the biology class.', false);
INSERT INTO public.task (id, name, description, status) VALUES (8, 'Submit English Essay', 'Write and submit the essay on Shakespeare’s works.', false);
INSERT INTO public.task (id, name, description, status) VALUES (11, 'clean room', 'throw away unused books', false);
INSERT INTO public.task (id, name, description, status) VALUES (12, 'clean room', 'throw away unused books', false);
INSERT INTO public.task (id, name, description, status) VALUES (13, 'wipe windows', 'get clean cloth from cupboard', false);
INSERT INTO public.task (id, name, description, status) VALUES (14, 'wipe windows', '123', false);
INSERT INTO public.task (id, name, description, status) VALUES (15, 'wipe windows', '123', false);
INSERT INTO public.task (id, name, description, status) VALUES (16, 'learn Rust', 'watch youtube and learn Rust', false);
INSERT INTO public.task (id, name, description, status) VALUES (17, 'learn Rust', 'watch youtube and learn Rust', false);
INSERT INTO public.task (id, name, description, status) VALUES (18, 'watch Gurren Lagaan', 'I AM THE DRILL THAT WILL PIERCE THE HEAVENS', false);
INSERT INTO public.task (id, name, description, status) VALUES (19, 'watch Gurren Lagaan', 'I AM THE DRILL THAT WILL PIERCE THE HEAVENS', false);
INSERT INTO public.task (id, name, description, status) VALUES (20, 'watch your name', 'give 8/10 on mal', false);
INSERT INTO public.task (id, name, description, status) VALUES (2, 'Study for History Exam', 'Review chapters 5-8 for the upcoming history exam.', false);
INSERT INTO public.task (id, name, description, status) VALUES (3, 'Submit Science Project', 'Turn in the completed science project on photosynthesis.', true);
INSERT INTO public.task (id, name, description, status) VALUES (6, 'Register for New Semester', 'Complete the registration process for the next semester.', true);
INSERT INTO public.task (id, name, description, status) VALUES (7, 'Meet Academic Advisor', 'Schedule and attend a meeting with the academic advisor.', false);
INSERT INTO public.task (id, name, description, status) VALUES (9, 'Participate in Extracurricular Activities', 'Join the debate club practice session.', true);
INSERT INTO public.task (id, name, description, status) VALUES (10, 'Check Library Due Dates', 'Ensure all borrowed books are returned on time.', false);
INSERT INTO public.task (id, name, description, status) VALUES (1, 'Complete Math Assignment', 'Finish the math homework on algebra. Treat it like a practice test.', false);


                                                                                                                                                                                                                                                                                                4841.dat                                                                                            0000600 0004000 0002000 00000000476 14666075346 0014302 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        INSERT INTO public.users (id, username, email, password) VALUES (1, 'tim', 'tim@email.com', '$2b$10$O1etGFkzId25KGUJw94EfOcmfySpAbdym91QR78tB3KvKnwsgj4na');
INSERT INTO public.users (id, username, email, password) VALUES (2, 'john', 'john@email.com', '$2b$10$fSrAIMlOd5h7lzO5umWcLegd2PVwMj9rF0NDYNLW8lVsRUVHb3uhK');


                                                                                                                                                                                                  restore.sql                                                                                         0000600 0004000 0002000 00000006613 14666075346 0015413 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        --
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
    name character varying(255),
    description text,
    status boolean
);


ALTER TABLE public.task OWNER TO postgres;

--
-- Name: task_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.task_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.task_id_seq OWNER TO postgres;

--
-- Name: user_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.user_id_seq OWNER TO postgres;

--
-- Name: users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users (
    id integer NOT NULL,
    username character varying(20),
    email character varying(255),
    password character varying(255)
);


ALTER TABLE public.users OWNER TO postgres;

--
-- Data for Name: task; Type: TABLE DATA; Schema: public; Owner: postgres
--

\i $$PATH$$/4840.dat

--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

\i $$PATH$$/4841.dat

--
-- Name: task_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.task_id_seq', 21, true);


--
-- Name: user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.user_id_seq', 1, false);


--
-- Name: task task_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.task
    ADD CONSTRAINT task_pkey PRIMARY KEY (id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     