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
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(22),
    games_played integer,
    best_game integer
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
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (23, 'plinio', 1, 1);
INSERT INTO public.users VALUES (24, 'user_1755805074196', 1, 269);
INSERT INTO public.users VALUES (25, 'user_1755805074196', 2, 269);
INSERT INTO public.users VALUES (26, 'user_1755805074195', 1, 49);
INSERT INTO public.users VALUES (27, 'user_1755805074195', 2, 49);
INSERT INTO public.users VALUES (28, 'user_1755805074196', 2, 269);
INSERT INTO public.users VALUES (29, 'user_1755805074196', 2, 269);
INSERT INTO public.users VALUES (30, 'user_1755805074196', 2, 269);
INSERT INTO public.users VALUES (31, 'teste', 1, 10);
INSERT INTO public.users VALUES (32, 'plinio', 1, 1);
INSERT INTO public.users VALUES (33, 'user_1755805233804', 1, 465);
INSERT INTO public.users VALUES (34, 'user_1755805233804', 2, 63);
INSERT INTO public.users VALUES (35, 'user_1755805233803', 1, 782);
INSERT INTO public.users VALUES (36, 'user_1755805233803', 2, 782);
INSERT INTO public.users VALUES (37, 'user_1755805233804', 2, 465);
INSERT INTO public.users VALUES (38, 'user_1755805233804', 2, 352);
INSERT INTO public.users VALUES (39, 'user_1755805233804', 2, 465);
INSERT INTO public.users VALUES (40, 'user_1755805334296', 1, 924);
INSERT INTO public.users VALUES (41, 'user_1755805334296', 2, 761);
INSERT INTO public.users VALUES (42, 'user_1755805334295', 1, 758);
INSERT INTO public.users VALUES (43, 'user_1755805334295', 2, 464);
INSERT INTO public.users VALUES (44, 'user_1755805334296', 2, 521);
INSERT INTO public.users VALUES (45, 'user_1755805334296', 2, 887);
INSERT INTO public.users VALUES (46, 'user_1755805334296', 2, 919);
INSERT INTO public.users VALUES (47, 'user_1755805403114', 1, 224);
INSERT INTO public.users VALUES (48, 'user_1755805403114', 2, 30);
INSERT INTO public.users VALUES (49, 'user_1755805403113', 1, 401);
INSERT INTO public.users VALUES (50, 'user_1755805403113', 2, 401);
INSERT INTO public.users VALUES (51, 'user_1755805403114', 2, 224);
INSERT INTO public.users VALUES (52, 'user_1755805403114', 2, 224);
INSERT INTO public.users VALUES (53, 'user_1755805403114', 2, 224);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 53, true);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- PostgreSQL database dump complete
--

