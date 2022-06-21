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
    name character varying(50) NOT NULL,
    distance_from_earth numeric,
    description text,
    has_life boolean
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(50) NOT NULL,
    age_in_millions_of_years integer,
    distance_from_earth numeric,
    year_duration integer,
    description text,
    has_life boolean,
    planet_id integer NOT NULL
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: new; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.new (
    new_id integer NOT NULL,
    name character varying(40) NOT NULL,
    description text,
    random numeric,
    random_id integer
);


ALTER TABLE public.new OWNER TO freecodecamp;

--
-- Name: new_new_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.new_new_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.new_new_id_seq OWNER TO freecodecamp;

--
-- Name: new_new_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.new_new_id_seq OWNED BY public.new.new_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(50) NOT NULL,
    age_in_millions_of_years integer,
    distance_from_earth numeric,
    year_duration integer,
    description text,
    has_life boolean,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(50) NOT NULL,
    age_in_millions_of_years integer,
    distance_from_earth numeric,
    year_duration integer,
    description text,
    has_life boolean,
    galaxy_id integer NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_id_seq OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_id_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_id_seq'::regclass);


--
-- Name: new new_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.new ALTER COLUMN new_id SET DEFAULT nextval('public.new_new_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Andromeda', 2.5, NULL, true);
INSERT INTO public.galaxy VALUES (2, 'Antennae Galaxies', 45, NULL, true);
INSERT INTO public.galaxy VALUES (3, 'Backward', 111, NULL, true);
INSERT INTO public.galaxy VALUES (4, 'Centauros A', 10, NULL, true);
INSERT INTO public.galaxy VALUES (5, 'Milk Way', 0, NULL, true);
INSERT INTO public.galaxy VALUES (6, 'Eye of Sauron', 10, NULL, true);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'A', NULL, NULL, NULL, NULL, NULL, 2);
INSERT INTO public.moon VALUES (2, 'b', NULL, NULL, NULL, NULL, NULL, 3);
INSERT INTO public.moon VALUES (3, 'c', NULL, NULL, NULL, NULL, NULL, 5);
INSERT INTO public.moon VALUES (4, 'd', NULL, NULL, NULL, NULL, NULL, 2);
INSERT INTO public.moon VALUES (5, 'e', NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (6, 'f', NULL, NULL, NULL, NULL, NULL, 2);
INSERT INTO public.moon VALUES (7, 'g', NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (8, 'h', NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (9, 'i', NULL, NULL, NULL, NULL, NULL, 3);
INSERT INTO public.moon VALUES (10, 'j', NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (11, 'k', NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (12, 'l', NULL, NULL, NULL, NULL, NULL, 3);
INSERT INTO public.moon VALUES (13, 'm', NULL, NULL, NULL, NULL, NULL, 5);
INSERT INTO public.moon VALUES (14, 'n', NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (15, 'o', NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (16, 'p', NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (17, 'q', NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (18, 'r', NULL, NULL, NULL, NULL, NULL, 2);
INSERT INTO public.moon VALUES (19, 's', NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (20, 'T', NULL, NULL, NULL, NULL, NULL, 1);


--
-- Data for Name: new; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.new VALUES (1, 'PRIMEIRO', NULL, 20, 123);
INSERT INTO public.new VALUES (2, 'SEGUNDO', NULL, 10, 456);
INSERT INTO public.new VALUES (3, 'TERCEIRO', NULL, 30, 567);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (3, 'Mars', 1, 0.1, 6, NULL, true, NULL);
INSERT INTO public.planet VALUES (2, 'Venus', 2, 0.1, 4, NULL, true, 2);
INSERT INTO public.planet VALUES (1, 'Uranus', 2, 0.5, 2, NULL, true, 3);
INSERT INTO public.planet VALUES (4, 'Saturn', 2, 3, 0, NULL, true, 1);
INSERT INTO public.planet VALUES (5, 'Jupiter', 1, 2, 0, NULL, true, 1);
INSERT INTO public.planet VALUES (6, 'Neptune', 2, 3, 0, NULL, true, 2);
INSERT INTO public.planet VALUES (7, 'Mercury', 1, 3, 0, NULL, true, 3);
INSERT INTO public.planet VALUES (8, 'Bannas', 23, 4, 123, NULL, false, 4);
INSERT INTO public.planet VALUES (9, 'Abacxi', 231, 4, 54, NULL, false, 1);
INSERT INTO public.planet VALUES (10, 'Moragno', 234, 4, 65, NULL, false, 5);
INSERT INTO public.planet VALUES (11, 'kaquis', 1, 2, 40, NULL, false, 2);
INSERT INTO public.planet VALUES (12, 'Yahog', 34, 42, 450, NULL, false, 3);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Antares', 11, 550, 880, 'The larger star in Milky way', true, 5);
INSERT INTO public.star VALUES (2, 'Betelgeuse', 9, 643, 36, NULL, true, 5);
INSERT INTO public.star VALUES (3, 'Alpha Centauri', 5, 4.37, 79, NULL, true, 4);
INSERT INTO public.star VALUES (4, 'Psi Andromedae', 79, 2000, 20, NULL, true, 1);
INSERT INTO public.star VALUES (5, 'Omega Andromedae', 20, 25, 12, NULL, false, 1);
INSERT INTO public.star VALUES (6, '22 Andromedae', 12, 2, 33, NULL, true, 1);


--
-- Name: galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_id_seq', 6, true);


--
-- Name: moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_id_seq', 20, true);


--
-- Name: new_new_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.new_new_id_seq', 3, true);


--
-- Name: planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_id_seq', 12, true);


--
-- Name: star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_id_seq', 6, true);


--
-- Name: galaxy galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_id_key UNIQUE (galaxy_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_id_key UNIQUE (moon_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: new new_new_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.new
    ADD CONSTRAINT new_new_id_key UNIQUE (new_id);


--
-- Name: new new_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.new
    ADD CONSTRAINT new_pkey PRIMARY KEY (new_id);


--
-- Name: planet planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_id_key UNIQUE (planet_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_id_key UNIQUE (star_id);


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

