--
-- PostgreSQL database dump
--

-- Dumped from database version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)
-- Dumped by pg_dump version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)

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
    game_id integer NOT NULL,
    user_id integer NOT NULL,
    number_of_guesses integer NOT NULL
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
-- Name: players; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.players (
    user_id integer NOT NULL,
    username character varying(22) NOT NULL
);


ALTER TABLE public.players OWNER TO freecodecamp;

--
-- Name: players_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.players_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.players_user_id_seq OWNER TO freecodecamp;

--
-- Name: players_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.players_user_id_seq OWNED BY public.players.user_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: players user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.players ALTER COLUMN user_id SET DEFAULT nextval('public.players_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 2, 7);
INSERT INTO public.games VALUES (2, 3, 945);
INSERT INTO public.games VALUES (3, 3, 722);
INSERT INTO public.games VALUES (4, 4, 102);
INSERT INTO public.games VALUES (5, 4, 46);
INSERT INTO public.games VALUES (6, 3, 434);
INSERT INTO public.games VALUES (7, 3, 348);
INSERT INTO public.games VALUES (8, 3, 750);
INSERT INTO public.games VALUES (9, 5, 117);
INSERT INTO public.games VALUES (10, 5, 924);
INSERT INTO public.games VALUES (11, 6, 868);
INSERT INTO public.games VALUES (12, 6, 58);
INSERT INTO public.games VALUES (13, 5, 220);
INSERT INTO public.games VALUES (14, 5, 440);
INSERT INTO public.games VALUES (15, 5, 197);
INSERT INTO public.games VALUES (16, 2, 12);
INSERT INTO public.games VALUES (17, 2, 6);
INSERT INTO public.games VALUES (18, 7, 1);
INSERT INTO public.games VALUES (19, 7, 689);
INSERT INTO public.games VALUES (20, 8, 85);
INSERT INTO public.games VALUES (21, 8, 714);
INSERT INTO public.games VALUES (22, 7, 685);
INSERT INTO public.games VALUES (23, 7, 352);
INSERT INTO public.games VALUES (24, 7, 549);
INSERT INTO public.games VALUES (25, 9, 158);
INSERT INTO public.games VALUES (26, 9, 352);
INSERT INTO public.games VALUES (27, 10, 454);
INSERT INTO public.games VALUES (28, 10, 626);
INSERT INTO public.games VALUES (29, 9, 396);
INSERT INTO public.games VALUES (30, 9, 109);
INSERT INTO public.games VALUES (31, 9, 985);
INSERT INTO public.games VALUES (32, 11, 267);
INSERT INTO public.games VALUES (33, 11, 16);
INSERT INTO public.games VALUES (34, 12, 453);
INSERT INTO public.games VALUES (35, 12, 980);
INSERT INTO public.games VALUES (36, 11, 639);
INSERT INTO public.games VALUES (37, 11, 92);
INSERT INTO public.games VALUES (38, 11, 874);
INSERT INTO public.games VALUES (39, 13, 741);
INSERT INTO public.games VALUES (40, 13, 256);
INSERT INTO public.games VALUES (41, 14, 374);
INSERT INTO public.games VALUES (42, 14, 807);
INSERT INTO public.games VALUES (43, 13, 93);
INSERT INTO public.games VALUES (44, 13, 394);
INSERT INTO public.games VALUES (45, 13, 592);
INSERT INTO public.games VALUES (46, 15, 51);
INSERT INTO public.games VALUES (47, 15, 391);
INSERT INTO public.games VALUES (48, 16, 309);
INSERT INTO public.games VALUES (49, 16, 167);
INSERT INTO public.games VALUES (50, 15, 23);
INSERT INTO public.games VALUES (51, 15, 464);
INSERT INTO public.games VALUES (52, 15, 699);
INSERT INTO public.games VALUES (53, 17, 236);
INSERT INTO public.games VALUES (54, 17, 329);
INSERT INTO public.games VALUES (55, 18, 606);
INSERT INTO public.games VALUES (56, 18, 524);
INSERT INTO public.games VALUES (57, 17, 810);
INSERT INTO public.games VALUES (58, 17, 540);
INSERT INTO public.games VALUES (59, 17, 980);
INSERT INTO public.games VALUES (60, 19, 459);
INSERT INTO public.games VALUES (61, 19, 88);
INSERT INTO public.games VALUES (62, 20, 927);
INSERT INTO public.games VALUES (63, 20, 282);
INSERT INTO public.games VALUES (64, 19, 518);
INSERT INTO public.games VALUES (65, 19, 360);
INSERT INTO public.games VALUES (66, 19, 947);
INSERT INTO public.games VALUES (67, 21, 130);
INSERT INTO public.games VALUES (68, 21, 487);
INSERT INTO public.games VALUES (69, 22, 387);
INSERT INTO public.games VALUES (70, 22, 620);
INSERT INTO public.games VALUES (71, 21, 774);
INSERT INTO public.games VALUES (72, 21, 593);
INSERT INTO public.games VALUES (73, 21, 307);
INSERT INTO public.games VALUES (74, 23, 467);
INSERT INTO public.games VALUES (75, 23, 466);
INSERT INTO public.games VALUES (76, 24, 339);
INSERT INTO public.games VALUES (77, 24, 764);
INSERT INTO public.games VALUES (78, 23, 763);
INSERT INTO public.games VALUES (79, 23, 1000);
INSERT INTO public.games VALUES (80, 23, 517);
INSERT INTO public.games VALUES (81, 25, 153);
INSERT INTO public.games VALUES (82, 25, 76);
INSERT INTO public.games VALUES (83, 26, 181);
INSERT INTO public.games VALUES (84, 26, 141);
INSERT INTO public.games VALUES (85, 25, 95);
INSERT INTO public.games VALUES (86, 25, 376);
INSERT INTO public.games VALUES (87, 25, 410);
INSERT INTO public.games VALUES (88, 27, 88);
INSERT INTO public.games VALUES (89, 27, 46);
INSERT INTO public.games VALUES (90, 28, 327);
INSERT INTO public.games VALUES (91, 28, 755);
INSERT INTO public.games VALUES (92, 27, 101);
INSERT INTO public.games VALUES (93, 27, 797);
INSERT INTO public.games VALUES (94, 27, 74);
INSERT INTO public.games VALUES (95, 29, 772);
INSERT INTO public.games VALUES (96, 29, 71);
INSERT INTO public.games VALUES (97, 30, 147);
INSERT INTO public.games VALUES (98, 30, 819);
INSERT INTO public.games VALUES (99, 29, 90);
INSERT INTO public.games VALUES (100, 29, 71);
INSERT INTO public.games VALUES (101, 29, 719);


--
-- Data for Name: players; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.players VALUES (1, 'FAbio');
INSERT INTO public.players VALUES (2, 'Fabio');
INSERT INTO public.players VALUES (3, 'user_1772830825340');
INSERT INTO public.players VALUES (4, 'user_1772830825339');
INSERT INTO public.players VALUES (5, 'user_1772830861996');
INSERT INTO public.players VALUES (6, 'user_1772830861995');
INSERT INTO public.players VALUES (7, 'user_1772830973440');
INSERT INTO public.players VALUES (8, 'user_1772830973439');
INSERT INTO public.players VALUES (9, 'user_1772830986480');
INSERT INTO public.players VALUES (10, 'user_1772830986479');
INSERT INTO public.players VALUES (11, 'user_1772831235041');
INSERT INTO public.players VALUES (12, 'user_1772831235040');
INSERT INTO public.players VALUES (13, 'user_1772831245240');
INSERT INTO public.players VALUES (14, 'user_1772831245239');
INSERT INTO public.players VALUES (15, 'user_1772831312007');
INSERT INTO public.players VALUES (16, 'user_1772831312006');
INSERT INTO public.players VALUES (17, 'user_1772831334671');
INSERT INTO public.players VALUES (18, 'user_1772831334670');
INSERT INTO public.players VALUES (19, 'user_1772831343061');
INSERT INTO public.players VALUES (20, 'user_1772831343060');
INSERT INTO public.players VALUES (21, 'user_1772831390095');
INSERT INTO public.players VALUES (22, 'user_1772831390094');
INSERT INTO public.players VALUES (23, 'user_1772833140267');
INSERT INTO public.players VALUES (24, 'user_1772833140266');
INSERT INTO public.players VALUES (25, 'user_1772833228156');
INSERT INTO public.players VALUES (26, 'user_1772833228155');
INSERT INTO public.players VALUES (27, 'user_1772833588456');
INSERT INTO public.players VALUES (28, 'user_1772833588455');
INSERT INTO public.players VALUES (29, 'user_1772833612066');
INSERT INTO public.players VALUES (30, 'user_1772833612065');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 101, true);


--
-- Name: players_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.players_user_id_seq', 30, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: players players_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.players
    ADD CONSTRAINT players_pkey PRIMARY KEY (user_id);


--
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.players(user_id);


--
-- PostgreSQL database dump complete
--

