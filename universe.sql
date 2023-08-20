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
    name character varying(40) NOT NULL,
    description text,
    distance_from_earth numeric,
    galaxy_types_id integer
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
-- Name: galaxy_types; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy_types (
    galaxy_types_id integer NOT NULL,
    name character varying(50) NOT NULL,
    description text
);


ALTER TABLE public.galaxy_types OWNER TO freecodecamp;

--
-- Name: galaxy_types_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_types_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_types_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_types_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_types_id_seq OWNED BY public.galaxy_types.galaxy_types_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(40) NOT NULL,
    description text,
    distance_from_earth numeric,
    diameter_km integer,
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
    name character varying(40),
    description text,
    diameter_km integer,
    has_life boolean NOT NULL,
    has_moon boolean NOT NULL,
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
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(40) NOT NULL,
    description text,
    distance_from_earth numeric,
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
-- Name: galaxy_types galaxy_types_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_types ALTER COLUMN galaxy_types_id SET DEFAULT nextval('public.galaxy_types_id_seq'::regclass);


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
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'The Milky Way is the galaxy that contains our Solar System.', 0, 1);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 'The Andromeda Galaxy, also known as Messier 31, M31, or NGC 224.', 2537000, 1);
INSERT INTO public.galaxy VALUES (3, 'Messier 82', 'Messier 82 is a starburst galaxy approximately 12 million light-years away in the constellation Ursa Major.', 12000000, 1);
INSERT INTO public.galaxy VALUES (4, 'Messier 87', 'Messier 87 is a supergiant elliptical galaxy in the constellation Virgo.', 53000000, 2);
INSERT INTO public.galaxy VALUES (5, 'Hoag''s Object', 'Hoag''s Object is a non-typical galaxy of the type known as a ring galaxy.', 60000000, 3);
INSERT INTO public.galaxy VALUES (6, 'Centaurus A', 'Centaurus A or NGC 5128 is a galaxy in the constellation of Centaurus.', 11000000, 2);


--
-- Data for Name: galaxy_types; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy_types VALUES (1, 'Spiral', 'Spiral galaxies are characterized by a central bulge surrounded by a flat disk of stars.');
INSERT INTO public.galaxy_types VALUES (2, 'Elliptical', 'Elliptical galaxies are characterized by a smooth, featureless light profile.');
INSERT INTO public.galaxy_types VALUES (3, 'Irregular', 'Irregular galaxies are characterized by a chaotic appearance.');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 'The Moon is an astronomical body that orbits planet Earth and is Earth''s only permanent natural satellite.', 384400, 3474, 3);
INSERT INTO public.moon VALUES (2, 'Phobos', 'Phobos is the innermost and larger of the two natural satellites of Mars.', 9377, 22, 4);
INSERT INTO public.moon VALUES (3, 'Deimos', 'Deimos is the smaller and outermost of the two natural satellites of the planet Mars.', 23460, 12, 4);
INSERT INTO public.moon VALUES (4, 'Io', 'Io is the innermost of the four Galilean moons of the planet Jupiter.', 421800, 3643, 5);
INSERT INTO public.moon VALUES (5, 'Europa', 'Europa is the smallest of the four Galilean moons orbiting Jupiter.', 671100, 3122, 5);
INSERT INTO public.moon VALUES (6, 'Ganymede', 'Ganymede is the largest and most massive moon of Jupiter and in the Solar System.', 1070400, 5262, 5);
INSERT INTO public.moon VALUES (7, 'Callisto', 'Callisto is the second-largest moon of Jupiter, after Ganymede.', 1882700, 4821, 5);
INSERT INTO public.moon VALUES (8, 'Titan', 'Titan is the largest moon of Saturn and the second-largest natural satellite in the Solar System.', 1257064, 5150, 6);
INSERT INTO public.moon VALUES (9, 'Enceladus', 'Enceladus is the sixth-largest moon of Saturn.', 237948, 504, 6);
INSERT INTO public.moon VALUES (10, 'Mimas', 'Mimas is a moon of Saturn which was discovered in 1789 by William Herschel.', 185539, 396, 6);
INSERT INTO public.moon VALUES (11, 'Triton', 'Triton is the largest natural satellite of the planet Neptune.', 354759, 2707, 8);
INSERT INTO public.moon VALUES (12, 'Charon', 'Charon is the largest moon of the dwarf planet Pluto.', 19591, 1208, 9);
INSERT INTO public.moon VALUES (13, 'Nix', 'Nix is a natural satellite of Pluto.', 48671, 49, 9);
INSERT INTO public.moon VALUES (14, 'Styx', 'Styx is a small natural satellite of Pluto whose discovery was announced on 11 July 2012.', 42656, 10, 9);
INSERT INTO public.moon VALUES (15, 'Kerberos', 'Kerberos is a small natural satellite of Pluto, about 12 km in its longest dimension.', 57783, 19, 9);
INSERT INTO public.moon VALUES (16, 'Hydra', 'Hydra is the outermost known moon of Pluto.', 64566, 55, 9);
INSERT INTO public.moon VALUES (17, 'Kepler-452b Moon', 'Kepler-452b Moon is the moon of Kepler-452b.', 0, 0, 10);
INSERT INTO public.moon VALUES (18, 'HD 209458 b Moon', 'HD 209458 b Moon is the moon of HD 209458 b.', 0, 0, 11);
INSERT INTO public.moon VALUES (19, 'Gliese 581 c Moon', 'Gliese 581 c Moon is the moon of Gliese 581 c.', 0, 0, 12);
INSERT INTO public.moon VALUES (20, 'Gliese 581 c Moon 2', 'Gliese 581 c Moon 2 is the second moon of Gliese 581 c.', 0, 0, 12);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 'Mercury is the smallest and innermost planet in the Solar System.', 4879, false, false, 1);
INSERT INTO public.planet VALUES (2, 'Venus', 'Venus is the second planet from the Sun.', 12104, false, false, 1);
INSERT INTO public.planet VALUES (3, 'Earth', 'Earth is the third planet from the Sun and the only astronomical object known to harbor life.', 12742, true, true, 1);
INSERT INTO public.planet VALUES (4, 'Mars', 'Mars is the fourth planet from the Sun and the second-smallest planet in the Solar System.', 6779, false, false, 1);
INSERT INTO public.planet VALUES (5, 'Jupiter', 'Jupiter is the fifth planet from the Sun and the largest in the Solar System.', 139822, false, true, 1);
INSERT INTO public.planet VALUES (6, 'Saturn', 'Saturn is the sixth planet from the Sun and the second-largest in the Solar System.', 116464, false, true, 1);
INSERT INTO public.planet VALUES (7, 'Uranus', 'Uranus is the seventh planet from the Sun.', 50724, false, true, 1);
INSERT INTO public.planet VALUES (8, 'Neptune', 'Neptune is the eighth and farthest known planet from the Sun in the Solar System.', 49244, false, true, 1);
INSERT INTO public.planet VALUES (9, 'Pluto', 'Pluto is a dwarf planet in the Kuiper belt, a ring of bodies beyond Neptune.', 2370, false, true, 1);
INSERT INTO public.planet VALUES (10, 'Kepler-452b', 'Kepler-452b is an exoplanet orbiting the Sun-like star Kepler-452.', 17300, false, false, 3);
INSERT INTO public.planet VALUES (11, 'HD 209458 b', 'HD 209458 b, also given the nickname Osiris, is an exoplanet that orbits the solar analog HD 209458 in the constellation Pegasus, some 159 light-years from the Solar System.', 100000, false, false, 3);
INSERT INTO public.planet VALUES (12, 'Gliese 581 c', 'Gliese 581 c or Gl 581 c is a planet orbiting within the Gliese 581 system.', 20000, false, false, 3);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 'The Sun is the star at the center of the Solar System.', 0, 1);
INSERT INTO public.star VALUES (2, 'Sirius', 'Sirius is a binary star and the brightest star in the night sky.', 8.6, 1);
INSERT INTO public.star VALUES (3, 'Alpha Centauri', 'Alpha Centauri is the closest star system and closest planetary system to Earth''s Solar System.', 4.37, 6);
INSERT INTO public.star VALUES (4, 'Vega', 'Vega is the brightest star in the constellation of Lyra.', 25.04, 2);
INSERT INTO public.star VALUES (5, 'Rigel', 'Rigel is the brightest and most massive component of the binary system Rigel.', 860, 1);
INSERT INTO public.star VALUES (6, 'Betelgeuse', 'Betelgeuse is a red supergiant star in the constellation Orion.', 640, 1);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: galaxy_types_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_types_id_seq', 3, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: galaxy galaxy_name_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_unique UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: galaxy_types galaxy_types_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_types
    ADD CONSTRAINT galaxy_types_pkey PRIMARY KEY (galaxy_types_id);


--
-- Name: moon moon_name_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_unique UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: star name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT name UNIQUE (name);


--
-- Name: planet planet_name_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_unique UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: galaxy_types type; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_types
    ADD CONSTRAINT type UNIQUE (name);


--
-- Name: galaxy galaxy_galaxy_type_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_type_id_fkey FOREIGN KEY (galaxy_types_id) REFERENCES public.galaxy_types(galaxy_types_id);


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

