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
-- Name: asteroid; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.asteroid (
    asteroid_id integer NOT NULL,
    name character varying(30) NOT NULL,
    about text,
    has_life boolean,
    is_spherical boolean,
    age numeric(8,4),
    type character varying(30),
    size integer
);


ALTER TABLE public.asteroid OWNER TO freecodecamp;

--
-- Name: asteroid_asteroid_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.asteroid_asteroid_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.asteroid_asteroid_id_seq OWNER TO freecodecamp;

--
-- Name: asteroid_asteroid_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.asteroid_asteroid_id_seq OWNED BY public.asteroid.asteroid_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    about text,
    has_life boolean,
    is_spherical boolean,
    age numeric(8,4),
    type character varying(30),
    size integer
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
    planet_id integer,
    about text,
    has_life boolean,
    is_spherical boolean,
    age numeric(8,4),
    type character varying(30),
    size integer
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
    star_id integer,
    about text,
    has_life boolean,
    is_spherical boolean,
    age numeric(8,4),
    type character varying(30),
    size integer
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
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    galaxy_id integer,
    about text,
    has_life boolean,
    is_spherical boolean,
    age numeric(8,4),
    type character varying(30),
    size integer
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
-- Name: asteroid asteroid_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid ALTER COLUMN asteroid_id SET DEFAULT nextval('public.asteroid_asteroid_id_seq'::regclass);


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
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: asteroid; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.asteroid VALUES (1, 'Asteroid One', 'About asteroid', true, true, 800.4000, 'asteroid', 10);
INSERT INTO public.asteroid VALUES (2, 'Asteroid Two', 'About asteroid', true, true, 800.4000, 'asteroid', 10);
INSERT INTO public.asteroid VALUES (3, 'Asteroid Three', 'About asteroid', true, true, 800.4000, 'asteroid', 10);
INSERT INTO public.asteroid VALUES (4, 'Asteroid Four', 'About asteroid', true, true, 800.4000, 'asteroid', 10);
INSERT INTO public.asteroid VALUES (5, 'Asteroid Five', 'About asteroid', true, true, 800.4000, 'asteroid', 10);
INSERT INTO public.asteroid VALUES (6, 'Asteroid Six', 'About asteroid', true, true, 800.4000, 'asteroid', 10);
INSERT INTO public.asteroid VALUES (7, 'Asteroid Seven', 'About asteroid', true, true, 800.4000, 'asteroid', 10);
INSERT INTO public.asteroid VALUES (8, 'Asteroid Eight', 'About asteroid', true, true, 800.4000, 'asteroid', 10);
INSERT INTO public.asteroid VALUES (9, 'Asteroid Nine', 'About asteroid', true, true, 800.4000, 'asteroid', 10);
INSERT INTO public.asteroid VALUES (10, 'Asteroid Ten', 'About asteroid', true, true, 800.4000, 'asteroid', 10);
INSERT INTO public.asteroid VALUES (11, 'Asteroid Eleven', 'About asteroid', true, true, 800.4000, 'asteroid', 10);
INSERT INTO public.asteroid VALUES (12, 'Asteroid Twelve', 'About asteroid', true, true, 800.4000, 'asteroid', 10);
INSERT INTO public.asteroid VALUES (13, 'Asteroid Thirteen', 'About asteroid', true, true, 800.4000, 'asteroid', 10);
INSERT INTO public.asteroid VALUES (14, 'Asteroid Fourteen', 'About asteroid', true, true, 800.4000, 'asteroid', 10);
INSERT INTO public.asteroid VALUES (15, 'Asteroid Fifteen', 'About asteroid', true, true, 800.4000, 'asteroid', 10);
INSERT INTO public.asteroid VALUES (16, 'Asteroid Sixteen', 'About asteroid', true, true, 800.4000, 'asteroid', 10);
INSERT INTO public.asteroid VALUES (17, 'Asteroid Seventeen', 'About asteroid', true, true, 800.4000, 'asteroid', 10);
INSERT INTO public.asteroid VALUES (18, 'Asteroid Eighteen', 'About asteroid', true, true, 800.4000, 'asteroid', 10);
INSERT INTO public.asteroid VALUES (19, 'Asteroid Nineteen', 'About asteroid', true, true, 800.4000, 'asteroid', 10);
INSERT INTO public.asteroid VALUES (20, 'Asteroid Twenty', 'About asteroid', true, true, 800.4000, 'asteroid', 10);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Galaxy One', 'About galaxy', true, true, 800.4000, 'galaxy', 10);
INSERT INTO public.galaxy VALUES (2, 'Galaxy Two', 'About galaxy', true, true, 800.4000, 'galaxy', 10);
INSERT INTO public.galaxy VALUES (3, 'Galaxy Three', 'About galaxy', true, true, 800.4000, 'galaxy', 10);
INSERT INTO public.galaxy VALUES (4, 'Galaxy Four', 'About galaxy', true, true, 800.4000, 'galaxy', 10);
INSERT INTO public.galaxy VALUES (5, 'Galaxy Five', 'About galaxy', true, true, 800.4000, 'galaxy', 10);
INSERT INTO public.galaxy VALUES (6, 'Galaxy Six', 'About galaxy', true, true, 800.4000, 'galaxy', 10);
INSERT INTO public.galaxy VALUES (7, 'Galaxy Seven', 'About galaxy', true, true, 800.4000, 'galaxy', 10);
INSERT INTO public.galaxy VALUES (8, 'Galaxy Eight', 'About galaxy', true, true, 800.4000, 'galaxy', 10);
INSERT INTO public.galaxy VALUES (9, 'Galaxy Nine', 'About galaxy', true, true, 800.4000, 'galaxy', 10);
INSERT INTO public.galaxy VALUES (10, 'Galaxy Ten', 'About galaxy', true, true, 800.4000, 'galaxy', 10);
INSERT INTO public.galaxy VALUES (11, 'Galaxy Eleven', 'About galaxy', true, true, 800.4000, 'galaxy', 10);
INSERT INTO public.galaxy VALUES (12, 'Galaxy Twelve', 'About galaxy', true, true, 800.4000, 'galaxy', 10);
INSERT INTO public.galaxy VALUES (13, 'Galaxy Thirteen', 'About galaxy', true, true, 800.4000, 'galaxy', 10);
INSERT INTO public.galaxy VALUES (14, 'Galaxy Fourteen', 'About galaxy', true, true, 800.4000, 'galaxy', 10);
INSERT INTO public.galaxy VALUES (15, 'Galaxy Fifteen', 'About galaxy', true, true, 800.4000, 'galaxy', 10);
INSERT INTO public.galaxy VALUES (16, 'Galaxy Sixteen', 'About galaxy', true, true, 800.4000, 'galaxy', 10);
INSERT INTO public.galaxy VALUES (17, 'Galaxy Seventeen', 'About galaxy', true, true, 800.4000, 'galaxy', 10);
INSERT INTO public.galaxy VALUES (18, 'Galaxy Eighteen', 'About galaxy', true, true, 800.4000, 'galaxy', 10);
INSERT INTO public.galaxy VALUES (19, 'Galaxy Nineteen', 'About galaxy', true, true, 800.4000, 'galaxy', 10);
INSERT INTO public.galaxy VALUES (20, 'Galaxy Twenty', 'About galaxy', true, true, 800.4000, 'galaxy', 10);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon One', 1, 'About moon', true, true, 800.4000, 'moon', 10);
INSERT INTO public.moon VALUES (2, 'Moon Two', 2, 'About moon', true, true, 800.4000, 'moon', 10);
INSERT INTO public.moon VALUES (3, 'Moon Three', 3, 'About moon', true, true, 800.4000, 'moon', 10);
INSERT INTO public.moon VALUES (4, 'Moon Four', 4, 'About moon', true, true, 800.4000, 'moon', 10);
INSERT INTO public.moon VALUES (5, 'Moon Five', 5, 'About moon', true, true, 800.4000, 'moon', 10);
INSERT INTO public.moon VALUES (6, 'Moon Six', 6, 'About moon', true, true, 800.4000, 'moon', 10);
INSERT INTO public.moon VALUES (7, 'Moon Seven', 7, 'About moon', true, true, 800.4000, 'moon', 10);
INSERT INTO public.moon VALUES (8, 'Moon Eight', 8, 'About moon', true, true, 800.4000, 'moon', 10);
INSERT INTO public.moon VALUES (9, 'Moon Nine', 9, 'About moon', true, true, 800.4000, 'moon', 10);
INSERT INTO public.moon VALUES (10, 'Moon Ten', 10, 'About moon', true, true, 800.4000, 'moon', 10);
INSERT INTO public.moon VALUES (11, 'Moon Eleven', 11, 'About moon', true, true, 800.4000, 'moon', 10);
INSERT INTO public.moon VALUES (12, 'Moon Twelve', 12, 'About moon', true, true, 800.4000, 'moon', 10);
INSERT INTO public.moon VALUES (13, 'Moon Thirteen', 13, 'About moon', true, true, 800.4000, 'moon', 10);
INSERT INTO public.moon VALUES (14, 'Moon Fourteen', 14, 'About moon', true, true, 800.4000, 'moon', 10);
INSERT INTO public.moon VALUES (15, 'Moon Fifteen', 15, 'About moon', true, true, 800.4000, 'moon', 10);
INSERT INTO public.moon VALUES (16, 'Moon Sixteen', 16, 'About moon', true, true, 800.4000, 'moon', 10);
INSERT INTO public.moon VALUES (17, 'Moon Seventeen', 17, 'About moon', true, true, 800.4000, 'moon', 10);
INSERT INTO public.moon VALUES (18, 'Moon Eighteen', 18, 'About moon', true, true, 800.4000, 'moon', 10);
INSERT INTO public.moon VALUES (19, 'Moon Nineteen', 19, 'About moon', true, true, 800.4000, 'moon', 10);
INSERT INTO public.moon VALUES (20, 'Moon Twenty', 20, 'About moon', true, true, 800.4000, 'moon', 10);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Planet One', 1, 'About planet', true, true, 800.4000, 'planet', 10);
INSERT INTO public.planet VALUES (2, 'Planet Two', 2, 'About planet', true, true, 800.4000, 'planet', 10);
INSERT INTO public.planet VALUES (3, 'Planet Three', 3, 'About planet', true, true, 800.4000, 'planet', 10);
INSERT INTO public.planet VALUES (4, 'Planet Four', 4, 'About planet', true, true, 800.4000, 'planet', 10);
INSERT INTO public.planet VALUES (5, 'Planet Five', 5, 'About planet', true, true, 800.4000, 'planet', 10);
INSERT INTO public.planet VALUES (6, 'Planet Six', 6, 'About planet', true, true, 800.4000, 'planet', 10);
INSERT INTO public.planet VALUES (7, 'Planet Seven', 7, 'About planet', true, true, 800.4000, 'planet', 10);
INSERT INTO public.planet VALUES (8, 'Planet Eight', 8, 'About planet', true, true, 800.4000, 'planet', 10);
INSERT INTO public.planet VALUES (9, 'Planet Nine', 9, 'About planet', true, true, 800.4000, 'planet', 10);
INSERT INTO public.planet VALUES (10, 'Planet Ten', 10, 'About planet', true, true, 800.4000, 'planet', 10);
INSERT INTO public.planet VALUES (11, 'Planet Eleven', 11, 'About planet', true, true, 800.4000, 'planet', 10);
INSERT INTO public.planet VALUES (12, 'Planet Twelve', 12, 'About planet', true, true, 800.4000, 'planet', 10);
INSERT INTO public.planet VALUES (13, 'Planet Thirteen', 13, 'About planet', true, true, 800.4000, 'planet', 10);
INSERT INTO public.planet VALUES (14, 'Planet Fourteen', 14, 'About planet', true, true, 800.4000, 'planet', 10);
INSERT INTO public.planet VALUES (15, 'Planet Fifteen', 15, 'About planet', true, true, 800.4000, 'planet', 10);
INSERT INTO public.planet VALUES (16, 'Planet Sixteen', 16, 'About planet', true, true, 800.4000, 'planet', 10);
INSERT INTO public.planet VALUES (17, 'Planet Seventeen', 17, 'About planet', true, true, 800.4000, 'planet', 10);
INSERT INTO public.planet VALUES (18, 'Planet Eighteen', 18, 'About planet', true, true, 800.4000, 'planet', 10);
INSERT INTO public.planet VALUES (19, 'Planet Nineteen', 19, 'About planet', true, true, 800.4000, 'planet', 10);
INSERT INTO public.planet VALUES (20, 'Planet Twenty', 20, 'About planet', true, true, 800.4000, 'planet', 10);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Star One', 1, 'About star', true, true, 800.4000, 'star', 10);
INSERT INTO public.star VALUES (2, 'Star Two', 2, 'About star', true, true, 800.4000, 'star', 10);
INSERT INTO public.star VALUES (3, 'Star Three', 3, 'About star', true, true, 800.4000, 'star', 10);
INSERT INTO public.star VALUES (4, 'Star Four', 4, 'About star', true, true, 800.4000, 'star', 10);
INSERT INTO public.star VALUES (5, 'Star Five', 5, 'About star', true, true, 800.4000, 'star', 10);
INSERT INTO public.star VALUES (6, 'Star Six', 6, 'About star', true, true, 800.4000, 'star', 10);
INSERT INTO public.star VALUES (7, 'Star Seven', 7, 'About star', true, true, 800.4000, 'star', 10);
INSERT INTO public.star VALUES (8, 'Star Eight', 8, 'About star', true, true, 800.4000, 'star', 10);
INSERT INTO public.star VALUES (9, 'Star Nine', 9, 'About star', true, true, 800.4000, 'star', 10);
INSERT INTO public.star VALUES (10, 'Star Ten', 10, 'About star', true, true, 800.4000, 'star', 10);
INSERT INTO public.star VALUES (11, 'Star Eleven', 11, 'About star', true, true, 800.4000, 'star', 10);
INSERT INTO public.star VALUES (12, 'Star Twelve', 12, 'About star', true, true, 800.4000, 'star', 10);
INSERT INTO public.star VALUES (13, 'Star Thirteen', 13, 'About star', true, true, 800.4000, 'star', 10);
INSERT INTO public.star VALUES (14, 'Star Fourteen', 14, 'About star', true, true, 800.4000, 'star', 10);
INSERT INTO public.star VALUES (15, 'Star Fifteen', 15, 'About star', true, true, 800.4000, 'star', 10);
INSERT INTO public.star VALUES (16, 'Star Sixteen', 16, 'About star', true, true, 800.4000, 'star', 10);
INSERT INTO public.star VALUES (17, 'Star Seventeen', 17, 'About star', true, true, 800.4000, 'star', 10);
INSERT INTO public.star VALUES (18, 'Star Eighteen', 18, 'About star', true, true, 800.4000, 'star', 10);
INSERT INTO public.star VALUES (19, 'Star Nineteen', 19, 'About star', true, true, 800.4000, 'star', 10);
INSERT INTO public.star VALUES (20, 'Star Twenty', 20, 'About star', true, true, 800.4000, 'star', 10);


--
-- Name: asteroid_asteroid_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.asteroid_asteroid_id_seq', 1, false);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 1, false);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 1, false);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 1, false);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 1, false);


--
-- Name: asteroid asteroid_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid
    ADD CONSTRAINT asteroid_name_key UNIQUE (name);


--
-- Name: asteroid asteroid_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid
    ADD CONSTRAINT asteroid_pkey PRIMARY KEY (asteroid_id);


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
-- Name: star fk_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon fk_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_planet FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_star FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

