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
    number integer NOT NULL,
    number_second integer,
    "numeric" numeric,
    text text,
    "boolean" boolean,
    second_boolean boolean
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    number integer NOT NULL,
    number_second integer,
    "numeric" numeric,
    text text,
    "boolean" boolean,
    second_boolean boolean,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: object; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.object (
    object_id integer NOT NULL,
    name character varying(30) NOT NULL,
    number integer NOT NULL,
    number_second integer,
    "numeric" numeric,
    text text,
    "boolean" boolean,
    second_boolean boolean
);


ALTER TABLE public.object OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    number integer NOT NULL,
    number_second integer,
    "numeric" numeric,
    text text,
    "boolean" boolean,
    second_boolean boolean,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    number integer NOT NULL,
    number_second integer,
    "numeric" numeric,
    text text,
    "boolean" boolean,
    second_boolean boolean,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 1, 2, 3.5, 'Some text', true, false);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 2, 3, 4.5, 'Another text', false, true);
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 3, 4, 5.5, 'More text', true, true);
INSERT INTO public.galaxy VALUES (4, 'Messier 87', 4, 5, 6.5, 'Text again', false, false);
INSERT INTO public.galaxy VALUES (5, 'Sombrero', 5, 6, 7.5, 'Text once more', true, false);
INSERT INTO public.galaxy VALUES (6, 'Centaurus A', 6, 7, 8.5, 'Text one last time', false, true);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 1, 2, 3.5, 'Some moon text', true, false, 3);
INSERT INTO public.moon VALUES (2, 'Phobos', 2, 3, 4.5, 'Another moon text', false, true, 4);
INSERT INTO public.moon VALUES (3, 'Deimos', 3, 4, 5.5, 'More moon text', true, true, 4);
INSERT INTO public.moon VALUES (4, 'Europa', 4, 5, 6.5, 'Moon text again', false, false, 5);
INSERT INTO public.moon VALUES (5, 'Ganymede', 5, 6, 7.5, 'Moon text once more', true, false, 5);
INSERT INTO public.moon VALUES (6, 'Io', 6, 7, 8.5, 'Moon text one last time', false, true, 5);
INSERT INTO public.moon VALUES (7, 'Callisto', 7, 8, 9.5, 'Moon text yet again', true, false, 5);
INSERT INTO public.moon VALUES (8, 'Titan', 8, 9, 1.5, 'Moon text once again', false, true, 6);
INSERT INTO public.moon VALUES (9, 'Rhea', 9, 1, 2.5, 'Rhea text', true, true, 6);
INSERT INTO public.moon VALUES (10, 'Iapetus', 10, 2, 3.5, 'Iapetus text', false, false, 6);
INSERT INTO public.moon VALUES (11, 'Charon', 11, 3, 4.5, 'Charon text', true, false, 9);
INSERT INTO public.moon VALUES (12, 'Nix', 12, 4, 5.5, 'Nix text', false, true, 9);
INSERT INTO public.moon VALUES (13, 'Hydra', 13, 5, 6.5, 'Hydra text', true, false, 9);
INSERT INTO public.moon VALUES (14, 'Styx', 14, 6, 7.5, 'Styx text', false, true, 9);
INSERT INTO public.moon VALUES (15, 'Kerberos', 15, 7, 8.5, 'Kerberos text', true, true, 9);
INSERT INTO public.moon VALUES (16, 'Proteus', 16, 8, 9.5, 'Proteus text', false, false, 8);
INSERT INTO public.moon VALUES (17, 'Triton', 17, 9, 1.5, 'Triton text', true, false, 8);
INSERT INTO public.moon VALUES (18, 'Nereid', 18, 1, 2.5, 'Nereid text', false, true, 8);
INSERT INTO public.moon VALUES (19, 'Larissa', 19, 2, 3.5, 'Larissa text', true, true, 8);
INSERT INTO public.moon VALUES (20, 'Despina', 20, 3, 4.5, 'Despina text', true, false, 8);


--
-- Data for Name: object; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.object VALUES (1, 'Object1', 1, 2, 3.5, 'Some object text', true, false);
INSERT INTO public.object VALUES (2, 'Object2', 2, 3, 4.5, 'Another object text', false, true);
INSERT INTO public.object VALUES (3, 'Object3', 3, 4, 5.5, 'More object text', true, true);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 1, 2, 3.5, 'Some planet text', true, false, 1);
INSERT INTO public.planet VALUES (2, 'Venus', 2, 3, 4.5, 'Another planet text', false, true, 1);
INSERT INTO public.planet VALUES (3, 'Earth', 3, 4, 5.5, 'More planet text', true, true, 1);
INSERT INTO public.planet VALUES (4, 'Mars', 4, 5, 6.5, 'Planet text again', false, false, 2);
INSERT INTO public.planet VALUES (5, 'Jupiter', 5, 6, 7.5, 'Planet text once more', true, false, 2);
INSERT INTO public.planet VALUES (6, 'Saturn', 6, 7, 8.5, 'Planet text one last time', false, true, 2);
INSERT INTO public.planet VALUES (7, 'Uranus', 7, 8, 9.5, 'Planet text yet again', true, false, 3);
INSERT INTO public.planet VALUES (8, 'Neptune', 8, 9, 1.5, 'Planet text once again', false, true, 3);
INSERT INTO public.planet VALUES (9, 'Pluto', 9, 1, 2.5, 'Pluto text', true, true, 3);
INSERT INTO public.planet VALUES (10, 'Kepler-22b', 10, 2, 3.5, 'Exoplanet text', false, false, 4);
INSERT INTO public.planet VALUES (11, 'HD 209458 b', 11, 3, 4.5, 'Another exoplanet text', true, false, 4);
INSERT INTO public.planet VALUES (12, 'TRAPPIST-1e', 12, 4, 5.5, 'More exoplanet text', true, true, 4);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 1, 2, 3.5, 'Some star text', true, false, 1);
INSERT INTO public.star VALUES (2, 'Sirius', 2, 3, 4.5, 'Another star text', false, true, 1);
INSERT INTO public.star VALUES (3, 'Alpha Centauri', 3, 4, 5.5, 'More star text', true, true, 1);
INSERT INTO public.star VALUES (4, 'Betelgeuse', 4, 5, 6.5, 'Star text again', false, false, 2);
INSERT INTO public.star VALUES (5, 'Vega', 5, 6, 7.5, 'Star text once more', true, false, 2);
INSERT INTO public.star VALUES (6, 'Arcturus', 6, 7, 8.5, 'Star text one last time', false, true, 2);


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
-- Name: object object_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.object
    ADD CONSTRAINT object_name_key UNIQUE (name);


--
-- Name: object object_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.object
    ADD CONSTRAINT object_pkey PRIMARY KEY (object_id);


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

