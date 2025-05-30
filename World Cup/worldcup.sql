--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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

DROP DATABASE worldcup;
--
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE worldcup OWNER TO freecodecamp;

\connect worldcup

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
    year integer NOT NULL,
    round character varying NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL
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
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name character varying NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_team_id_seq OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (161, 2018, 'Final', 155, 156, 4, 2);
INSERT INTO public.games VALUES (162, 2018, 'Third Place', 157, 158, 2, 0);
INSERT INTO public.games VALUES (163, 2018, 'Semi-Final', 156, 158, 2, 1);
INSERT INTO public.games VALUES (164, 2018, 'Semi-Final', 155, 157, 1, 0);
INSERT INTO public.games VALUES (165, 2018, 'Quarter-Final', 156, 159, 3, 2);
INSERT INTO public.games VALUES (166, 2018, 'Quarter-Final', 158, 160, 2, 0);
INSERT INTO public.games VALUES (167, 2018, 'Quarter-Final', 157, 161, 2, 1);
INSERT INTO public.games VALUES (168, 2018, 'Quarter-Final', 155, 162, 2, 0);
INSERT INTO public.games VALUES (169, 2018, 'Eighth-Final', 158, 163, 2, 1);
INSERT INTO public.games VALUES (170, 2018, 'Eighth-Final', 160, 164, 1, 0);
INSERT INTO public.games VALUES (171, 2018, 'Eighth-Final', 157, 165, 3, 2);
INSERT INTO public.games VALUES (172, 2018, 'Eighth-Final', 161, 166, 2, 0);
INSERT INTO public.games VALUES (173, 2018, 'Eighth-Final', 156, 167, 2, 1);
INSERT INTO public.games VALUES (174, 2018, 'Eighth-Final', 159, 168, 2, 1);
INSERT INTO public.games VALUES (175, 2018, 'Eighth-Final', 162, 169, 2, 1);
INSERT INTO public.games VALUES (176, 2018, 'Eighth-Final', 155, 170, 4, 3);
INSERT INTO public.games VALUES (177, 2014, 'Final', 171, 170, 1, 0);
INSERT INTO public.games VALUES (178, 2014, 'Third Place', 172, 161, 3, 0);
INSERT INTO public.games VALUES (179, 2014, 'Semi-Final', 170, 172, 1, 0);
INSERT INTO public.games VALUES (180, 2014, 'Semi-Final', 171, 161, 7, 1);
INSERT INTO public.games VALUES (181, 2014, 'Quarter-Final', 172, 173, 1, 0);
INSERT INTO public.games VALUES (182, 2014, 'Quarter-Final', 170, 157, 1, 0);
INSERT INTO public.games VALUES (183, 2014, 'Quarter-Final', 161, 163, 2, 1);
INSERT INTO public.games VALUES (184, 2014, 'Quarter-Final', 171, 155, 1, 0);
INSERT INTO public.games VALUES (185, 2014, 'Eighth-Final', 161, 174, 2, 1);
INSERT INTO public.games VALUES (186, 2014, 'Eighth-Final', 163, 162, 2, 0);
INSERT INTO public.games VALUES (187, 2014, 'Eighth-Final', 155, 175, 2, 0);
INSERT INTO public.games VALUES (188, 2014, 'Eighth-Final', 171, 176, 2, 1);
INSERT INTO public.games VALUES (189, 2014, 'Eighth-Final', 172, 166, 2, 1);
INSERT INTO public.games VALUES (190, 2014, 'Eighth-Final', 173, 177, 2, 1);
INSERT INTO public.games VALUES (191, 2014, 'Eighth-Final', 170, 164, 1, 0);
INSERT INTO public.games VALUES (192, 2014, 'Eighth-Final', 157, 178, 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (155, 'France');
INSERT INTO public.teams VALUES (156, 'Croatia');
INSERT INTO public.teams VALUES (157, 'Belgium');
INSERT INTO public.teams VALUES (158, 'England');
INSERT INTO public.teams VALUES (159, 'Russia');
INSERT INTO public.teams VALUES (160, 'Sweden');
INSERT INTO public.teams VALUES (161, 'Brazil');
INSERT INTO public.teams VALUES (162, 'Uruguay');
INSERT INTO public.teams VALUES (163, 'Colombia');
INSERT INTO public.teams VALUES (164, 'Switzerland');
INSERT INTO public.teams VALUES (165, 'Japan');
INSERT INTO public.teams VALUES (166, 'Mexico');
INSERT INTO public.teams VALUES (167, 'Denmark');
INSERT INTO public.teams VALUES (168, 'Spain');
INSERT INTO public.teams VALUES (169, 'Portugal');
INSERT INTO public.teams VALUES (170, 'Argentina');
INSERT INTO public.teams VALUES (171, 'Germany');
INSERT INTO public.teams VALUES (172, 'Netherlands');
INSERT INTO public.teams VALUES (173, 'Costa Rica');
INSERT INTO public.teams VALUES (174, 'Chile');
INSERT INTO public.teams VALUES (175, 'Nigeria');
INSERT INTO public.teams VALUES (176, 'Algeria');
INSERT INTO public.teams VALUES (177, 'Greece');
INSERT INTO public.teams VALUES (178, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 192, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 178, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams teams_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_name_key UNIQUE (name);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: games fk_opponent; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT fk_opponent FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games fk_winner; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT fk_winner FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

