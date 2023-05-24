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
    name character varying,
    number_star numeric,
    mass numeric NOT NULL,
    volume numeric NOT NULL
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
    name character varying,
    diameter integer,
    planet_id integer,
    diameter_moon numeric NOT NULL,
    mass_moon numeric NOT NULL
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
    has_life boolean,
    number_moons integer,
    name character varying(45),
    star_id integer,
    diameter numeric NOT NULL,
    mass numeric NOT NULL
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
-- Name: population; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.population (
    population_id integer NOT NULL,
    intelligence boolean NOT NULL,
    planet_id integer NOT NULL,
    distance_from_earth numeric NOT NULL,
    peaceful boolean,
    name character varying
);


ALTER TABLE public.population OWNER TO freecodecamp;

--
-- Name: population_population_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.population_population_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.population_population_id_seq OWNER TO freecodecamp;

--
-- Name: population_population_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.population_population_id_seq OWNED BY public.population.population_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(45),
    red_giant boolean,
    galaxy_id integer,
    descripcion text,
    volume numeric NOT NULL,
    mass numeric NOT NULL
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
-- Name: population population_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.population ALTER COLUMN population_id SET DEFAULT nextval('public.population_population_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 2332, 2545, 788);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 432, 2545, 788);
INSERT INTO public.galaxy VALUES (3, 'NGC 4414', 432, 2545, 7888);
INSERT INTO public.galaxy VALUES (4, 'M88', 545222, 2545, 4878);
INSERT INTO public.galaxy VALUES (7, 'Cygnus A', 12945222, 178782545, 74545878);
INSERT INTO public.galaxy VALUES (5, 'Ngc 2787', 945222, 12545, 7878);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'luna', NULL, 1, 154, 452);
INSERT INTO public.moon VALUES (2, 'europa', NULL, 6, 2154, 452);
INSERT INTO public.moon VALUES (3, 'canadian', NULL, 6, 1154, 412);
INSERT INTO public.moon VALUES (4, 'Cj35', NULL, 7, 1154, 412);
INSERT INTO public.moon VALUES (5, 'Cf42', NULL, 20, 154, 315);
INSERT INTO public.moon VALUES (6, 'DG42', NULL, 17, 744, 315);
INSERT INTO public.moon VALUES (7, 'K42', NULL, 23, 479, 4565);
INSERT INTO public.moon VALUES (8, 'Ñ42', NULL, 10, 179, 65);
INSERT INTO public.moon VALUES (9, 'W42', NULL, 11, 181, 64);
INSERT INTO public.moon VALUES (10, 'W47', NULL, 9, 21, 97);
INSERT INTO public.moon VALUES (11, 'P47', NULL, 15, 1000121, 54497);
INSERT INTO public.moon VALUES (12, 'P34', NULL, 5, 31, 54497);
INSERT INTO public.moon VALUES (13, 'AD4', NULL, 13, 3221, 154497);
INSERT INTO public.moon VALUES (14, 'FX7', NULL, 18, 31, 17);
INSERT INTO public.moon VALUES (15, 'FV6', NULL, 17, 321, 1217);
INSERT INTO public.moon VALUES (16, 'V6', NULL, 19, 3231, 11217);
INSERT INTO public.moon VALUES (17, 'V9', NULL, 23, 352231, 54511217);
INSERT INTO public.moon VALUES (20, 'DV9', NULL, 4, 3552231, 54511217);
INSERT INTO public.moon VALUES (21, 'DV78', NULL, 13, 3552231, 54511217);
INSERT INTO public.moon VALUES (22, '', NULL, 13, 355, 545112);
INSERT INTO public.moon VALUES (24, 'IU', NULL, 16, 35, 12);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, true, NULL, 'Tierra', 2, 2305, 454);
INSERT INTO public.planet VALUES (4, false, NULL, 'Marte', 2, 2305, 454);
INSERT INTO public.planet VALUES (5, false, NULL, 'Mercurio', 2, 305, 54454);
INSERT INTO public.planet VALUES (6, false, NULL, 'Jupiter', 2, 456848, 1254454);
INSERT INTO public.planet VALUES (7, false, NULL, 'Urano', 2, 256848, 254454);
INSERT INTO public.planet VALUES (8, false, NULL, 'Cer-54', 3, 1256848, 257853);
INSERT INTO public.planet VALUES (9, true, NULL, 'Cer-52', 3, 12568, 2553);
INSERT INTO public.planet VALUES (10, true, NULL, 'Kl-01', 3, 1256548, 24553);
INSERT INTO public.planet VALUES (11, false, NULL, 'Centauri', 4, 125456548, 24553);
INSERT INTO public.planet VALUES (12, false, NULL, 'Centauusi', 4, 625456548, 6424553);
INSERT INTO public.planet VALUES (13, false, NULL, 'Ds-78', 5, 656548, 6424553);
INSERT INTO public.planet VALUES (15, true, NULL, 'Ds-79', 5, 6785456548, 6422444553);
INSERT INTO public.planet VALUES (16, true, NULL, 'Ci-79', 6, 6785456548, 6422444553);
INSERT INTO public.planet VALUES (17, false, NULL, 'Ci9', 5, 656548, 64553);
INSERT INTO public.planet VALUES (18, false, NULL, 'US7', 6, 656548, 64553);
INSERT INTO public.planet VALUES (19, false, NULL, 'P-54-2', 7, 548, 553);
INSERT INTO public.planet VALUES (20, true, NULL, 'P-54-1', 7, 548, 553);
INSERT INTO public.planet VALUES (21, true, NULL, 'P-54-30', 7, 55448, 54553);
INSERT INTO public.planet VALUES (22, true, NULL, 'P-30', 7, 155448, 574553);
INSERT INTO public.planet VALUES (23, false, NULL, 'Km-30', 7, 1455448, 2574553);


--
-- Data for Name: population; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.population VALUES (1, true, 1, 0, false, 'humanidad');
INSERT INTO public.population VALUES (2, true, 18, 2300, true, 'Robots');
INSERT INTO public.population VALUES (5, false, 15, 200300, NULL, 'Aniquilator');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (2, 'Sun', NULL, 1, NULL, 454878, 98788);
INSERT INTO public.star VALUES (3, 'Alpheraz', NULL, 2, NULL, 1454878, 7798788);
INSERT INTO public.star VALUES (4, 'Anthares', NULL, 3, NULL, 54878, 7452);
INSERT INTO public.star VALUES (5, 'Capsides', NULL, 4, NULL, 744878, 798452);
INSERT INTO public.star VALUES (6, 'Cirius', NULL, 5, NULL, 2744878, 3798452);
INSERT INTO public.star VALUES (7, 'P-54', NULL, 7, NULL, 2748, 3752);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 7, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 24, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 23, true);


--
-- Name: population_population_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.population_population_id_seq', 5, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 7, true);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: galaxy name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT name UNIQUE (name);


--
-- Name: moon name_m; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT name_m UNIQUE (name);


--
-- Name: planet name_p; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT name_p UNIQUE (name);


--
-- Name: star name_u; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT name_u UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: population population_peaceful_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.population
    ADD CONSTRAINT population_peaceful_key UNIQUE (peaceful);


--
-- Name: population population_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.population
    ADD CONSTRAINT population_pkey PRIMARY KEY (population_id);


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
-- Name: population population_planet_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.population
    ADD CONSTRAINT population_planet_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

