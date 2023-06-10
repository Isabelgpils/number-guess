--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    user_id integer,
    guess_count integer,
    secret_number integer,
    game_id integer NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(22)
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 402, 402, 1);
INSERT INTO public.games VALUES (1, 601, 601, 2);
INSERT INTO public.games VALUES (2, 260, 260, 3);
INSERT INTO public.games VALUES (2, 28, 28, 4);
INSERT INTO public.games VALUES (1, 205, 203, 5);
INSERT INTO public.games VALUES (1, 574, 573, 6);
INSERT INTO public.games VALUES (1, 170, 170, 7);
INSERT INTO public.games VALUES (3, 332, 332, 8);
INSERT INTO public.games VALUES (4, 184, 184, 9);
INSERT INTO public.games VALUES (4, 323, 323, 10);
INSERT INTO public.games VALUES (3, 559, 557, 11);
INSERT INTO public.games VALUES (3, 135, 134, 12);
INSERT INTO public.games VALUES (3, 573, 573, 13);
INSERT INTO public.games VALUES (5, 20, 952, 14);
INSERT INTO public.games VALUES (6, 445, 445, 15);
INSERT INTO public.games VALUES (6, 552, 552, 16);
INSERT INTO public.games VALUES (7, 907, 907, 17);
INSERT INTO public.games VALUES (7, 498, 498, 18);
INSERT INTO public.games VALUES (6, 635, 633, 19);
INSERT INTO public.games VALUES (6, 788, 787, 20);
INSERT INTO public.games VALUES (6, 740, 740, 21);
INSERT INTO public.games VALUES (8, 251, 251, 22);
INSERT INTO public.games VALUES (8, 605, 605, 23);
INSERT INTO public.games VALUES (9, 293, 293, 24);
INSERT INTO public.games VALUES (9, 748, 748, 25);
INSERT INTO public.games VALUES (8, 689, 687, 26);
INSERT INTO public.games VALUES (8, 300, 299, 27);
INSERT INTO public.games VALUES (8, 396, 396, 28);
INSERT INTO public.games VALUES (10, 13, 954, 29);
INSERT INTO public.games VALUES (11, 175, 175, 30);
INSERT INTO public.games VALUES (11, 468, 468, 31);
INSERT INTO public.games VALUES (12, 631, 631, 32);
INSERT INTO public.games VALUES (12, 525, 525, 33);
INSERT INTO public.games VALUES (11, 524, 522, 34);
INSERT INTO public.games VALUES (11, 727, 726, 35);
INSERT INTO public.games VALUES (11, 523, 523, 36);
INSERT INTO public.games VALUES (13, 990, 990, 37);
INSERT INTO public.games VALUES (13, 144, 144, 38);
INSERT INTO public.games VALUES (14, 31, 31, 39);
INSERT INTO public.games VALUES (14, 187, 187, 40);
INSERT INTO public.games VALUES (13, 118, 116, 41);
INSERT INTO public.games VALUES (13, 2, 1, 42);
INSERT INTO public.games VALUES (13, 332, 332, 43);
INSERT INTO public.games VALUES (10, 19, 488, 44);
INSERT INTO public.games VALUES (15, 367, 367, 45);
INSERT INTO public.games VALUES (15, 35, 35, 46);
INSERT INTO public.games VALUES (16, 557, 557, 47);
INSERT INTO public.games VALUES (16, 735, 735, 48);
INSERT INTO public.games VALUES (15, 536, 534, 49);
INSERT INTO public.games VALUES (15, 26, 25, 50);
INSERT INTO public.games VALUES (15, 319, 319, 51);
INSERT INTO public.games VALUES (17, 201, 201, 52);
INSERT INTO public.games VALUES (17, 868, 868, 53);
INSERT INTO public.games VALUES (18, 89, 89, 54);
INSERT INTO public.games VALUES (18, 942, 942, 55);
INSERT INTO public.games VALUES (17, 627, 625, 56);
INSERT INTO public.games VALUES (17, 420, 419, 57);
INSERT INTO public.games VALUES (17, 493, 493, 58);
INSERT INTO public.games VALUES (19, 397, 397, 59);
INSERT INTO public.games VALUES (19, 149, 149, 60);
INSERT INTO public.games VALUES (20, 135, 135, 61);
INSERT INTO public.games VALUES (20, 183, 183, 62);
INSERT INTO public.games VALUES (19, 561, 559, 63);
INSERT INTO public.games VALUES (19, 466, 465, 64);
INSERT INTO public.games VALUES (19, 286, 286, 65);
INSERT INTO public.games VALUES (21, 477, 477, 66);
INSERT INTO public.games VALUES (21, 779, 779, 67);
INSERT INTO public.games VALUES (22, 520, 520, 68);
INSERT INTO public.games VALUES (22, 266, 266, 69);
INSERT INTO public.games VALUES (21, 95, 93, 70);
INSERT INTO public.games VALUES (21, 913, 912, 71);
INSERT INTO public.games VALUES (21, 495, 495, 72);
INSERT INTO public.games VALUES (10, 16, 897, 73);
INSERT INTO public.games VALUES (23, 86, 86, 74);
INSERT INTO public.games VALUES (23, 341, 341, 75);
INSERT INTO public.games VALUES (24, 283, 283, 76);
INSERT INTO public.games VALUES (24, 168, 168, 77);
INSERT INTO public.games VALUES (23, 528, 526, 78);
INSERT INTO public.games VALUES (23, 53, 52, 79);
INSERT INTO public.games VALUES (23, 73, 73, 80);
INSERT INTO public.games VALUES (26, 439, 439, 81);
INSERT INTO public.games VALUES (26, 474, 474, 82);
INSERT INTO public.games VALUES (27, 892, 892, 83);
INSERT INTO public.games VALUES (27, 910, 910, 84);
INSERT INTO public.games VALUES (26, 884, 882, 85);
INSERT INTO public.games VALUES (26, 151, 150, 86);
INSERT INTO public.games VALUES (26, 579, 579, 87);
INSERT INTO public.games VALUES (28, 650, 650, 88);
INSERT INTO public.games VALUES (28, 585, 585, 89);
INSERT INTO public.games VALUES (29, 131, 131, 90);
INSERT INTO public.games VALUES (29, 4, 4, 91);
INSERT INTO public.games VALUES (28, 170, 168, 92);
INSERT INTO public.games VALUES (28, 441, 440, 93);
INSERT INTO public.games VALUES (28, 274, 274, 94);
INSERT INTO public.games VALUES (10, 23, 402, 95);
INSERT INTO public.games VALUES (30, 491, 491, 96);
INSERT INTO public.games VALUES (30, 495, 495, 97);
INSERT INTO public.games VALUES (31, 716, 716, 98);
INSERT INTO public.games VALUES (31, 679, 679, 99);
INSERT INTO public.games VALUES (30, 804, 802, 100);
INSERT INTO public.games VALUES (30, 799, 798, 101);
INSERT INTO public.games VALUES (30, 529, 529, 102);
INSERT INTO public.games VALUES (32, 953, 953, 103);
INSERT INTO public.games VALUES (32, 814, 814, 104);
INSERT INTO public.games VALUES (33, 598, 598, 105);
INSERT INTO public.games VALUES (33, 731, 731, 106);
INSERT INTO public.games VALUES (32, 957, 955, 107);
INSERT INTO public.games VALUES (32, 113, 112, 108);
INSERT INTO public.games VALUES (32, 139, 139, 109);
INSERT INTO public.games VALUES (34, 982, 982, 110);
INSERT INTO public.games VALUES (34, 465, 465, 111);
INSERT INTO public.games VALUES (35, 585, 585, 112);
INSERT INTO public.games VALUES (35, 106, 106, 113);
INSERT INTO public.games VALUES (34, 77, 75, 114);
INSERT INTO public.games VALUES (34, 316, 315, 115);
INSERT INTO public.games VALUES (34, 323, 323, 116);
INSERT INTO public.games VALUES (36, 308, 308, 117);
INSERT INTO public.games VALUES (36, 962, 962, 118);
INSERT INTO public.games VALUES (37, 970, 970, 119);
INSERT INTO public.games VALUES (37, 581, 581, 120);
INSERT INTO public.games VALUES (36, 143, 141, 121);
INSERT INTO public.games VALUES (36, 8, 7, 122);
INSERT INTO public.games VALUES (36, 901, 901, 123);
INSERT INTO public.games VALUES (38, 198, 198, 124);
INSERT INTO public.games VALUES (38, 701, 701, 125);
INSERT INTO public.games VALUES (39, 434, 434, 126);
INSERT INTO public.games VALUES (39, 925, 925, 127);
INSERT INTO public.games VALUES (38, 394, 392, 128);
INSERT INTO public.games VALUES (38, 39, 38, 129);
INSERT INTO public.games VALUES (38, 444, 444, 130);
INSERT INTO public.games VALUES (40, 82, 82, 131);
INSERT INTO public.games VALUES (40, 64, 64, 132);
INSERT INTO public.games VALUES (41, 881, 881, 133);
INSERT INTO public.games VALUES (41, 615, 615, 134);
INSERT INTO public.games VALUES (40, 661, 659, 135);
INSERT INTO public.games VALUES (40, 182, 181, 136);
INSERT INTO public.games VALUES (40, 707, 707, 137);
INSERT INTO public.games VALUES (42, 10, 603, 138);
INSERT INTO public.games VALUES (43, 401, 401, 139);
INSERT INTO public.games VALUES (43, 380, 380, 140);
INSERT INTO public.games VALUES (44, 348, 348, 141);
INSERT INTO public.games VALUES (44, 332, 332, 142);
INSERT INTO public.games VALUES (43, 148, 146, 143);
INSERT INTO public.games VALUES (43, 415, 414, 144);
INSERT INTO public.games VALUES (43, 328, 328, 145);
INSERT INTO public.games VALUES (45, 9, 117, 146);
INSERT INTO public.games VALUES (46, 321, 321, 147);
INSERT INTO public.games VALUES (46, 293, 293, 148);
INSERT INTO public.games VALUES (47, 554, 554, 149);
INSERT INTO public.games VALUES (47, 703, 703, 150);
INSERT INTO public.games VALUES (46, 84, 82, 151);
INSERT INTO public.games VALUES (46, 75, 74, 152);
INSERT INTO public.games VALUES (46, 33, 33, 153);
INSERT INTO public.games VALUES (48, 991, 991, 154);
INSERT INTO public.games VALUES (48, 153, 153, 155);
INSERT INTO public.games VALUES (49, 206, 206, 156);
INSERT INTO public.games VALUES (49, 491, 491, 157);
INSERT INTO public.games VALUES (48, 711, 709, 158);
INSERT INTO public.games VALUES (48, 799, 798, 159);
INSERT INTO public.games VALUES (48, 795, 795, 160);
INSERT INTO public.games VALUES (45, 12, 361, 161);
INSERT INTO public.games VALUES (50, 13, 368, 162);
INSERT INTO public.games VALUES (51, 59, 59, 163);
INSERT INTO public.games VALUES (51, 218, 218, 164);
INSERT INTO public.games VALUES (52, 16, 16, 165);
INSERT INTO public.games VALUES (52, 104, 104, 166);
INSERT INTO public.games VALUES (51, 996, 994, 167);
INSERT INTO public.games VALUES (51, 156, 155, 168);
INSERT INTO public.games VALUES (51, 876, 876, 169);
INSERT INTO public.games VALUES (53, 162, 162, 170);
INSERT INTO public.games VALUES (53, 103, 103, 171);
INSERT INTO public.games VALUES (54, 198, 198, 172);
INSERT INTO public.games VALUES (54, 480, 480, 173);
INSERT INTO public.games VALUES (53, 90, 88, 174);
INSERT INTO public.games VALUES (53, 769, 768, 175);
INSERT INTO public.games VALUES (53, 626, 626, 176);
INSERT INTO public.games VALUES (55, 616, 616, 177);
INSERT INTO public.games VALUES (55, 614, 614, 178);
INSERT INTO public.games VALUES (56, 892, 892, 179);
INSERT INTO public.games VALUES (56, 713, 713, 180);
INSERT INTO public.games VALUES (55, 361, 359, 181);
INSERT INTO public.games VALUES (55, 867, 866, 182);
INSERT INTO public.games VALUES (55, 210, 210, 183);
INSERT INTO public.games VALUES (57, 549, 549, 184);
INSERT INTO public.games VALUES (57, 225, 225, 185);
INSERT INTO public.games VALUES (58, 492, 492, 186);
INSERT INTO public.games VALUES (58, 22, 22, 187);
INSERT INTO public.games VALUES (57, 390, 388, 188);
INSERT INTO public.games VALUES (57, 415, 414, 189);
INSERT INTO public.games VALUES (57, 714, 714, 190);
INSERT INTO public.games VALUES (59, 309, 309, 191);
INSERT INTO public.games VALUES (59, 583, 583, 192);
INSERT INTO public.games VALUES (60, 331, 331, 193);
INSERT INTO public.games VALUES (60, 827, 827, 194);
INSERT INTO public.games VALUES (59, 92, 90, 195);
INSERT INTO public.games VALUES (59, 818, 817, 196);
INSERT INTO public.games VALUES (59, 93, 93, 197);
INSERT INTO public.games VALUES (10, 12, 936, 198);
INSERT INTO public.games VALUES (61, 606, 606, 199);
INSERT INTO public.games VALUES (61, 821, 821, 200);
INSERT INTO public.games VALUES (62, 828, 828, 201);
INSERT INTO public.games VALUES (62, 275, 275, 202);
INSERT INTO public.games VALUES (61, 963, 961, 203);
INSERT INTO public.games VALUES (61, 936, 935, 204);
INSERT INTO public.games VALUES (61, 658, 658, 205);
INSERT INTO public.games VALUES (63, 756, 756, 206);
INSERT INTO public.games VALUES (63, 78, 78, 207);
INSERT INTO public.games VALUES (64, 493, 493, 208);
INSERT INTO public.games VALUES (64, 807, 807, 209);
INSERT INTO public.games VALUES (63, 224, 222, 210);
INSERT INTO public.games VALUES (63, 675, 674, 211);
INSERT INTO public.games VALUES (63, 578, 578, 212);
INSERT INTO public.games VALUES (65, 2, 2, 213);
INSERT INTO public.games VALUES (65, 692, 692, 214);
INSERT INTO public.games VALUES (66, 3, 3, 215);
INSERT INTO public.games VALUES (66, 779, 779, 216);
INSERT INTO public.games VALUES (65, 918, 916, 217);
INSERT INTO public.games VALUES (65, 363, 362, 218);
INSERT INTO public.games VALUES (65, 438, 438, 219);
INSERT INTO public.games VALUES (67, 187, 187, 220);
INSERT INTO public.games VALUES (67, 575, 575, 221);
INSERT INTO public.games VALUES (68, 350, 350, 222);
INSERT INTO public.games VALUES (68, 880, 880, 223);
INSERT INTO public.games VALUES (67, 893, 891, 224);
INSERT INTO public.games VALUES (67, 560, 559, 225);
INSERT INTO public.games VALUES (67, 122, 122, 226);
INSERT INTO public.games VALUES (69, 571, 571, 227);
INSERT INTO public.games VALUES (69, 548, 548, 228);
INSERT INTO public.games VALUES (70, 931, 931, 229);
INSERT INTO public.games VALUES (70, 246, 246, 230);
INSERT INTO public.games VALUES (69, 81, 79, 231);
INSERT INTO public.games VALUES (69, 706, 705, 232);
INSERT INTO public.games VALUES (69, 452, 452, 233);
INSERT INTO public.games VALUES (71, 911, 911, 234);
INSERT INTO public.games VALUES (71, 84, 84, 235);
INSERT INTO public.games VALUES (72, 761, 761, 236);
INSERT INTO public.games VALUES (72, 551, 551, 237);
INSERT INTO public.games VALUES (71, 298, 296, 238);
INSERT INTO public.games VALUES (71, 101, 100, 239);
INSERT INTO public.games VALUES (71, 947, 947, 240);
INSERT INTO public.games VALUES (73, 610, 610, 241);
INSERT INTO public.games VALUES (73, 571, 571, 242);
INSERT INTO public.games VALUES (74, 105, 105, 243);
INSERT INTO public.games VALUES (74, 68, 68, 244);
INSERT INTO public.games VALUES (73, 998, 996, 245);
INSERT INTO public.games VALUES (73, 71, 70, 246);
INSERT INTO public.games VALUES (73, 502, 502, 247);
INSERT INTO public.games VALUES (10, 10, 199, 248);
INSERT INTO public.games VALUES (75, 42, 42, 249);
INSERT INTO public.games VALUES (75, 480, 480, 250);
INSERT INTO public.games VALUES (76, 627, 627, 251);
INSERT INTO public.games VALUES (76, 495, 495, 252);
INSERT INTO public.games VALUES (75, 163, 161, 253);
INSERT INTO public.games VALUES (75, 181, 180, 254);
INSERT INTO public.games VALUES (75, 531, 531, 255);
INSERT INTO public.games VALUES (10, 17, 958, 256);
INSERT INTO public.games VALUES (77, 796, 795, 257);
INSERT INTO public.games VALUES (77, 621, 620, 258);
INSERT INTO public.games VALUES (78, 44, 43, 259);
INSERT INTO public.games VALUES (78, 549, 548, 260);
INSERT INTO public.games VALUES (77, 910, 907, 261);
INSERT INTO public.games VALUES (77, 168, 166, 262);
INSERT INTO public.games VALUES (77, 770, 769, 263);
INSERT INTO public.games VALUES (79, 441, 440, 264);
INSERT INTO public.games VALUES (79, 877, 876, 265);
INSERT INTO public.games VALUES (80, 107, 106, 266);
INSERT INTO public.games VALUES (80, 596, 595, 267);
INSERT INTO public.games VALUES (79, 987, 984, 268);
INSERT INTO public.games VALUES (79, 896, 894, 269);
INSERT INTO public.games VALUES (79, 114, 113, 270);
INSERT INTO public.games VALUES (81, 35, 34, 271);
INSERT INTO public.games VALUES (81, 500, 499, 272);
INSERT INTO public.games VALUES (82, 666, 665, 273);
INSERT INTO public.games VALUES (82, 326, 325, 274);
INSERT INTO public.games VALUES (81, 670, 667, 275);
INSERT INTO public.games VALUES (81, 6, 4, 276);
INSERT INTO public.games VALUES (81, 492, 491, 277);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'user_1686350854720');
INSERT INTO public.users VALUES (2, 'user_1686350854719');
INSERT INTO public.users VALUES (3, 'user_1686350873678');
INSERT INTO public.users VALUES (4, 'user_1686350873677');
INSERT INTO public.users VALUES (5, 'Jacob');
INSERT INTO public.users VALUES (6, 'user_1686351056936');
INSERT INTO public.users VALUES (7, 'user_1686351056935');
INSERT INTO public.users VALUES (8, 'user_1686351080528');
INSERT INTO public.users VALUES (9, 'user_1686351080527');
INSERT INTO public.users VALUES (10, 'Olivia');
INSERT INTO public.users VALUES (11, 'user_1686351193091');
INSERT INTO public.users VALUES (12, 'user_1686351193090');
INSERT INTO public.users VALUES (13, 'user_1686351216592');
INSERT INTO public.users VALUES (14, 'user_1686351216591');
INSERT INTO public.users VALUES (15, 'user_1686351325694');
INSERT INTO public.users VALUES (16, 'user_1686351325693');
INSERT INTO public.users VALUES (17, 'user_1686351457512');
INSERT INTO public.users VALUES (18, 'user_1686351457511');
INSERT INTO public.users VALUES (19, 'user_1686351957815');
INSERT INTO public.users VALUES (20, 'user_1686351957814');
INSERT INTO public.users VALUES (21, 'user_1686352132151');
INSERT INTO public.users VALUES (22, 'user_1686352132150');
INSERT INTO public.users VALUES (23, 'user_1686352365736');
INSERT INTO public.users VALUES (24, 'user_1686352365735');
INSERT INTO public.users VALUES (25, 'Brenda');
INSERT INTO public.users VALUES (26, 'user_1686352475631');
INSERT INTO public.users VALUES (27, 'user_1686352475630');
INSERT INTO public.users VALUES (28, 'user_1686352508133');
INSERT INTO public.users VALUES (29, 'user_1686352508132');
INSERT INTO public.users VALUES (30, 'user_1686353053227');
INSERT INTO public.users VALUES (31, 'user_1686353053226');
INSERT INTO public.users VALUES (32, 'user_1686353096543');
INSERT INTO public.users VALUES (33, 'user_1686353096542');
INSERT INTO public.users VALUES (34, 'user_1686353114552');
INSERT INTO public.users VALUES (35, 'user_1686353114551');
INSERT INTO public.users VALUES (36, 'user_1686353223259');
INSERT INTO public.users VALUES (37, 'user_1686353223258');
INSERT INTO public.users VALUES (38, 'user_1686354604408');
INSERT INTO public.users VALUES (39, 'user_1686354604407');
INSERT INTO public.users VALUES (40, 'user_1686354921528');
INSERT INTO public.users VALUES (41, 'user_1686354921527');
INSERT INTO public.users VALUES (42, 'Glenn');
INSERT INTO public.users VALUES (43, 'user_1686355009749');
INSERT INTO public.users VALUES (44, 'user_1686355009748');
INSERT INTO public.users VALUES (45, 'Luna Bear');
INSERT INTO public.users VALUES (46, 'user_1686355589166');
INSERT INTO public.users VALUES (47, 'user_1686355589165');
INSERT INTO public.users VALUES (48, 'user_1686355652354');
INSERT INTO public.users VALUES (49, 'user_1686355652353');
INSERT INTO public.users VALUES (50, 'Fortunata');
INSERT INTO public.users VALUES (51, 'user_1686355874279');
INSERT INTO public.users VALUES (52, 'user_1686355874278');
INSERT INTO public.users VALUES (53, 'user_1686356123431');
INSERT INTO public.users VALUES (54, 'user_1686356123430');
INSERT INTO public.users VALUES (55, 'user_1686356184090');
INSERT INTO public.users VALUES (56, 'user_1686356184089');
INSERT INTO public.users VALUES (57, 'user_1686360435640');
INSERT INTO public.users VALUES (58, 'user_1686360435639');
INSERT INTO public.users VALUES (59, 'user_1686361532217');
INSERT INTO public.users VALUES (60, 'user_1686361532216');
INSERT INTO public.users VALUES (61, 'user_1686361664132');
INSERT INTO public.users VALUES (62, 'user_1686361664131');
INSERT INTO public.users VALUES (63, 'user_1686361763678');
INSERT INTO public.users VALUES (64, 'user_1686361763676');
INSERT INTO public.users VALUES (65, 'user_1686361836432');
INSERT INTO public.users VALUES (66, 'user_1686361836431');
INSERT INTO public.users VALUES (67, 'user_1686362954941');
INSERT INTO public.users VALUES (68, 'user_1686362954940');
INSERT INTO public.users VALUES (69, 'user_1686363161188');
INSERT INTO public.users VALUES (70, 'user_1686363161187');
INSERT INTO public.users VALUES (71, 'user_1686363259622');
INSERT INTO public.users VALUES (72, 'user_1686363259621');
INSERT INTO public.users VALUES (73, 'user_1686363322137');
INSERT INTO public.users VALUES (74, 'user_1686363322136');
INSERT INTO public.users VALUES (75, 'user_1686363787488');
INSERT INTO public.users VALUES (76, 'user_1686363787487');
INSERT INTO public.users VALUES (77, 'user_1686364090773');
INSERT INTO public.users VALUES (78, 'user_1686364090772');
INSERT INTO public.users VALUES (79, 'user_1686364142215');
INSERT INTO public.users VALUES (80, 'user_1686364142214');
INSERT INTO public.users VALUES (81, 'user_1686364177749');
INSERT INTO public.users VALUES (82, 'user_1686364177748');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 277, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 82, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

