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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age_billions_year numeric NOT NULL,
    description text,
    has_life boolean
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age_billions_year numeric NOT NULL,
    description text,
    has_life boolean,
    distance_from_earth_in_km integer,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age_billions_year numeric NOT NULL,
    description text,
    has_life boolean,
    distance_from_earth_in_km integer,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: planetary_systems; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planetary_systems (
    name character varying(30) NOT NULL,
    planetary_systems_id integer NOT NULL,
    description text
);


ALTER TABLE public.planetary_systems OWNER TO freecodecamp;

--
-- Name: planetary_systems_planetary_systems_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planetary_systems_planetary_systems_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planetary_systems_planetary_systems_id_seq OWNER TO freecodecamp;

--
-- Name: planetary_systems_planetary_systems_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planetary_systems_planetary_systems_id_seq OWNED BY public.planetary_systems.planetary_systems_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age_billions_year numeric NOT NULL,
    description text,
    has_life boolean,
    distance_from_earth_in_km integer,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: planetary_systems planetary_systems_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planetary_systems ALTER COLUMN planetary_systems_id SET DEFAULT nextval('public.planetary_systems_planetary_systems_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Via Láctea', 13.6, 'Nós vivemos aqui', true);
INSERT INTO public.galaxy VALUES (2, 'Example 2', 13.5, 'This is my Example 2', false);
INSERT INTO public.galaxy VALUES (3, 'Example 3', 13.4, 'This is my Example 3', true);
INSERT INTO public.galaxy VALUES (4, 'Example 4', 13.3, 'This is my Example 4', false);
INSERT INTO public.galaxy VALUES (5, 'Example 5', 13.2, 'This is my Example 5', true);
INSERT INTO public.galaxy VALUES (6, 'Example 6', 13.1, 'This is my Example 6', false);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon 1', 3.1, 'This is my Moon 1', true, 1234561, 1);
INSERT INTO public.moon VALUES (2, 'Moon 2', 3.2, 'This is my Moon 2', true, 1234562, 2);
INSERT INTO public.moon VALUES (3, 'Moon 3', 3.3, 'This is my Moon 3', true, 1234563, 3);
INSERT INTO public.moon VALUES (4, 'Moon 4', 3.4, 'This is my Moon 4', true, 1234564, 4);
INSERT INTO public.moon VALUES (5, 'Moon 5', 3.5, 'This is my Moon 5', true, 1234565, 5);
INSERT INTO public.moon VALUES (6, 'Moon 6', 3.6, 'This is my Moon 6', true, 1234566, 6);
INSERT INTO public.moon VALUES (7, 'Moon 7', 3.7, 'This is my Moon 7', true, 1234567, 7);
INSERT INTO public.moon VALUES (8, 'Moon 8', 3.8, 'This is my Moon 8', true, 1234567, 8);
INSERT INTO public.moon VALUES (9, 'Moon 9', 3.9, 'This is my Moon 9', true, 1234569, 9);
INSERT INTO public.moon VALUES (10, 'Moon 10', 3.1, 'This is my Moon 10', true, 12345610, 10);
INSERT INTO public.moon VALUES (11, 'Moon 11', 3.11, 'This is my Moon 11', true, 12345611, 11);
INSERT INTO public.moon VALUES (12, 'Moon 12', 3.12, 'This is my Moon 12', true, 12345612, 12);
INSERT INTO public.moon VALUES (13, 'Moon 13', 3.13, 'This is my Moon 13', true, 12345613, 1);
INSERT INTO public.moon VALUES (14, 'Moon 14', 3.14, 'This is my Moon 14', true, 12345614, 2);
INSERT INTO public.moon VALUES (15, 'Moon 15', 3.15, 'This is my Moon 15', true, 12345615, 3);
INSERT INTO public.moon VALUES (16, 'Moon 16', 3.16, 'This is my Moon 16', true, 12345616, 4);
INSERT INTO public.moon VALUES (17, 'Moon 17', 3.17, 'This is my Moon 17', true, 12345617, 5);
INSERT INTO public.moon VALUES (18, 'Moon 18', 3.18, 'This is my Moon 18', true, 12345618, 6);
INSERT INTO public.moon VALUES (19, 'Moon 19', 3.19, 'This is my Moon 19', true, 12345619, 7);
INSERT INTO public.moon VALUES (20, 'Moon 20', 3.20, 'This is my Moon 20', true, 12345620, 8);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Planet 1', 1.1, 'This is my Planet 1', true, 1234567891, 1);
INSERT INTO public.planet VALUES (2, 'Planet 2', 1.2, 'This is my Planet 2', true, 1234567892, 2);
INSERT INTO public.planet VALUES (3, 'Planet 3', 1.3, 'This is my Planet 3', true, 1234567893, 3);
INSERT INTO public.planet VALUES (4, 'Planet 4', 1.4, 'This is my Planet 4', true, 1234567894, 4);
INSERT INTO public.planet VALUES (5, 'Planet 5', 1.5, 'This is my Planet 5', true, 1234567895, 5);
INSERT INTO public.planet VALUES (6, 'Planet 6', 1.6, 'This is my Planet 6', true, 1234567896, 6);
INSERT INTO public.planet VALUES (7, 'Planet 7', 1.7, 'This is my Planet 7', true, 1234567897, 1);
INSERT INTO public.planet VALUES (8, 'Planet 8', 1.8, 'This is my Planet 8', true, 1234567898, 2);
INSERT INTO public.planet VALUES (9, 'Planet 9', 1.9, 'This is my Planet 9', true, 1234567899, 3);
INSERT INTO public.planet VALUES (10, 'Planet 10', 1.1, 'This is my Planet 10', true, 1234567810, 4);
INSERT INTO public.planet VALUES (11, 'Planet 11', 1.11, 'This is my Planet 11', true, 1234567811, 5);
INSERT INTO public.planet VALUES (12, 'Planet 12', 1.12, 'This is my Planet 12', true, 1234567812, 6);


--
-- Data for Name: planetary_systems; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planetary_systems VALUES ('System 1', 1, 'This is my System 1');
INSERT INTO public.planetary_systems VALUES ('System 2', 2, 'This is my System 2');
INSERT INTO public.planetary_systems VALUES ('System 3', 3, 'This is my System 3');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Star 1', 2.1, 'This is my Star 1', false, 1234567891, 1);
INSERT INTO public.star VALUES (2, 'Star 2', 2.2, 'This is my Star 2', false, 1234567892, 2);
INSERT INTO public.star VALUES (3, 'Star 3', 2.3, 'This is my Star 3', false, 1234567893, 3);
INSERT INTO public.star VALUES (4, 'Star 4', 2.4, 'This is my Star 4', false, 1234567894, 4);
INSERT INTO public.star VALUES (5, 'Star 5', 2.5, 'This is my Star 5', false, 1234567895, 5);
INSERT INTO public.star VALUES (6, 'Star 6', 2.6, 'This is my Star 6', false, 1234567896, 6);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 15, true);


--
-- Name: planetary_systems_planetary_systems_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planetary_systems_planetary_systems_id_seq', 3, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planetary_systems planetary_systems_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planetary_systems
    ADD CONSTRAINT planetary_systems_name_key UNIQUE (name);


--
-- Name: planetary_systems planetary_systems_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planetary_systems
    ADD CONSTRAINT planetary_systems_pkey PRIMARY KEY (planetary_systems_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--