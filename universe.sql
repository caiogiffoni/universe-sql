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
-- Name: citadel; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.citadel (
    citadel_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description character varying(50)
);


ALTER TABLE public.citadel OWNER TO freecodecamp;

--
-- Name: citadels_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.citadels_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.citadels_id_seq OWNER TO freecodecamp;

--
-- Name: citadels_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.citadels_id_seq OWNED BY public.citadel.citadel_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age_in_millions_of_years integer,
    trips integer,
    distance_from_earth numeric(8,2),
    description character varying(50),
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
    name character varying(30) NOT NULL,
    planet_id integer,
    description character varying(30),
    age integer
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
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text,
    has_life boolean,
    star_id integer,
    age integer
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
    name character varying(30) NOT NULL,
    galaxy_id integer,
    description character varying(30),
    size numeric(8,2),
    age integer
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
-- Name: citadel citadel_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.citadel ALTER COLUMN citadel_id SET DEFAULT nextval('public.citadels_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_id_seq'::regclass);


--
-- Data for Name: citadel; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.citadel VALUES (1, 'Rick and Morty C136', NULL);
INSERT INTO public.citadel VALUES (2, 'Rick and Morty H76', NULL);
INSERT INTO public.citadel VALUES (3, 'Rick and Morty I92', NULL);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'alfa', 50000, 5, 2546.58, 'nice galaxy', false);
INSERT INTO public.galaxy VALUES (2, 'beta', 250000, 9, 5456.12, 'distant galaxy', false);
INSERT INTO public.galaxy VALUES (3, 'charlie', 5130000, 854, 215.65, 'alive galaxy', true);
INSERT INTO public.galaxy VALUES (4, 'delta', 51000, 4, 1658.00, 'strange galaxy', false);
INSERT INTO public.galaxy VALUES (5, 'eco', 5100, 0, 165.60, 'dark galaxy', false);
INSERT INTO public.galaxy VALUES (6, 'foxtrot', 54820, 2, 65.60, 'monster galaxy', true);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'moon', 1, NULL, NULL);
INSERT INTO public.moon VALUES (2, 'Mars moon', 4, NULL, NULL);
INSERT INTO public.moon VALUES (4, 'Venus moon', 2, NULL, NULL);
INSERT INTO public.moon VALUES (7, 'Thomas Shelby', 10, NULL, NULL);
INSERT INTO public.moon VALUES (8, 'Charlie Shelby', 5, NULL, NULL);
INSERT INTO public.moon VALUES (9, 'Ichigo', 8, NULL, NULL);
INSERT INTO public.moon VALUES (10, 'Rukia', 8, NULL, NULL);
INSERT INTO public.moon VALUES (11, 'Naruto', 4, NULL, NULL);
INSERT INTO public.moon VALUES (12, 'Hinata', 4, NULL, NULL);
INSERT INTO public.moon VALUES (13, 'Neymar', 2, NULL, NULL);
INSERT INTO public.moon VALUES (14, 'Vini Jr', 2, NULL, NULL);
INSERT INTO public.moon VALUES (15, 'Thiago Silva', 3, NULL, NULL);
INSERT INTO public.moon VALUES (16, 'Dani Alves', 3, NULL, NULL);
INSERT INTO public.moon VALUES (17, 'Alisson', 11, NULL, NULL);
INSERT INTO public.moon VALUES (18, 'Marcelo', 11, NULL, NULL);
INSERT INTO public.moon VALUES (19, 'Real Madri', 12, NULL, NULL);
INSERT INTO public.moon VALUES (20, 'Barcelona', 12, NULL, NULL);
INSERT INTO public.moon VALUES (21, 'Palmeiras', 12, NULL, NULL);
INSERT INTO public.moon VALUES (22, 'Flamengo', 12, NULL, NULL);
INSERT INTO public.moon VALUES (23, 'Venus moon 2', 2, NULL, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'earth', NULL, NULL, 1, NULL);
INSERT INTO public.planet VALUES (2, 'venus', NULL, NULL, 1, NULL);
INSERT INTO public.planet VALUES (3, 'Mercury', NULL, NULL, 1, NULL);
INSERT INTO public.planet VALUES (4, 'Mars', NULL, NULL, 2, NULL);
INSERT INTO public.planet VALUES (5, 'California', NULL, NULL, 3, NULL);
INSERT INTO public.planet VALUES (6, 'Florida', NULL, NULL, 4, NULL);
INSERT INTO public.planet VALUES (7, 'Penn', NULL, NULL, 5, NULL);
INSERT INTO public.planet VALUES (8, 'Wisc', NULL, NULL, 6, NULL);
INSERT INTO public.planet VALUES (9, 'Illinois', NULL, NULL, 3, NULL);
INSERT INTO public.planet VALUES (10, 'Alaska', NULL, NULL, 3, NULL);
INSERT INTO public.planet VALUES (11, 'Washignton', NULL, NULL, 4, NULL);
INSERT INTO public.planet VALUES (12, 'Texas', NULL, NULL, 6, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'sun', 1, NULL, NULL, NULL);
INSERT INTO public.star VALUES (2, 'Rex', 2, NULL, NULL, NULL);
INSERT INTO public.star VALUES (3, 'Obama', 2, NULL, NULL, NULL);
INSERT INTO public.star VALUES (4, 'Biden', 2, NULL, NULL, NULL);
INSERT INTO public.star VALUES (5, 'Bush', 3, NULL, NULL, NULL);
INSERT INTO public.star VALUES (6, 'Reagen', 3, NULL, NULL, NULL);


--
-- Name: citadels_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.citadels_id_seq', 3, true);


--
-- Name: galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_id_seq', 6, true);


--
-- Name: moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_id_seq', 23, true);


--
-- Name: planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_id_seq', 12, true);


--
-- Name: star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_id_seq', 6, true);


--
-- Name: citadel citadels_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.citadel
    ADD CONSTRAINT citadels_name_key UNIQUE (name);


--
-- Name: citadel citadels_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.citadel
    ADD CONSTRAINT citadels_pkey PRIMARY KEY (citadel_id);


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

