toc.dat                                                                                             0000600 0004000 0002000 00000031123 13273165011 0014436 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        PGDMP                           v            store    9.6.4    9.6.3 3    �	           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false         �	           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false         �	           1262    16387    store    DATABASE     w   CREATE DATABASE store WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'en_US.UTF-8' LC_CTYPE = 'en_US.UTF-8';
    DROP DATABASE store;
             applaudo_user    false                     2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
             postgres    false         �	           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                  postgres    false    3                     3079    12655    plpgsql 	   EXTENSION     ?   CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;
    DROP EXTENSION plpgsql;
                  false         �	           0    0    EXTENSION plpgsql    COMMENT     @   COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';
                       false    1         �            1259    16697    archive    TABLE     �   CREATE TABLE archive (
    id integer NOT NULL,
    "createdAt" bigint,
    "fromModel" text,
    "originalRecord" json,
    "originalRecordId" json
);
    DROP TABLE public.archive;
       public         applaudo_user    false    3         �            1259    16690    archive_id_seq    SEQUENCE     p   CREATE SEQUENCE archive_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.archive_id_seq;
       public       applaudo_user    false    196    3         �	           0    0    archive_id_seq    SEQUENCE OWNED BY     3   ALTER SEQUENCE archive_id_seq OWNED BY archive.id;
            public       applaudo_user    false    195         �            1259    16654    like    TABLE     �   CREATE TABLE "like" (
    "createdAt" bigint,
    "updatedAt" bigint,
    id integer NOT NULL,
    owner integer,
    item integer
);
    DROP TABLE public."like";
       public         applaudo_user    false    3         �            1259    16649    like_id_seq    SEQUENCE     m   CREATE SEQUENCE like_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.like_id_seq;
       public       applaudo_user    false    188    3         �	           0    0    like_id_seq    SEQUENCE OWNED BY     /   ALTER SEQUENCE like_id_seq OWNED BY "like".id;
            public       applaudo_user    false    186         �            1259    16665    product    TABLE     �   CREATE TABLE product (
    "createdAt" bigint,
    "updatedAt" bigint,
    id integer NOT NULL,
    name text,
    description text,
    stock real,
    price real,
    "likesQty" real
);
    DROP TABLE public.product;
       public         applaudo_user    false    3         �            1259    16663    product_id_seq    SEQUENCE     p   CREATE SEQUENCE product_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.product_id_seq;
       public       applaudo_user    false    190    3         �	           0    0    product_id_seq    SEQUENCE OWNED BY     3   ALTER SEQUENCE product_id_seq OWNED BY product.id;
            public       applaudo_user    false    189         �            1259    16651    purchase    TABLE     �   CREATE TABLE purchase (
    "createdAt" bigint,
    "updatedAt" bigint,
    id integer NOT NULL,
    quantity real,
    buyer integer,
    item integer
);
    DROP TABLE public.purchase;
       public         applaudo_user    false    3         �            1259    16647    purchase_id_seq    SEQUENCE     q   CREATE SEQUENCE purchase_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.purchase_id_seq;
       public       applaudo_user    false    187    3         �	           0    0    purchase_id_seq    SEQUENCE OWNED BY     5   ALTER SEQUENCE purchase_id_seq OWNED BY purchase.id;
            public       applaudo_user    false    185         �            1259    16674    transaction    TABLE     �   CREATE TABLE transaction (
    "createdAt" bigint,
    "updatedAt" bigint,
    id integer NOT NULL,
    category text,
    detail text,
    "user" integer
);
    DROP TABLE public.transaction;
       public         applaudo_user    false    3         �            1259    16668    transaction_id_seq    SEQUENCE     t   CREATE SEQUENCE transaction_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.transaction_id_seq;
       public       applaudo_user    false    192    3         �	           0    0    transaction_id_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE transaction_id_seq OWNED BY transaction.id;
            public       applaudo_user    false    191         �            1259    16684    user    TABLE     f  CREATE TABLE "user" (
    "createdAt" bigint,
    "updatedAt" bigint,
    id integer NOT NULL,
    "emailAddress" text,
    password text,
    "fullName" text,
    "isSuperAdmin" boolean,
    "passwordResetToken" text,
    "passwordResetTokenExpiresAt" real,
    "stripeCustomerId" text,
    "hasBillingCard" boolean,
    "billingCardBrand" text,
    "billingCardLast4" text,
    "billingCardExpMonth" text,
    "billingCardExpYear" text,
    "emailProofToken" text,
    "emailProofTokenExpiresAt" real,
    "emailStatus" text,
    "emailChangeCandidate" text,
    "tosAcceptedByIp" text,
    "lastSeenAt" real
);
    DROP TABLE public."user";
       public         applaudo_user    false    3         �            1259    16677    user_id_seq    SEQUENCE     m   CREATE SEQUENCE user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.user_id_seq;
       public       applaudo_user    false    3    194         �	           0    0    user_id_seq    SEQUENCE OWNED BY     /   ALTER SEQUENCE user_id_seq OWNED BY "user".id;
            public       applaudo_user    false    193         	           2604    16702 
   archive id    DEFAULT     Z   ALTER TABLE ONLY archive ALTER COLUMN id SET DEFAULT nextval('archive_id_seq'::regclass);
 9   ALTER TABLE public.archive ALTER COLUMN id DROP DEFAULT;
       public       applaudo_user    false    195    196    196         �           2604    16660    like id    DEFAULT     V   ALTER TABLE ONLY "like" ALTER COLUMN id SET DEFAULT nextval('like_id_seq'::regclass);
 8   ALTER TABLE public."like" ALTER COLUMN id DROP DEFAULT;
       public       applaudo_user    false    188    186    188         �           2604    16670 
   product id    DEFAULT     Z   ALTER TABLE ONLY product ALTER COLUMN id SET DEFAULT nextval('product_id_seq'::regclass);
 9   ALTER TABLE public.product ALTER COLUMN id DROP DEFAULT;
       public       applaudo_user    false    189    190    190         �           2604    16657    purchase id    DEFAULT     \   ALTER TABLE ONLY purchase ALTER COLUMN id SET DEFAULT nextval('purchase_id_seq'::regclass);
 :   ALTER TABLE public.purchase ALTER COLUMN id DROP DEFAULT;
       public       applaudo_user    false    187    185    187          	           2604    16681    transaction id    DEFAULT     b   ALTER TABLE ONLY transaction ALTER COLUMN id SET DEFAULT nextval('transaction_id_seq'::regclass);
 =   ALTER TABLE public.transaction ALTER COLUMN id DROP DEFAULT;
       public       applaudo_user    false    191    192    192         	           2604    16691    user id    DEFAULT     V   ALTER TABLE ONLY "user" ALTER COLUMN id SET DEFAULT nextval('user_id_seq'::regclass);
 8   ALTER TABLE public."user" ALTER COLUMN id DROP DEFAULT;
       public       applaudo_user    false    193    194    194         �	          0    16697    archive 
   TABLE DATA                     public       applaudo_user    false    196       2451.dat �	           0    0    archive_id_seq    SEQUENCE SET     6   SELECT pg_catalog.setval('archive_id_seq', 1, false);
            public       applaudo_user    false    195         �	          0    16654    like 
   TABLE DATA                     public       applaudo_user    false    188       2443.dat �	           0    0    like_id_seq    SEQUENCE SET     2   SELECT pg_catalog.setval('like_id_seq', 1, true);
            public       applaudo_user    false    186         �	          0    16665    product 
   TABLE DATA                     public       applaudo_user    false    190       2445.dat �	           0    0    product_id_seq    SEQUENCE SET     5   SELECT pg_catalog.setval('product_id_seq', 8, true);
            public       applaudo_user    false    189         �	          0    16651    purchase 
   TABLE DATA                     public       applaudo_user    false    187       2442.dat �	           0    0    purchase_id_seq    SEQUENCE SET     6   SELECT pg_catalog.setval('purchase_id_seq', 2, true);
            public       applaudo_user    false    185         �	          0    16674    transaction 
   TABLE DATA                     public       applaudo_user    false    192       2447.dat �	           0    0    transaction_id_seq    SEQUENCE SET     9   SELECT pg_catalog.setval('transaction_id_seq', 2, true);
            public       applaudo_user    false    191         �	          0    16684    user 
   TABLE DATA                     public       applaudo_user    false    194       2449.dat �	           0    0    user_id_seq    SEQUENCE SET     2   SELECT pg_catalog.setval('user_id_seq', 4, true);
            public       applaudo_user    false    193         	           2606    16710    archive archive_pkey 
   CONSTRAINT     K   ALTER TABLE ONLY archive
    ADD CONSTRAINT archive_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.archive DROP CONSTRAINT archive_pkey;
       public         applaudo_user    false    196    196         	           2606    16662    like like_pkey 
   CONSTRAINT     G   ALTER TABLE ONLY "like"
    ADD CONSTRAINT like_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public."like" DROP CONSTRAINT like_pkey;
       public         applaudo_user    false    188    188         	           2606    16689    product product_name_key 
   CONSTRAINT     L   ALTER TABLE ONLY product
    ADD CONSTRAINT product_name_key UNIQUE (name);
 B   ALTER TABLE ONLY public.product DROP CONSTRAINT product_name_key;
       public         applaudo_user    false    190    190         
	           2606    16680    product product_pkey 
   CONSTRAINT     K   ALTER TABLE ONLY product
    ADD CONSTRAINT product_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.product DROP CONSTRAINT product_pkey;
       public         applaudo_user    false    190    190         	           2606    16659    purchase purchase_pkey 
   CONSTRAINT     M   ALTER TABLE ONLY purchase
    ADD CONSTRAINT purchase_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.purchase DROP CONSTRAINT purchase_pkey;
       public         applaudo_user    false    187    187         	           2606    16696    transaction transaction_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY transaction
    ADD CONSTRAINT transaction_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.transaction DROP CONSTRAINT transaction_pkey;
       public         applaudo_user    false    192    192         	           2606    16708    user user_emailAddress_key 
   CONSTRAINT     \   ALTER TABLE ONLY "user"
    ADD CONSTRAINT "user_emailAddress_key" UNIQUE ("emailAddress");
 H   ALTER TABLE ONLY public."user" DROP CONSTRAINT "user_emailAddress_key";
       public         applaudo_user    false    194    194         	           2606    16703    user user_pkey 
   CONSTRAINT     G   ALTER TABLE ONLY "user"
    ADD CONSTRAINT user_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public."user" DROP CONSTRAINT user_pkey;
       public         applaudo_user    false    194    194                                                                                                                                                                                                                                                                                                                                                                                                                                                     2451.dat                                                                                            0000600 0004000 0002000 00000000002 13273165011 0014234 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              2443.dat                                                                                            0000600 0004000 0002000 00000000105 13273165011 0014241 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        INSERT INTO "like" VALUES (1525475264872, 1525475264872, 1, 3, 2);


                                                                                                                                                                                                                                                                                                                                                                                                                                                           2445.dat                                                                                            0000600 0004000 0002000 00000001662 13273165011 0014254 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        INSERT INTO product VALUES (1525474945177, 1525474945177, 1, 'Acid Balloon Candy', 'An acid balloon shaped candy', 0, 3, 0);
INSERT INTO product VALUES (1525474992426, 1525474992426, 4, 'Nuts cookie', 'A cookie made of nuts', 0, 4, 0);
INSERT INTO product VALUES (1525475005636, 1525475005636, 5, 'Cashews cookie', 'A cookie made of cashews', 0, 6, 0);
INSERT INTO product VALUES (1525475026331, 1525475026331, 6, 'Cheesse sticks', 'Delicious sticks filled with cheese', 0, 15, 0);
INSERT INTO product VALUES (1525475050841, 1525475050841, 7, 'Redrum', 'Misterious red juice', 0, 20, 0);
INSERT INTO product VALUES (1525475095551, 1525475095551, 8, 'Cocacola Zero can', 'A can of cocacola Zero', 0, 5, 0);
INSERT INTO product VALUES (1525474960361, 1525475264865, 2, 'Sweet Balloon Candy', 'A sweet balloon shaped candy', 0, 3, 1);
INSERT INTO product VALUES (1525474977304, 1525475370662, 3, 'Oats cookie', 'A cookie made of oats', 71, 3, 0);


                                                                              2442.dat                                                                                            0000600 0004000 0002000 00000000222 13273165011 0014240 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        INSERT INTO purchase VALUES (1525475258442, 1525475258442, 1, 1, 3, 3);
INSERT INTO purchase VALUES (1525475370668, 1525475370668, 2, 2, 3, 3);


                                                                                                                                                                                                                                                                                                                                                                              2447.dat                                                                                            0000600 0004000 0002000 00000000334 13273165011 0014251 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        INSERT INTO transaction VALUES (1525475258449, 1525475258449, 1, 'purchase', 'Oats cookie: 1. $3 each.', 3);
INSERT INTO transaction VALUES (1525475370673, 1525475370673, 2, 'purchase', 'Oats cookie: 2. $3 each.', 3);


                                                                                                                                                                                                                                                                                                    2449.dat                                                                                            0000600 0004000 0002000 00000002012 13273165011 0014246 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        INSERT INTO "user" VALUES (1525474938712, 1525474992423, 1, 'glockhart@hogwarts.edu', '$2a$10$Mdx57SjF6gTPnzr.IdF3nuPPhhoJtoASD/M3aI9iaJHQOxXICSY92', 'Gilderoy Lockhart', true, '', 0, '', false, '', '', '', '', '', 0, 'confirmed', '', '::1', 1.52547505e+12);
INSERT INTO "user" VALUES (1525475144175, 1525475160247, 2, 'hpotter@hogwarts.edu', '$2a$10$lQpsrpGfDxzmakvbx59m9.cu/esIH4hOK1XLK0iawCBT5u/QP7w7G', 'Harry James Potter', false, '', 0, '', false, '', '', '', '', '', 0, 'confirmed', '', '::1', 1.52547518e+12);
INSERT INTO "user" VALUES (1525475160545, 1525475172221, 3, 'rweasley@hogwarts.edu', '$2a$10$yApViUGDkIz28JXBWoeIyeThe/JoNx6rVlXbc9pbbRTOgaqLg4Q8C', 'Ronald Weasley', false, '', 0, '', false, '', '', '', '', '', 0, 'confirmed', '', '::1', 1.52547518e+12);
INSERT INTO "user" VALUES (1525475172477, 1525475186390, 4, 'hgranger@hogwarts.edu', '$2a$10$GLkAYBvcNxzgbPbp1kKdnOD74c0k1RvWvj4R42N5Hvs7D91uBsKbC', 'Hermione Granger', false, '', 0, '', false, '', '', '', '', '', 0, 'confirmed', '', '::1', 1.52547518e+12);


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      restore.sql                                                                                         0000600 0004000 0002000 00000025352 13273165011 0015372 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        --
-- NOTE:
--
-- File paths need to be edited. Search for $$PATH$$ and
-- replace it with the path to the directory containing
-- the extracted data files.
--
--
-- PostgreSQL database dump
--

-- Dumped from database version 9.6.4
-- Dumped by pg_dump version 9.6.3

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

SET search_path = public, pg_catalog;

ALTER TABLE ONLY public."user" DROP CONSTRAINT user_pkey;
ALTER TABLE ONLY public."user" DROP CONSTRAINT "user_emailAddress_key";
ALTER TABLE ONLY public.transaction DROP CONSTRAINT transaction_pkey;
ALTER TABLE ONLY public.purchase DROP CONSTRAINT purchase_pkey;
ALTER TABLE ONLY public.product DROP CONSTRAINT product_pkey;
ALTER TABLE ONLY public.product DROP CONSTRAINT product_name_key;
ALTER TABLE ONLY public."like" DROP CONSTRAINT like_pkey;
ALTER TABLE ONLY public.archive DROP CONSTRAINT archive_pkey;
ALTER TABLE public."user" ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.transaction ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.purchase ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.product ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public."like" ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.archive ALTER COLUMN id DROP DEFAULT;
DROP SEQUENCE public.user_id_seq;
DROP TABLE public."user";
DROP SEQUENCE public.transaction_id_seq;
DROP TABLE public.transaction;
DROP SEQUENCE public.purchase_id_seq;
DROP TABLE public.purchase;
DROP SEQUENCE public.product_id_seq;
DROP TABLE public.product;
DROP SEQUENCE public.like_id_seq;
DROP TABLE public."like";
DROP SEQUENCE public.archive_id_seq;
DROP TABLE public.archive;
DROP EXTENSION plpgsql;
DROP SCHEMA public;
--
-- Name: public; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA public;


ALTER SCHEMA public OWNER TO postgres;

--
-- Name: SCHEMA public; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA public IS 'standard public schema';


--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: archive; Type: TABLE; Schema: public; Owner: applaudo_user
--

CREATE TABLE archive (
    id integer NOT NULL,
    "createdAt" bigint,
    "fromModel" text,
    "originalRecord" json,
    "originalRecordId" json
);


ALTER TABLE archive OWNER TO applaudo_user;

--
-- Name: archive_id_seq; Type: SEQUENCE; Schema: public; Owner: applaudo_user
--

CREATE SEQUENCE archive_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE archive_id_seq OWNER TO applaudo_user;

--
-- Name: archive_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: applaudo_user
--

ALTER SEQUENCE archive_id_seq OWNED BY archive.id;


--
-- Name: like; Type: TABLE; Schema: public; Owner: applaudo_user
--

CREATE TABLE "like" (
    "createdAt" bigint,
    "updatedAt" bigint,
    id integer NOT NULL,
    owner integer,
    item integer
);


ALTER TABLE "like" OWNER TO applaudo_user;

--
-- Name: like_id_seq; Type: SEQUENCE; Schema: public; Owner: applaudo_user
--

CREATE SEQUENCE like_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE like_id_seq OWNER TO applaudo_user;

--
-- Name: like_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: applaudo_user
--

ALTER SEQUENCE like_id_seq OWNED BY "like".id;


--
-- Name: product; Type: TABLE; Schema: public; Owner: applaudo_user
--

CREATE TABLE product (
    "createdAt" bigint,
    "updatedAt" bigint,
    id integer NOT NULL,
    name text,
    description text,
    stock real,
    price real,
    "likesQty" real
);


ALTER TABLE product OWNER TO applaudo_user;

--
-- Name: product_id_seq; Type: SEQUENCE; Schema: public; Owner: applaudo_user
--

CREATE SEQUENCE product_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE product_id_seq OWNER TO applaudo_user;

--
-- Name: product_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: applaudo_user
--

ALTER SEQUENCE product_id_seq OWNED BY product.id;


--
-- Name: purchase; Type: TABLE; Schema: public; Owner: applaudo_user
--

CREATE TABLE purchase (
    "createdAt" bigint,
    "updatedAt" bigint,
    id integer NOT NULL,
    quantity real,
    buyer integer,
    item integer
);


ALTER TABLE purchase OWNER TO applaudo_user;

--
-- Name: purchase_id_seq; Type: SEQUENCE; Schema: public; Owner: applaudo_user
--

CREATE SEQUENCE purchase_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE purchase_id_seq OWNER TO applaudo_user;

--
-- Name: purchase_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: applaudo_user
--

ALTER SEQUENCE purchase_id_seq OWNED BY purchase.id;


--
-- Name: transaction; Type: TABLE; Schema: public; Owner: applaudo_user
--

CREATE TABLE transaction (
    "createdAt" bigint,
    "updatedAt" bigint,
    id integer NOT NULL,
    category text,
    detail text,
    "user" integer
);


ALTER TABLE transaction OWNER TO applaudo_user;

--
-- Name: transaction_id_seq; Type: SEQUENCE; Schema: public; Owner: applaudo_user
--

CREATE SEQUENCE transaction_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE transaction_id_seq OWNER TO applaudo_user;

--
-- Name: transaction_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: applaudo_user
--

ALTER SEQUENCE transaction_id_seq OWNED BY transaction.id;


--
-- Name: user; Type: TABLE; Schema: public; Owner: applaudo_user
--

CREATE TABLE "user" (
    "createdAt" bigint,
    "updatedAt" bigint,
    id integer NOT NULL,
    "emailAddress" text,
    password text,
    "fullName" text,
    "isSuperAdmin" boolean,
    "passwordResetToken" text,
    "passwordResetTokenExpiresAt" real,
    "stripeCustomerId" text,
    "hasBillingCard" boolean,
    "billingCardBrand" text,
    "billingCardLast4" text,
    "billingCardExpMonth" text,
    "billingCardExpYear" text,
    "emailProofToken" text,
    "emailProofTokenExpiresAt" real,
    "emailStatus" text,
    "emailChangeCandidate" text,
    "tosAcceptedByIp" text,
    "lastSeenAt" real
);


ALTER TABLE "user" OWNER TO applaudo_user;

--
-- Name: user_id_seq; Type: SEQUENCE; Schema: public; Owner: applaudo_user
--

CREATE SEQUENCE user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE user_id_seq OWNER TO applaudo_user;

--
-- Name: user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: applaudo_user
--

ALTER SEQUENCE user_id_seq OWNED BY "user".id;


--
-- Name: archive id; Type: DEFAULT; Schema: public; Owner: applaudo_user
--

ALTER TABLE ONLY archive ALTER COLUMN id SET DEFAULT nextval('archive_id_seq'::regclass);


--
-- Name: like id; Type: DEFAULT; Schema: public; Owner: applaudo_user
--

ALTER TABLE ONLY "like" ALTER COLUMN id SET DEFAULT nextval('like_id_seq'::regclass);


--
-- Name: product id; Type: DEFAULT; Schema: public; Owner: applaudo_user
--

ALTER TABLE ONLY product ALTER COLUMN id SET DEFAULT nextval('product_id_seq'::regclass);


--
-- Name: purchase id; Type: DEFAULT; Schema: public; Owner: applaudo_user
--

ALTER TABLE ONLY purchase ALTER COLUMN id SET DEFAULT nextval('purchase_id_seq'::regclass);


--
-- Name: transaction id; Type: DEFAULT; Schema: public; Owner: applaudo_user
--

ALTER TABLE ONLY transaction ALTER COLUMN id SET DEFAULT nextval('transaction_id_seq'::regclass);


--
-- Name: user id; Type: DEFAULT; Schema: public; Owner: applaudo_user
--

ALTER TABLE ONLY "user" ALTER COLUMN id SET DEFAULT nextval('user_id_seq'::regclass);


--
-- Data for Name: archive; Type: TABLE DATA; Schema: public; Owner: applaudo_user
--

\i $$PATH$$/2451.dat

--
-- Name: archive_id_seq; Type: SEQUENCE SET; Schema: public; Owner: applaudo_user
--

SELECT pg_catalog.setval('archive_id_seq', 1, false);


--
-- Data for Name: like; Type: TABLE DATA; Schema: public; Owner: applaudo_user
--

\i $$PATH$$/2443.dat

--
-- Name: like_id_seq; Type: SEQUENCE SET; Schema: public; Owner: applaudo_user
--

SELECT pg_catalog.setval('like_id_seq', 1, true);


--
-- Data for Name: product; Type: TABLE DATA; Schema: public; Owner: applaudo_user
--

\i $$PATH$$/2445.dat

--
-- Name: product_id_seq; Type: SEQUENCE SET; Schema: public; Owner: applaudo_user
--

SELECT pg_catalog.setval('product_id_seq', 8, true);


--
-- Data for Name: purchase; Type: TABLE DATA; Schema: public; Owner: applaudo_user
--

\i $$PATH$$/2442.dat

--
-- Name: purchase_id_seq; Type: SEQUENCE SET; Schema: public; Owner: applaudo_user
--

SELECT pg_catalog.setval('purchase_id_seq', 2, true);


--
-- Data for Name: transaction; Type: TABLE DATA; Schema: public; Owner: applaudo_user
--

\i $$PATH$$/2447.dat

--
-- Name: transaction_id_seq; Type: SEQUENCE SET; Schema: public; Owner: applaudo_user
--

SELECT pg_catalog.setval('transaction_id_seq', 2, true);


--
-- Data for Name: user; Type: TABLE DATA; Schema: public; Owner: applaudo_user
--

\i $$PATH$$/2449.dat

--
-- Name: user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: applaudo_user
--

SELECT pg_catalog.setval('user_id_seq', 4, true);


--
-- Name: archive archive_pkey; Type: CONSTRAINT; Schema: public; Owner: applaudo_user
--

ALTER TABLE ONLY archive
    ADD CONSTRAINT archive_pkey PRIMARY KEY (id);


--
-- Name: like like_pkey; Type: CONSTRAINT; Schema: public; Owner: applaudo_user
--

ALTER TABLE ONLY "like"
    ADD CONSTRAINT like_pkey PRIMARY KEY (id);


--
-- Name: product product_name_key; Type: CONSTRAINT; Schema: public; Owner: applaudo_user
--

ALTER TABLE ONLY product
    ADD CONSTRAINT product_name_key UNIQUE (name);


--
-- Name: product product_pkey; Type: CONSTRAINT; Schema: public; Owner: applaudo_user
--

ALTER TABLE ONLY product
    ADD CONSTRAINT product_pkey PRIMARY KEY (id);


--
-- Name: purchase purchase_pkey; Type: CONSTRAINT; Schema: public; Owner: applaudo_user
--

ALTER TABLE ONLY purchase
    ADD CONSTRAINT purchase_pkey PRIMARY KEY (id);


--
-- Name: transaction transaction_pkey; Type: CONSTRAINT; Schema: public; Owner: applaudo_user
--

ALTER TABLE ONLY transaction
    ADD CONSTRAINT transaction_pkey PRIMARY KEY (id);


--
-- Name: user user_emailAddress_key; Type: CONSTRAINT; Schema: public; Owner: applaudo_user
--

ALTER TABLE ONLY "user"
    ADD CONSTRAINT "user_emailAddress_key" UNIQUE ("emailAddress");


--
-- Name: user user_pkey; Type: CONSTRAINT; Schema: public; Owner: applaudo_user
--

ALTER TABLE ONLY "user"
    ADD CONSTRAINT user_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      