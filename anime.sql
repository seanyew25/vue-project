toc.dat                                                                                             0000600 0004000 0002000 00000012043 14657417610 0014452 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        PGDMP                        |            anime    16.4    16.4     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false         �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false         �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false         �           1262    16409    anime    DATABASE     �   CREATE DATABASE anime WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United States.1252';
    DROP DATABASE anime;
                postgres    false         �           0    0    DATABASE anime    ACL     )   GRANT CONNECT ON DATABASE anime TO sean;
                   postgres    false    4854                     2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
                pg_database_owner    false         �           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                   pg_database_owner    false    4         �            1259    16420    anime    TABLE     �   CREATE TABLE public.anime (
    id integer NOT NULL,
    title character varying(255) NOT NULL,
    genres character varying(255) NOT NULL,
    score numeric(3,2),
    episodes integer,
    start_date date,
    user_score integer,
    end_date date
);
    DROP TABLE public.anime;
       public         heap    postgres    false    4         �           0    0    TABLE anime    ACL     ,   GRANT SELECT ON TABLE public.anime TO sean;
          public          postgres    false    216         �            1259    16443    anime_genres    TABLE     c   CREATE TABLE public.anime_genres (
    anime_id integer NOT NULL,
    genre_id integer NOT NULL
);
     DROP TABLE public.anime_genres;
       public         heap    postgres    false    4         �           0    0    TABLE anime_genres    ACL     3   GRANT SELECT ON TABLE public.anime_genres TO sean;
          public          postgres    false    217         �            1259    16415    genre    TABLE     a   CREATE TABLE public.genre (
    id integer NOT NULL,
    name character varying(255) NOT NULL
);
    DROP TABLE public.genre;
       public         heap    postgres    false    4         �           0    0    TABLE genre    ACL     ,   GRANT SELECT ON TABLE public.genre TO sean;
          public          postgres    false    215         �          0    16420    anime 
   TABLE DATA           e   COPY public.anime (id, title, genres, score, episodes, start_date, user_score, end_date) FROM stdin;
    public          postgres    false    216       4847.dat �          0    16443    anime_genres 
   TABLE DATA           :   COPY public.anime_genres (anime_id, genre_id) FROM stdin;
    public          postgres    false    217       4848.dat �          0    16415    genre 
   TABLE DATA           )   COPY public.genre (id, name) FROM stdin;
    public          postgres    false    215       4846.dat \           2606    16447    anime_genres anime_genres_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.anime_genres
    ADD CONSTRAINT anime_genres_pkey PRIMARY KEY (anime_id, genre_id);
 H   ALTER TABLE ONLY public.anime_genres DROP CONSTRAINT anime_genres_pkey;
       public            postgres    false    217    217         Z           2606    16426    anime anime_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.anime
    ADD CONSTRAINT anime_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.anime DROP CONSTRAINT anime_pkey;
       public            postgres    false    216         X           2606    16419    genre genre_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.genre
    ADD CONSTRAINT genre_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.genre DROP CONSTRAINT genre_pkey;
       public            postgres    false    215         ]           2606    16448 '   anime_genres anime_genres_anime_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.anime_genres
    ADD CONSTRAINT anime_genres_anime_id_fkey FOREIGN KEY (anime_id) REFERENCES public.anime(id);
 Q   ALTER TABLE ONLY public.anime_genres DROP CONSTRAINT anime_genres_anime_id_fkey;
       public          postgres    false    4698    217    216         ^           2606    16453 '   anime_genres anime_genres_genre_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.anime_genres
    ADD CONSTRAINT anime_genres_genre_id_fkey FOREIGN KEY (genre_id) REFERENCES public.genre(id);
 Q   ALTER TABLE ONLY public.anime_genres DROP CONSTRAINT anime_genres_genre_id_fkey;
       public          postgres    false    4696    215    217                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     4847.dat                                                                                            0000600 0004000 0002000 00000043021 14657417610 0014273 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        52034	Oshi no Ko	46, 8, 37	8.63	11	2023-07-02	8	2023-07-03
31646	3-gatsu no Lion	8	8.37	22	\N	8	2022-12-27
38101	5-toubun no Hanayome	4, 22	7.64	12	\N	7	2022-12-27
39783	5-toubun no Hanayome ∬	4, 22	8.04	12	\N	7	\N
48548	5-toubun no Hanayome Movie	4, 22	7.84	1	\N	6	\N
22199	Akame ga Kill!	1, 10	7.47	24	\N	4	2022-12-27
41433	Akudama Drive	1, 24, 41	7.58	12	2024-02-23	8	2024-02-24
22147	Amagi Brilliant Park	4, 10	7.46	13	\N	7	2022-12-27
9989	Ano Hi Mita Hana no Namae wo Bokutachi wa Mada Shiranai.	8, 37	8.30	11	\N	6	2022-12-27
6347	Baka to Test to Shoukanjuu	4, 22	7.51	13	\N	6	2022-12-27
5081	Bakemonogatari	7, 22, 37	8.32	15	\N	7	2022-12-27
49596	Blue Lock	30	8.25	24	2023-04-17	7	2023-04-21
47917	Bocchi the Rock!	4	8.78	12	\N	8	2022-12-27
31043	Boku dake ga Inai Machi	7, 37, 41	8.30	12	2022-12-27	7	2022-12-27
31964	Boku no Hero Academia	1	7.86	13	2022-12-27	7	2022-12-27
33486	Boku no Hero Academia 2nd Season	1	8.07	25	2022-12-27	7	2022-12-27
36456	Boku no Hero Academia 3rd Season	1	8.01	25	2022-12-27	8	2022-12-27
38408	Boku no Hero Academia 4th Season	1	7.87	25	2022-12-27	7	2022-12-27
41587	Boku no Hero Academia 5th Season	1	7.37	25	2023-05-18	7	2023-05-19
49918	Boku no Hero Academia 6th Season	1	8.27	25	2023-05-23	8	2023-05-24
31478	Bungou Stray Dogs	1, 7, 37	7.81	12	2023-10-04	7	2023-10-05
32867	Bungou Stray Dogs 2nd Season	1, 7, 37	8.18	12	2023-10-05	7	2023-10-10
38003	Bungou Stray Dogs 3rd Season	1, 7, 37	8.21	12	2023-10-10	7	2023-10-31
50330	Bungou Stray Dogs 4th Season	1, 7, 37	8.44	13	2024-06-14	8	2024-06-20
54898	Bungou Stray Dogs 5th Season	1, 7, 37	8.64	11	2024-06-20	8	2024-06-20
1689	Byousoku 5 Centimeter	8, 22	7.56	3	\N	7	2022-12-27
44511	Chainsaw Man	1, 10	8.49	12	2022-12-29	8	2023-01-01
28999	Charlotte	8	7.75	13	\N	7	2022-12-27
10800	Chihayafuru	8, 30	8.18	25	2022-12-27	8	2022-12-27
14397	Chihayafuru 2	8, 30	8.38	25	2022-12-27	8	2022-12-27
37379	Chihayafuru 3	8, 30	8.46	24	2022-12-27	8	2022-12-27
14741	Chuunibyou demo Koi ga Shitai!	4, 22	7.70	12	\N	7	2022-12-27
18671	Chuunibyou demo Koi ga Shitai! Ren	4, 22	7.55	12	\N	7	2022-12-27
2167	Clannad	8, 22, 37	7.99	23	\N	6	2022-12-27
4181	Clannad: After Story	8, 22, 37	8.93	24	\N	6	2022-12-27
1575	Code Geass: Hangyaku no Lelouch	1, 46, 8, 24	8.70	25	\N	8	2022-12-27
2904	Code Geass: Hangyaku no Lelouch R2	1, 46, 8, 24	8.91	25	\N	9	2022-12-27
10029	Coquelicot-zaka kara	46, 22	7.78	1	\N	7	2023-03-31
42310	Cyberpunk: Edgerunners	1, 24	8.60	10	\N	8	2022-12-27
35849	Darling in the FranXX	1, 8, 22, 24	7.19	24	\N	6	2022-12-27
15583	Date A Live	1, 10, 22, 24	7.15	12	\N	5	\N
35120	Devilman: Crybaby	1, 5, 14, 37	7.75	10	2023-02-17	7	2023-02-17
38691	Dr. Stone	2, 4, 24	8.27	24	\N	6	2022-12-27
48549	Dr. Stone: New World	2, 4, 24	8.15	11	2023-07-04	8	2023-07-06
55644	Dr. Stone: New World Part 2	2, 4, 24	8.33	11	2023-12-02	7	2023-12-25
50612	Dr. Stone: Ryuusui	2, 4, 24	8.16	1	2023-07-04	7	2023-07-04
40852	Dr. Stone: Stone Wars	2, 4, 24	8.16	11	\N	6	\N
28121	Dungeon ni Deai wo Motomeru no wa Machigatteiru Darou ka	1, 2, 10	7.54	13	\N	5	2022-12-27
32887	Dungeon ni Deai wo Motomeru no wa Machigatteiru Darou ka Gaiden: Sword Oratoria	1, 2, 10	7.07	12	\N	5	2022-12-27
40454	Dungeon ni Deai wo Motomeru no wa Machigatteiru Darou ka III	1, 2, 10	7.46	12	2023-04-30	6	2023-04-30
47164	Dungeon ni Deai wo Motomeru no wa Machigatteiru Darou ka IV: Shin Shou - Meikyuu-hen	1, 2, 10	7.74	11	2023-05-02	7	2023-05-03
53111	Dungeon ni Deai wo Motomeru no wa Machigatteiru Darou ka IV: Shin Shou - Yakusai-hen	1, 2, 10	8.24	11	2023-06-20	6	2023-06-21
6746	Durarara!!	1, 7, 37	8.10	24	2023-05-29	7	2023-06-18
38671	Enen no Shouboutai	1, 10, 24	7.71	24	\N	6	2022-12-27
2759	Evangelion Movie 1: Jo	1, 46, 8, 24, 41	8.00	1	\N	6	\N
3784	Evangelion Movie 2: Ha	1, 8, 24, 41	8.30	1	\N	6	\N
3785	Evangelion Movie 3: Q	1, 46, 8, 24, 41	7.65	1	\N	6	\N
25537	Fate/stay night Movie: Heaven's Feel - I. Presage Flower	1, 10, 37	8.16	1	\N	8	2022-12-27
33049	Fate/stay night Movie: Heaven's Feel - II. Lost Butterfly	1, 10, 37	8.48	1	\N	8	2022-12-27
33050	Fate/stay night Movie: Heaven's Feel - III. Spring Song	1, 10, 37	8.66	1	\N	8	2022-12-27
22297	Fate/stay night: Unlimited Blade Works	1, 10, 37	8.18	12	\N	8	\N
28701	Fate/stay night: Unlimited Blade Works 2nd Season	1, 10, 37	8.32	13	\N	8	\N
10087	Fate/Zero	1, 10, 37	8.27	13	\N	8	\N
11741	Fate/Zero 2nd Season	1, 10, 37	8.54	12	\N	8	\N
5114	Fullmetal Alchemist: Brotherhood	1, 2, 8, 10	9.09	64	2022-12-27	8	2022-12-27
41025	Fumetsu no Anata e	2, 8, 37	8.34	20	\N	7	2022-12-29
2890	Gake no Ue no Ponyo	2, 46, 10	7.94	1	\N	8	2023-03-31
34280	Gamers!	4, 22	6.74	12	\N	5	2022-12-27
14131	Girls & Panzer	1	7.52	12	2023-05-24	7	2023-05-26
18617	Girls & Panzer Movie	1, 46	8.18	1	\N	7	2023-05-29
55102	Girls Band Cry	8	8.43	13	\N	8	2024-07-04
36028	Golden Kamuy	1, 2	7.88	12	\N	6	2022-12-27
37989	Golden Kamuy 2nd Season	1, 2	8.24	12	\N	7	2022-12-27
40059	Golden Kamuy 3rd Season	1, 2	8.44	12	\N	7	2022-12-27
37105	Grand Blue	4	8.43	12	2023-02-20	7	2023-02-20
31859	Hai to Gensou no Grimgar	1, 2, 8, 10	7.65	12	\N	7	2022-12-27
20583	Haikyuu!!	30	8.44	25	\N	7	2022-12-27
32935	Haikyuu!! Karasuno Koukou vs. Shiratorizawa Gakuen Koukou	30	8.78	10	2022-12-27	7	2022-12-28
28891	Haikyuu!! Second Season	30	8.62	25	\N	8	2022-12-27
38883	Haikyuu!! To the Top	30	8.37	13	2022-12-28	8	2022-12-28
21855	Hanamonogatari	4, 7, 37	7.92	5	2024-08-10	7	2024-08-11
49738	Heike Monogatari	8, 37	7.78	11	2023-02-12	7	2023-02-14
27989	Hibike! Euphonium	8	8.01	13	2023-01-01	7	2023-01-02
31988	Hibike! Euphonium 2	8	8.33	13	2023-01-07	8	2023-02-05
39894	Hibike! Euphonium 3	8	8.74	13	2024-07-01	9	2024-07-02
35678	Hibike! Euphonium Movie 3: Chikai no Finale	8	7.76	1	\N	7	2024-07-01
51995	Hibike! Euphonium: Ensemble Contest-hen	8	7.72	1	\N	6	2024-07-01
28825	Himouto! Umaru-chan	4	7.10	12	\N	5	2022-12-27
36296	Hinamatsuri	4, 37	8.12	12	2023-12-27	8	2023-12-28
42897	Horimiya	22	8.20	13	\N	7	2022-12-27
54856	Horimiya: Piece	22	8.17	13	2023-10-11	6	2023-10-14
578	Hotaru no Haka	8	8.52	1	\N	6	2022-12-27
35557	Houseki no Kuni	1, 8, 10, 7	8.39	12	2023-09-25	8	2023-09-28
431	Howl no Ugoku Shiro	2, 46, 8, 10, 22	8.67	1	\N	7	2022-12-27
11061	Hunter x Hunter (2011)	1, 2, 10	9.03	148	\N	8	2022-12-27
12189	Hyouka	7, 36	8.06	22	\N	8	2022-12-28
13469	Hyouka: Motsubeki Mono wa	7, 36	7.35	1	\N	7	2022-12-27
38472	Isekai Quartet	4, 10	7.38	12	\N	7	2022-12-27
38790	Itai no wa Iya nanode Bougyoryoku ni Kyokufuri Shitai to Omoimasu.	1, 2, 4, 10	7.52	12	2023-12-23	7	2023-12-25
41514	Itai no wa Iya nanode Bougyoryoku ni Kyokufuri Shitai to Omoimasu. 2	1, 2, 4, 10	7.20	12	2023-12-30	6	2024-05-25
39534	Jibaku Shounen Hanako-kun	37	7.83	12	2023-12-28	6	2023-12-30
46569	Jigokuraku	1, 2, 10	8.10	13	2023-08-11	7	2023-08-12
14719	JoJo no Kimyou na Bouken (TV)	1, 2, 37	7.88	26	\N	9	\N
20899	JoJo no Kimyou na Bouken Part 3: Stardust Crusaders	1, 2, 37	8.10	24	\N	6	2022-12-12
26055	JoJo no Kimyou na Bouken Part 3: Stardust Crusaders 2nd Season	1, 2, 37	8.44	24	\N	6	\N
31933	JoJo no Kimyou na Bouken Part 4: Diamond wa Kudakenai	1, 2, 37	8.50	39	\N	8	2022-12-12
37991	JoJo no Kimyou na Bouken Part 5: Ougon no Kaze	1, 2, 37	8.57	39	\N	10	\N
48661	JoJo no Kimyou na Bouken Part 6: Stone Ocean	1, 2, 37	8.11	12	2023-01-16	8	2023-01-31
51367	JoJo no Kimyou na Bouken Part 6: Stone Ocean Part 2	1, 2, 37	8.07	12	2023-02-05	8	2023-02-07
53273	JoJo no Kimyou na Bouken Part 6: Stone Ocean Part 3	1, 2, 37	8.55	14	2023-02-07	10	2023-02-12
40787	Josee to Tora to Sakana-tachi	8, 22	8.39	1	\N	8	2022-12-27
40748	Jujutsu Kaisen	1, 46, 10	8.59	24	\N	8	2022-12-27
48561	Jujutsu Kaisen 0 Movie	1, 10	8.43	1	\N	8	2022-12-27
51009	Jujutsu Kaisen 2nd Season	1, 10	8.81	23	2023-10-03	8	2022-12-27
5680	K-On!	4	7.86	13	\N	9	2022-12-27
7791	K-On!!	46, 4	8.17	26	\N	9	2022-12-27
6862	K-On!: Live House!	4	7.84	1	\N	9	2022-12-27
48316	Kage no Jitsuryokusha ni Naritakute!	1, 4, 10	8.28	20	2023-04-21	9	2023-04-24
54595	Kage no Jitsuryokusha ni Naritakute! 2nd Season	1, 4, 10	8.34	12	2023-11-29	7	2023-12-18
52198	Kaguya-sama wa Kokurasetai: First Kiss wa Owaranai	4, 8, 22	8.76	1	\N	9	2023-02-11
37999	Kaguya-sama wa Kokurasetai: Tensai-tachi no Renai Zunousen	4	8.40	12	\N	9	2022-12-27
43608	Kaguya-sama wa Kokurasetai: Ultra Romantic	4, 22	9.00	13	\N	9	2022-12-27
40591	Kaguya-sama wa Kokurasetai? Tensai-tachi no Renai Zunousen	4	8.63	12	\N	8	2022-12-27
40221	Kami no Tou	1, 2, 8, 10, 7	7.56	13	\N	6	\N
2593	Kara no Kyoukai Movie 1: Fukan Fuukei	1, 7, 37, 41	7.56	1	2022-03-02	4	2023-06-23
37965	Kaze ga Tsuyoku Fuiteiru	8, 30	8.38	23	\N	9	2022-12-27
572	Kaze no Tani no Nausicaä	2, 46, 10	8.35	1	\N	7	2023-12-28
16662	Kaze Tachinu	46, 8, 22	8.12	1	\N	9	2022-12-27
49828	Kidou Senshi Gundam: Suisei no Majo	1, 24	7.86	12	2023-09-03	7	2023-09-03
53199	Kidou Senshi Gundam: Suisei no Majo Season 2	1, 24	7.92	12	2023-09-05	7	2023-09-23
38000	Kimetsu no Yaiba	1, 46, 10	8.46	26	\N	8	\N
40456	Kimetsu no Yaiba Movie: Mugen Ressha-hen	1, 10	8.58	1	\N	8	2022-12-27
55701	Kimetsu no Yaiba: Hashira Geiko-hen	1, 10	8.17	8	2024-07-29	6	2024-07-31
51019	Kimetsu no Yaiba: Katanakaji no Sato-hen	1, 10	8.22	11	2023-06-16	8	2023-06-19
32281	Kimi no Na wa.	46, 8, 37	8.83	1	\N	9	2022-12-27
36699	Kimitachi wa Dou Ikiru ka	2, 46, 8, 10	7.61	1	\N	9	2023-12-14
9260	Kizumonogatari I: Tekketsu-hen	1, 7, 37	8.36	1	\N	7	2024-07-31
31757	Kizumonogatari II: Nekketsu-hen	1, 7, 37	8.57	1	\N	7	2024-07-31
31758	Kizumonogatari III: Reiketsu-hen	1, 7, 37	8.78	1	2024-08-01	8	2024-08-01
28851	Koe no Katachi	46, 8	8.93	1	\N	8	\N
11887	Kokoro Connect	8, 22, 37	7.73	13	\N	6	2022-12-27
48926	Komi-san wa, Comyushou desu.	4	7.85	12	\N	6	2022-12-28
51958	Kono Subarashii Sekai ni Bakuen wo!	4, 10	7.49	12	2023-06-19	7	2023-06-22
30831	Kono Subarashii Sekai ni Shukufuku wo!	2, 4, 10	8.10	10	\N	9	\N
32937	Kono Subarashii Sekai ni Shukufuku wo! 2	2, 4, 10	8.25	10	\N	9	2022-12-27
49458	Kono Subarashii Sekai ni Shukufuku wo! 3	2, 4, 10	8.40	11	2024-06-26	9	2022-12-27
38040	Kono Subarashii Sekai ni Shukufuku wo! Movie: Kurenai Densetsu	2, 4, 10	8.42	1	\N	8	2022-12-27
28623	Koutetsujou no Kabaneri	1, 10, 14, 41	7.27	12	2023-05-12	7	2023-05-17
34544	Koutetsujou no Kabaneri Movie 3: Unato Kessen	1, 10, 14, 41	7.68	1	\N	7	2023-05-29
416	Kurenai no Buta	1, 2, 46, 4, 8, 22	7.95	1	\N	8	2024-08-09
54492	Kusuriya no Hitorigoto	8, 7	8.89	24	2024-05-25	8	2024-05-29
18153	Kyoukai no Kanata	1, 10	7.72	12	\N	7	2022-12-27
35677	Liz to Aoi Tori	46, 8	8.21	1	\N	7	2023-01-01
17265	Log Horizon	1, 2, 10	7.91	25	2023-12-31	6	2024-01-04
23321	Log Horizon 2nd Season	1, 2, 10	7.56	25	2024-01-04	7	2024-01-06
15051	Love Live! School Idol Project	36	7.40	13	2023-05-10	5	2023-05-12
19111	Love Live! School Idol Project 2nd Season	46, 36	7.76	13	2023-05-13	7	2023-05-17
50709	Lycoris Recoil	1	8.16	13	\N	7	2022-12-27
34599	Made in Abyss	2, 8, 10, 7, 24	8.64	13	2023-05-05	9	2023-05-09
36862	Made in Abyss Movie 3: Fukaki Tamashii no Reimei	2, 8, 10, 7, 24	8.61	1	\N	8	2023-05-09
41084	Made in Abyss: Retsujitsu no Ougonkyou	2, 8, 10, 7, 24	8.63	12	2023-05-09	9	2023-05-11
9756	Mahou Shoujo Madoka★Magica	46, 8, 10, 41	8.37	12	2022-12-27	7	2022-12-27
512	Majo no Takkyuubin	2, 46, 4, 8, 10	8.22	1	\N	7	2022-12-27
40496	Maou Gakuin no Futekigousha: Shijou Saikyou no Maou no Shiso, Tensei shite Shison-tachi no Gakkou e Kayou	1, 10	7.35	13	2022-12-27	6	2022-12-27
52211	Mashle	1, 4, 10	7.62	12	2023-07-10	6	2023-07-16
55813	Mashle: Shinkakusha Kouho Senbatsu Shiken-hen	1, 4, 10	7.83	12	2024-05-23	6	2024-05-30
585	Mimi wo Sumaseba	8, 22	8.22	1	\N	7	2023-12-28
32182	Mob Psycho 100	1, 4, 37	8.49	12	\N	8	2022-12-27
37510	Mob Psycho 100 II	1, 4, 37	8.79	13	\N	8	\N
50172	Mob Psycho 100 III	1, 4, 37	8.71	12	2022-12-27	8	2023-01-05
164	Mononoke Hime	1, 2, 46, 10	8.66	1	\N	8	2022-12-27
51179	Mushoku Tensei II: Isekai Ittara Honki Dasu	2, 8, 10, 9	8.24	12	2023-10-17	7	2023-10-31
55888	Mushoku Tensei II: Isekai Ittara Honki Dasu Part 2	2, 8, 10, 9	8.47	12	2024-06-28	8	2024-07-02
39535	Mushoku Tensei: Isekai Ittara Honki Dasu	2, 8, 10, 9	8.37	11	\N	9	2022-12-27
45576	Mushoku Tensei: Isekai Ittara Honki Dasu Part 2	2, 8, 10, 9	8.66	12	\N	9	2022-12-27
23755	Nanatsu no Taizai	1, 2, 10	7.63	24	\N	8	\N
34577	Nanatsu no Taizai: Imashime no Fukkatsu	1, 2, 10	7.56	24	\N	7	\N
39701	Nanatsu no Taizai: Kamigami no Gekirin	1, 2, 10	6.46	24	2022-12-27	4	2022-12-27
50593	Natsu e no Tunnel, Sayonara no Deguchi	8, 7, 22, 24	7.90	1	\N	6	2023-09-26
15689	Nekomonogatari: Kuro	4, 22, 37, 9	7.92	4	\N	7	2024-08-04
11597	Nisemonogatari	4, 7, 37, 9	8.13	11	\N	7	2024-08-04
19815	No Game No Life	4, 10, 9	8.06	12	\N	8	2022-12-27
20507	Noragami	1, 10	7.94	12	\N	8	2022-12-27
30503	Noragami Aragoto	1, 10	8.15	13	\N	8	2022-12-27
46102	Odd Taxi	46, 8, 7, 41	8.66	13	\N	7	2022-12-27
30276	One Punch Man	1, 4	8.49	12	\N	8	2022-12-27
34134	One Punch Man 2nd Season	1, 4	7.52	12	\N	6	2022-12-27
51678	Oniichan wa Oshimai!	4	7.67	12	2023-05-12	7	2023-06-16
437	Perfect Blue	5, 8, 14, 41	8.54	1	\N	9	2023-03-26
27775	Plastic Memories	8, 22, 24	7.91	13	\N	6	\N
13601	Psycho-Pass	1, 7, 24, 41	8.33	22	\N	6	2022-12-12
31240	Re:Zero kara Hajimeru Isekai Seikatsu	8, 10, 41	8.23	25	2022-12-27	7	2022-12-27
39587	Re:Zero kara Hajimeru Isekai Seikatsu 2nd Season	8, 10, 41	8.33	13	2022-12-27	4	2022-12-27
42203	Re:Zero kara Hajimeru Isekai Seikatsu 2nd Season Part 2	8, 10, 41	8.43	12	2022-12-27	4	2022-12-27
23277	Saenai Heroine no Sodatekata	4, 22, 9	7.47	12	\N	8	2022-12-27
30727	Saenai Heroine no Sodatekata ♭	4, 22, 9	7.76	11	\N	8	2022-12-27
13759	Sakura-sou no Pet na Kanojo	8, 22	8.06	24	2022-12-27	8	2022-12-27
35851	Sayonara no Asa ni Yakusoku no Hana wo Kazarou	8, 10	8.39	1	\N	10	2022-12-28
37450	Seishun Buta Yarou wa Bunny Girl Senpai no Yume wo Minai	8, 22, 37	8.23	13	\N	8	2022-12-27
38329	Seishun Buta Yarou wa Yumemiru Shoujo no Yume wo Minai	8, 22, 37	8.59	1	\N	6	2022-12-27
199	Sen to Chihiro no Kamikakushi	2, 46, 37	8.77	1	\N	8	2022-12-27
1033	Sennen Joyuu	1, 2, 46, 8, 10, 22	8.24	1	\N	8	2023-03-27
41456	Sentouin, Hakenshimasu!	1, 4, 10, 24	7.15	12	\N	6	2022-12-27
23273	Shigatsu wa Kimi no Uso	8, 22	8.64	22	\N	9	\N
3786	Shin Evangelion Movie:||	1, 46, 8, 24, 41	8.59	1	\N	10	2022-12-27
38659	Shinchou Yuusha: Kono Yuusha ga Ore Tueee Kuse ni Shinchou Sugiru	1, 2, 4, 10	7.48	12	\N	8	2022-12-27
16498	Shingeki no Kyojin	1, 46, 8, 41	8.55	25	\N	10	2022-12-27
25777	Shingeki no Kyojin Season 2	1, 8, 41	8.52	12	\N	10	2022-12-27
35760	Shingeki no Kyojin Season 3	1, 8, 41	8.63	12	\N	10	2022-12-27
38524	Shingeki no Kyojin Season 3 Part 2	1, 8, 41	9.05	10	2023-11-23	10	2023-11-23
40028	Shingeki no Kyojin: The Final Season	1, 8, 41	8.78	16	2023-11-16	10	2023-11-22
51535	Shingeki no Kyojin: The Final Season - Kanketsu-hen	1, 8, 41	8.89	2	\N	10	2023-11-23
48583	Shingeki no Kyojin: The Final Season Part 2	1, 8, 41	8.76	12	2023-11-21	10	2023-11-22
30	Shinseiki Evangelion	1, 5, 46, 8, 24, 41	8.35	26	\N	9	\N
32	Shinseiki Evangelion Movie: Air/Magokoro wo, Kimi ni	1, 5, 8, 24, 41	8.55	1	\N	9	\N
13125	Shinsekai yori	8, 10, 14, 7, 24, 41	8.26	25	\N	8	2022-12-27
25835	Shirobako	46, 4, 8	8.27	24	\N	6	2022-12-27
35503	Shoujo☆Kageki Revue Starlight	8	7.66	12	2024-06-12	7	2024-06-15
40664	Shoujo☆Kageki Revue Starlight Movie	8	8.52	1	\N	8	2024-06-14
28735	Shouwa Genroku Rakugo Shinjuu	8	8.56	13	\N	9	\N
33095	Shouwa Genroku Rakugo Shinjuu: Sukeroku Futatabi-hen	8	8.71	12	\N	9	\N
48736	Sono Bisque Doll wa Koi wo Suru	22	8.18	12	\N	7	2022-12-27
52991	Sousou no Frieren	2, 8, 10	9.34	28	2023-11-30	10	2023-11-26
50265	Spy x Family	1, 46, 4	8.51	12	\N	8	2022-12-27
50602	Spy x Family Part 2	1, 4	8.24	13	2022-12-12	7	2022-12-27
53887	Spy x Family Season 2	1, 4	8.07	12	2023-11-13	7	2023-12-25
9253	Steins;Gate	8, 24, 41	9.07	24	\N	8	\N
50594	Suzume no Tojimari	2, 10	8.29	1	\N	8	2023-09-26
7311	Suzumiya Haruhi no Shoushitsu	46, 7, 24, 37	8.60	1	\N	7	2024-01-03
849	Suzumiya Haruhi no Yuuutsu	46, 4, 7, 24	7.82	14	2023-12-31	7	2024-01-01
4382	Suzumiya Haruhi no Yuuutsu (2009)	4, 7, 24	7.22	14	2023-12-31	5	2024-01-03
11757	Sword Art Online	1, 2, 10, 22	7.21	25	\N	6	2022-12-12
21881	Sword Art Online II	1, 2, 10, 22	6.71	24	\N	6	2022-12-12
36439	Sword Art Online Movie: Ordinal Scale - Sword Art Offline	4	6.83	1	\N	6	\N
36474	Sword Art Online: Alicization	1, 2, 10	7.57	24	2022-12-12	6	2022-12-12
42916	Sword Art Online: Progressive Movie - Hoshi Naki Yoru no Aria	1, 2, 10	7.96	1	2022-12-12	5	2022-12-12
35790	Tate no Yuusha no Nariagari	1, 2, 8, 10	7.95	25	\N	5	2022-12-27
2001	Tengen Toppa Gurren Lagann	1, 2, 46, 24	8.63	27	\N	7	2022-12-27
53393	Tengoku Daimakyou	2, 7, 24	8.21	13	2023-06-22	7	2023-07-03
38826	Tenki no Ko	46, 8, 10, 22	8.27	1	\N	6	2022-12-27
37430	Tensei shitara Slime Datta Ken	1, 2, 4, 10	8.14	24	\N	5	2022-12-27
6213	Toaru Kagaku no Railgun	1, 10, 24	7.66	24	\N	7	\N
16049	Toaru Kagaku no Railgun S	1, 10, 24	8.01	24	2022-12-27	8	2022-12-27
38481	Toaru Kagaku no Railgun T	1, 10, 24	8.16	25	2022-12-27	8	2022-12-27
4654	Toaru Majutsu no Index	1, 10, 24	7.34	24	2022-12-27	4	2022-12-27
2236	Toki wo Kakeru Shoujo	46, 8, 22, 24	8.10	1	\N	5	2022-12-27
42249	Tokyo Revengers	1, 8, 37	7.90	24	2023-04-24	6	2023-04-26
50608	Tokyo Revengers: Seiya Kessen-hen	1, 8, 37	7.65	13	2023-04-26	7	2023-05-04
54918	Tokyo Revengers: Tenjiku-hen	1, 8, 37	7.84	13	2023-12-21	7	2023-12-27
523	Tonari no Totoro	2, 46, 37	8.25	1	\N	8	2024-03-15
4224	Toradora!	8, 22	8.06	25	\N	6	2022-12-27
37521	Vinland Saga	1, 2, 8	8.76	24	2022-12-27	8	2022-12-27
49387	Vinland Saga Season 2	1, 2, 8	8.81	24	2023-09-29	9	2023-10-03
53833	Watashi no Oshi wa Akuyaku Reijou.	4, 10, 26	7.34	12	2024-03-18	7	2024-04-24
37786	Yagate Kimi ni Naru	8, 26	7.89	13	2024-06-14	8	2024-06-19
37779	Yakusoku no Neverland	10, 7, 24, 41	8.49	12	\N	8	2022-12-27
28677	Yamada-kun to 7-nin no Majo	4, 7, 22, 37	7.53	12	\N	7	2022-12-27
50346	Yofukashi no Uta	22, 37	7.96	13	\N	7	2022-12-27
54839	Yoru no Kurage wa Oyogenai	8	7.82	12	2024-07-22	7	2024-07-23
35507	Youkoso Jitsuryoku Shijou Shugi no Kyoushitsu e	8, 41	7.85	12	\N	8	2022-12-27
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               4848.dat                                                                                            0000600 0004000 0002000 00000013232 14657417610 0014275 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        52034	46
52034	8
52034	37
31646	8
38101	4
38101	22
39783	4
39783	22
48548	4
48548	22
22199	1
22199	10
41433	1
41433	24
41433	41
22147	4
22147	10
9989	8
9989	37
6347	4
6347	22
5081	7
5081	22
5081	37
49596	30
47917	4
31043	7
31043	37
31043	41
31964	1
33486	1
36456	1
38408	1
41587	1
49918	1
31478	1
31478	7
31478	37
32867	1
32867	7
32867	37
38003	1
38003	7
38003	37
50330	1
50330	7
50330	37
54898	1
54898	7
54898	37
1689	8
1689	22
44511	1
44511	10
28999	8
10800	8
10800	30
14397	8
14397	30
37379	8
37379	30
14741	4
14741	22
18671	4
18671	22
2167	8
2167	22
2167	37
4181	8
4181	22
4181	37
1575	1
1575	46
1575	8
1575	24
2904	1
2904	46
2904	8
2904	24
10029	46
10029	22
42310	1
42310	24
35849	1
35849	8
35849	22
35849	24
15583	1
15583	10
15583	22
15583	24
35120	1
35120	5
35120	14
35120	37
38691	2
38691	4
38691	24
48549	2
48549	4
48549	24
55644	2
55644	4
55644	24
50612	2
50612	4
50612	24
40852	2
40852	4
40852	24
28121	1
28121	2
28121	10
32887	1
32887	2
32887	10
40454	1
40454	2
40454	10
47164	1
47164	2
47164	10
53111	1
53111	2
53111	10
6746	1
6746	7
6746	37
38671	1
38671	10
38671	24
2759	1
2759	46
2759	8
2759	24
2759	41
3784	1
3784	8
3784	24
3784	41
3785	1
3785	46
3785	8
3785	24
3785	41
25537	1
25537	10
25537	37
33049	1
33049	10
33049	37
33050	1
33050	10
33050	37
22297	1
22297	10
22297	37
28701	1
28701	10
28701	37
10087	1
10087	10
10087	37
11741	1
11741	10
11741	37
5114	1
5114	2
5114	8
5114	10
41025	2
41025	8
41025	37
2890	2
2890	46
2890	10
34280	4
34280	22
14131	1
18617	1
18617	46
55102	8
36028	1
36028	2
37989	1
37989	2
40059	1
40059	2
37105	4
31859	1
31859	2
31859	8
31859	10
20583	30
32935	30
28891	30
38883	30
21855	4
21855	7
21855	37
49738	8
49738	37
27989	8
31988	8
39894	8
35678	8
51995	8
28825	4
36296	4
36296	37
42897	22
54856	22
578	8
35557	1
35557	8
35557	10
35557	7
431	2
431	46
431	8
431	10
431	22
11061	1
11061	2
11061	10
12189	7
12189	36
13469	7
13469	36
38472	4
38472	10
38790	1
38790	2
38790	4
38790	10
41514	1
41514	2
41514	4
41514	10
39534	37
46569	1
46569	2
46569	10
14719	1
14719	2
14719	37
20899	1
20899	2
20899	37
26055	1
26055	2
26055	37
31933	1
31933	2
31933	37
37991	1
37991	2
37991	37
48661	1
48661	2
48661	37
51367	1
51367	2
51367	37
53273	1
53273	2
53273	37
40787	8
40787	22
40748	1
40748	46
40748	10
48561	1
48561	10
51009	1
51009	10
5680	4
7791	46
7791	4
6862	4
48316	1
48316	4
48316	10
54595	1
54595	4
54595	10
52198	4
52198	8
52198	22
37999	4
43608	4
43608	22
40591	4
40221	1
40221	2
40221	8
40221	10
40221	7
2593	1
2593	7
2593	37
2593	41
37965	8
37965	30
572	2
572	46
572	10
16662	46
16662	8
16662	22
49828	1
49828	24
53199	1
53199	24
38000	1
38000	46
38000	10
40456	1
40456	10
55701	1
55701	10
51019	1
51019	10
32281	46
32281	8
32281	37
36699	2
36699	46
36699	8
36699	10
9260	1
9260	7
9260	37
31757	1
31757	7
31757	37
31758	1
31758	7
31758	37
28851	46
28851	8
11887	8
11887	22
11887	37
48926	4
51958	4
51958	10
30831	2
30831	4
30831	10
32937	2
32937	4
32937	10
49458	2
49458	4
49458	10
38040	2
38040	4
38040	10
28623	1
28623	10
28623	14
28623	41
34544	1
34544	10
34544	14
34544	41
416	1
416	2
416	46
416	4
416	8
416	22
54492	8
54492	7
18153	1
18153	10
35677	46
35677	8
17265	1
17265	2
17265	10
23321	1
23321	2
23321	10
15051	36
19111	46
19111	36
50709	1
34599	2
34599	8
34599	10
34599	7
34599	24
36862	2
36862	8
36862	10
36862	7
36862	24
41084	2
41084	8
41084	10
41084	7
41084	24
9756	46
9756	8
9756	10
9756	41
512	2
512	46
512	4
512	8
512	10
40496	1
40496	10
52211	1
52211	4
52211	10
55813	1
55813	4
55813	10
585	8
585	22
32182	1
32182	4
32182	37
37510	1
37510	4
37510	37
50172	1
50172	4
50172	37
164	1
164	2
164	46
164	10
51179	2
51179	8
51179	10
51179	9
55888	2
55888	8
55888	10
55888	9
39535	2
39535	8
39535	10
39535	9
45576	2
45576	8
45576	10
45576	9
23755	1
23755	2
23755	10
34577	1
34577	2
34577	10
39701	1
39701	2
39701	10
50593	8
50593	7
50593	22
50593	24
15689	4
15689	22
15689	37
15689	9
11597	4
11597	7
11597	37
11597	9
19815	4
19815	10
19815	9
20507	1
20507	10
30503	1
30503	10
46102	46
46102	8
46102	7
46102	41
30276	1
30276	4
34134	1
34134	4
51678	4
437	5
437	8
437	14
437	41
27775	8
27775	22
27775	24
13601	1
13601	7
13601	24
13601	41
31240	8
31240	10
31240	41
39587	8
39587	10
39587	41
42203	8
42203	10
42203	41
23277	4
23277	22
23277	9
30727	4
30727	22
30727	9
13759	8
13759	22
35851	8
35851	10
37450	8
37450	22
37450	37
38329	8
38329	22
38329	37
199	2
199	46
199	37
1033	1
1033	2
1033	46
1033	8
1033	10
1033	22
41456	1
41456	4
41456	10
41456	24
23273	8
23273	22
3786	1
3786	46
3786	8
3786	24
3786	41
38659	1
38659	2
38659	4
38659	10
16498	1
16498	46
16498	8
16498	41
25777	1
25777	8
25777	41
35760	1
35760	8
35760	41
38524	1
38524	8
38524	41
40028	1
40028	8
40028	41
51535	1
51535	8
51535	41
48583	1
48583	8
48583	41
30	1
30	5
30	46
30	8
30	24
30	41
32	1
32	5
32	8
32	24
32	41
13125	8
13125	10
13125	14
13125	7
13125	24
13125	41
25835	46
25835	4
25835	8
35503	8
40664	8
28735	8
33095	8
48736	22
52991	2
52991	8
52991	10
50265	1
50265	46
50265	4
50602	1
50602	4
53887	1
53887	4
9253	8
9253	24
9253	41
50594	2
50594	10
7311	46
7311	7
7311	24
7311	37
849	46
849	4
849	7
849	24
4382	4
4382	7
4382	24
11757	1
11757	2
11757	10
11757	22
21881	1
21881	2
21881	10
21881	22
36439	4
36474	1
36474	2
36474	10
42916	1
42916	2
42916	10
35790	1
35790	2
35790	8
35790	10
2001	1
2001	2
2001	46
2001	24
53393	2
53393	7
53393	24
38826	46
38826	8
38826	10
38826	22
37430	1
37430	2
37430	4
37430	10
6213	1
6213	10
6213	24
16049	1
16049	10
16049	24
38481	1
38481	10
38481	24
4654	1
4654	10
4654	24
2236	46
2236	8
2236	22
2236	24
42249	1
42249	8
42249	37
50608	1
50608	8
50608	37
54918	1
54918	8
54918	37
523	2
523	46
523	37
4224	8
4224	22
37521	1
37521	2
37521	8
49387	1
49387	2
49387	8
53833	4
53833	10
53833	26
37786	8
37786	26
37779	10
37779	7
37779	24
37779	41
28677	4
28677	7
28677	22
28677	37
50346	22
50346	37
54839	8
35507	8
35507	41
\.


                                                                                                                                                                                                                                                                                                                                                                      4846.dat                                                                                            0000600 0004000 0002000 00000001740 14657417610 0014274 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	Action
2	Adventure
5	Avant Garde
46	Award Winning
28	Boys Love
4	Comedy
8	Drama
10	Fantasy
26	Girls Love
47	Gourmet
14	Horror
7	Mystery
22	Romance
24	Sci-Fi
36	Slice of Life
30	Sports
37	Supernatural
41	Suspense
9	Ecchi
49	Erotica
12	Hentai
50	Adult Cast
51	Anthropomorphic
52	CGDCT
53	Childcare
54	Combat Sports
81	Crossdressing
55	Delinquents
39	Detective
56	Educational
57	Gag Humor
58	Gore
35	Harem
59	High Stakes Game
13	Historical
60	Idols (Female)
61	Idols (Male)
62	Isekai
63	Iyashikei
64	Love Polygon
65	Magical Sex Shift
66	Mahou Shoujo
17	Martial Arts
18	Mecha
67	Medical
38	Military
19	Music
6	Mythology
68	Organized Crime
69	Otaku Culture
20	Parody
70	Performing Arts
71	Pets
40	Psychological
3	Racing
72	Reincarnation
73	Reverse Harem
74	Romantic Subtext
21	Samurai
23	School
75	Showbiz
29	Space
11	Strategy Game
31	Super Power
76	Survival
77	Team Sports
78	Time Travel
32	Vampire
79	Video Game
80	Visual Arts
48	Workplace
43	Josei
15	Kids
42	Seinen
25	Shoujo
27	Shounen
\.


                                restore.sql                                                                                         0000600 0004000 0002000 00000011042 14657417610 0015375 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        --
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

DROP DATABASE anime;
--
-- Name: anime; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE anime WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United States.1252';


ALTER DATABASE anime OWNER TO postgres;

\connect anime

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
-- Name: anime; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.anime (
    id integer NOT NULL,
    title character varying(255) NOT NULL,
    genres character varying(255) NOT NULL,
    score numeric(3,2),
    episodes integer,
    start_date date,
    user_score integer,
    end_date date
);


ALTER TABLE public.anime OWNER TO postgres;

--
-- Name: anime_genres; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.anime_genres (
    anime_id integer NOT NULL,
    genre_id integer NOT NULL
);


ALTER TABLE public.anime_genres OWNER TO postgres;

--
-- Name: genre; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.genre (
    id integer NOT NULL,
    name character varying(255) NOT NULL
);


ALTER TABLE public.genre OWNER TO postgres;

--
-- Data for Name: anime; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.anime (id, title, genres, score, episodes, start_date, user_score, end_date) FROM stdin;
\.
COPY public.anime (id, title, genres, score, episodes, start_date, user_score, end_date) FROM '$$PATH$$/4847.dat';

--
-- Data for Name: anime_genres; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.anime_genres (anime_id, genre_id) FROM stdin;
\.
COPY public.anime_genres (anime_id, genre_id) FROM '$$PATH$$/4848.dat';

--
-- Data for Name: genre; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.genre (id, name) FROM stdin;
\.
COPY public.genre (id, name) FROM '$$PATH$$/4846.dat';

--
-- Name: anime_genres anime_genres_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.anime_genres
    ADD CONSTRAINT anime_genres_pkey PRIMARY KEY (anime_id, genre_id);


--
-- Name: anime anime_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.anime
    ADD CONSTRAINT anime_pkey PRIMARY KEY (id);


--
-- Name: genre genre_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.genre
    ADD CONSTRAINT genre_pkey PRIMARY KEY (id);


--
-- Name: anime_genres anime_genres_anime_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.anime_genres
    ADD CONSTRAINT anime_genres_anime_id_fkey FOREIGN KEY (anime_id) REFERENCES public.anime(id);


--
-- Name: anime_genres anime_genres_genre_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.anime_genres
    ADD CONSTRAINT anime_genres_genre_id_fkey FOREIGN KEY (genre_id) REFERENCES public.genre(id);


--
-- Name: DATABASE anime; Type: ACL; Schema: -; Owner: postgres
--

GRANT CONNECT ON DATABASE anime TO sean;


--
-- Name: TABLE anime; Type: ACL; Schema: public; Owner: postgres
--

GRANT SELECT ON TABLE public.anime TO sean;


--
-- Name: TABLE anime_genres; Type: ACL; Schema: public; Owner: postgres
--

GRANT SELECT ON TABLE public.anime_genres TO sean;


--
-- Name: TABLE genre; Type: ACL; Schema: public; Owner: postgres
--

GRANT SELECT ON TABLE public.genre TO sean;


--
-- PostgreSQL database dump complete
--

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              