--
-- PostgreSQL database dump
--

-- Dumped from database version 16.1
-- Dumped by pg_dump version 16.1

-- Started on 2024-03-15 14:04:38

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = on;


SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = on;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 218 (class 1259 OID 25332)
-- Name: address; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.address (
    id integer NOT NULL,
    user_id integer NOT NULL,
    country_id integer NOT NULL,
    district_id integer NOT NULL,
    city_id integer NOT NULL
);


ALTER TABLE public.address OWNER TO postgres;

--
-- TOC entry 217 (class 1259 OID 25331)
-- Name: address_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.address ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.address_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 232 (class 1259 OID 25414)
-- Name: categories; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.categories (
    id integer NOT NULL,
    category_name character varying NOT NULL,
    category_details character varying NOT NULL
);


ALTER TABLE public.categories OWNER TO postgres;

--
-- TOC entry 231 (class 1259 OID 25413)
-- Name: categories_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.categories ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.categories_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 222 (class 1259 OID 25346)
-- Name: city; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.city (
    id integer NOT NULL,
    country_id integer NOT NULL,
    city_name character varying NOT NULL
);


ALTER TABLE public.city OWNER TO postgres;

--
-- TOC entry 221 (class 1259 OID 25345)
-- Name: city_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.city ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.city_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 220 (class 1259 OID 25338)
-- Name: country; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.country (
    id integer NOT NULL,
    country_name character varying NOT NULL
);


ALTER TABLE public.country OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 25337)
-- Name: country_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.country ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.country_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 224 (class 1259 OID 25354)
-- Name: district; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.district (
    id integer NOT NULL,
    city_id integer NOT NULL,
    district_name character varying NOT NULL
);


ALTER TABLE public.district OWNER TO postgres;

--
-- TOC entry 223 (class 1259 OID 25353)
-- Name: district_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.district ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.district_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 234 (class 1259 OID 25422)
-- Name: invoices; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.invoices (
    id integer NOT NULL,
    order_id integer NOT NULL,
    invoices_date date NOT NULL,
    address_id integer NOT NULL,
    cargo_receipt_no character varying NOT NULL,
    total_amount double precision NOT NULL
);


ALTER TABLE public.invoices OWNER TO postgres;

--
-- TOC entry 236 (class 1259 OID 25430)
-- Name: invoices_details; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.invoices_details (
    id integer NOT NULL,
    invoice_id integer NOT NULL,
    order_details_id integer NOT NULL,
    product_id integer NOT NULL,
    quantity integer NOT NULL,
    unit_price double precision NOT NULL,
    line_total double precision NOT NULL
);


ALTER TABLE public.invoices_details OWNER TO postgres;

--
-- TOC entry 235 (class 1259 OID 25429)
-- Name: invoices_details_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.invoices_details ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.invoices_details_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 233 (class 1259 OID 25421)
-- Name: invoices_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.invoices ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.invoices_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 228 (class 1259 OID 25400)
-- Name: order_details; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.order_details (
    id integer NOT NULL,
    order_id integer NOT NULL,
    product_id integer NOT NULL,
    quantity integer NOT NULL,
    unit_price double precision NOT NULL,
    line_total double precision NOT NULL
);


ALTER TABLE public.order_details OWNER TO postgres;

--
-- TOC entry 227 (class 1259 OID 25399)
-- Name: order_details_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.order_details ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.order_details_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 226 (class 1259 OID 25392)
-- Name: orders; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.orders (
    id integer NOT NULL,
    user_id integer NOT NULL,
    order_date date NOT NULL,
    total_amount double precision NOT NULL,
    status character varying NOT NULL,
    address_id integer NOT NULL
);


ALTER TABLE public.orders OWNER TO postgres;

--
-- TOC entry 225 (class 1259 OID 25391)
-- Name: orders_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.orders ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.orders_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 240 (class 1259 OID 25444)
-- Name: payment_types; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.payment_types (
    id integer NOT NULL,
    payment_type character varying NOT NULL
);


ALTER TABLE public.payment_types OWNER TO postgres;

--
-- TOC entry 239 (class 1259 OID 25443)
-- Name: payment_types_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.payment_types ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.payment_types_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 238 (class 1259 OID 25436)
-- Name: payments; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.payments (
    id integer NOT NULL,
    order_id integer NOT NULL,
    payment_id integer NOT NULL,
    payment_date date NOT NULL,
    approval_code character varying NOT NULL,
    payment_total double precision NOT NULL
);


ALTER TABLE public.payments OWNER TO postgres;

--
-- TOC entry 237 (class 1259 OID 25435)
-- Name: payments_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.payments ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.payments_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 230 (class 1259 OID 25406)
-- Name: products; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.products (
    id integer NOT NULL,
    product_code character varying NOT NULL,
    product_name character varying NOT NULL,
    unit_price double precision NOT NULL,
    category_id integer NOT NULL,
    brand character varying NOT NULL
);


ALTER TABLE public.products OWNER TO postgres;

--
-- TOC entry 229 (class 1259 OID 25405)
-- Name: products_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.products ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.products_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 216 (class 1259 OID 25324)
-- Name: users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users (
    id integer NOT NULL,
    user_name character varying NOT NULL,
    password character varying NOT NULL,
    fullname character varying NOT NULL,
    email character varying NOT NULL,
    gender character varying NOT NULL,
    date_of_birth date NOT NULL,
    creation_date date NOT NULL,
    phone_number character varying NOT NULL
);


ALTER TABLE public.users OWNER TO postgres;

--
-- TOC entry 215 (class 1259 OID 25323)
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.users ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 4937 (class 0 OID 25332)
-- Dependencies: 218
-- Data for Name: address; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 4951 (class 0 OID 25414)
-- Dependencies: 232
-- Data for Name: categories; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 4941 (class 0 OID 25346)
-- Dependencies: 222
-- Data for Name: city; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 4939 (class 0 OID 25338)
-- Dependencies: 220
-- Data for Name: country; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 4943 (class 0 OID 25354)
-- Dependencies: 224
-- Data for Name: district; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 4953 (class 0 OID 25422)
-- Dependencies: 234
-- Data for Name: invoices; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 4955 (class 0 OID 25430)
-- Dependencies: 236
-- Data for Name: invoices_details; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 4947 (class 0 OID 25400)
-- Dependencies: 228
-- Data for Name: order_details; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 4945 (class 0 OID 25392)
-- Dependencies: 226
-- Data for Name: orders; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 4959 (class 0 OID 25444)
-- Dependencies: 240
-- Data for Name: payment_types; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 4957 (class 0 OID 25436)
-- Dependencies: 238
-- Data for Name: payments; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 4949 (class 0 OID 25406)
-- Dependencies: 230
-- Data for Name: products; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 4935 (class 0 OID 25324)
-- Dependencies: 216
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 4966 (class 0 OID 0)
-- Dependencies: 217
-- Name: address_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.address_id_seq', 1, false);


--
-- TOC entry 4967 (class 0 OID 0)
-- Dependencies: 231
-- Name: categories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.categories_id_seq', 1, false);


--
-- TOC entry 4968 (class 0 OID 0)
-- Dependencies: 221
-- Name: city_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.city_id_seq', 1, false);


--
-- TOC entry 4969 (class 0 OID 0)
-- Dependencies: 219
-- Name: country_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.country_id_seq', 1, false);


--
-- TOC entry 4970 (class 0 OID 0)
-- Dependencies: 223
-- Name: district_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.district_id_seq', 1, false);


--
-- TOC entry 4971 (class 0 OID 0)
-- Dependencies: 235
-- Name: invoices_details_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.invoices_details_id_seq', 1, false);


--
-- TOC entry 4972 (class 0 OID 0)
-- Dependencies: 233
-- Name: invoices_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.invoices_id_seq', 1, false);


--
-- TOC entry 4973 (class 0 OID 0)
-- Dependencies: 227
-- Name: order_details_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.order_details_id_seq', 1, false);


--
-- TOC entry 4974 (class 0 OID 0)
-- Dependencies: 225
-- Name: orders_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.orders_id_seq', 1, false);


--
-- TOC entry 4975 (class 0 OID 0)
-- Dependencies: 239
-- Name: payment_types_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.payment_types_id_seq', 1, false);


--
-- TOC entry 4976 (class 0 OID 0)
-- Dependencies: 237
-- Name: payments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.payments_id_seq', 1, false);


--
-- TOC entry 4977 (class 0 OID 0)
-- Dependencies: 229
-- Name: products_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.products_id_seq', 1, false);


--
-- TOC entry 4978 (class 0 OID 0)
-- Dependencies: 215
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.users_id_seq', 1, false);


--
-- TOC entry 4751 (class 2606 OID 25336)
-- Name: address address_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.address
    ADD CONSTRAINT address_pkey PRIMARY KEY (id);


--
-- TOC entry 4765 (class 2606 OID 25420)
-- Name: categories categories_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_pkey PRIMARY KEY (id);


--
-- TOC entry 4755 (class 2606 OID 25352)
-- Name: city city_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.city
    ADD CONSTRAINT city_pkey PRIMARY KEY (id);


--
-- TOC entry 4753 (class 2606 OID 25344)
-- Name: country country_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.country
    ADD CONSTRAINT country_pkey PRIMARY KEY (id);


--
-- TOC entry 4757 (class 2606 OID 25360)
-- Name: district district_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.district
    ADD CONSTRAINT district_pkey PRIMARY KEY (id);


--
-- TOC entry 4769 (class 2606 OID 25434)
-- Name: invoices_details invoices_details_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.invoices_details
    ADD CONSTRAINT invoices_details_pkey PRIMARY KEY (id);


--
-- TOC entry 4767 (class 2606 OID 25428)
-- Name: invoices invoices_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.invoices
    ADD CONSTRAINT invoices_pkey PRIMARY KEY (id);


--
-- TOC entry 4761 (class 2606 OID 25404)
-- Name: order_details order_details_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.order_details
    ADD CONSTRAINT order_details_pkey PRIMARY KEY (id);


--
-- TOC entry 4759 (class 2606 OID 25398)
-- Name: orders orders_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_pkey PRIMARY KEY (id);


--
-- TOC entry 4773 (class 2606 OID 25450)
-- Name: payment_types payment_types_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.payment_types
    ADD CONSTRAINT payment_types_pkey PRIMARY KEY (id);


--
-- TOC entry 4771 (class 2606 OID 25442)
-- Name: payments payments_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.payments
    ADD CONSTRAINT payments_pkey PRIMARY KEY (id);


--
-- TOC entry 4763 (class 2606 OID 25412)
-- Name: products products_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_pkey PRIMARY KEY (id);


--
-- TOC entry 4749 (class 2606 OID 25330)
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- TOC entry 4774 (class 2606 OID 25371)
-- Name: address FK_ADDRESS_CITY; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.address
    ADD CONSTRAINT "FK_ADDRESS_CITY" FOREIGN KEY (city_id) REFERENCES public.city(id) NOT VALID;


--
-- TOC entry 4775 (class 2606 OID 25366)
-- Name: address FK_ADDRESS_COUNTRY; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.address
    ADD CONSTRAINT "FK_ADDRESS_COUNTRY" FOREIGN KEY (country_id) REFERENCES public.country(id) NOT VALID;


--
-- TOC entry 4776 (class 2606 OID 25376)
-- Name: address FK_ADDRESS_DISTRICT; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.address
    ADD CONSTRAINT "FK_ADDRESS_DISTRICT" FOREIGN KEY (district_id) REFERENCES public.district(id) NOT VALID;


--
-- TOC entry 4777 (class 2606 OID 25361)
-- Name: address FK_ADDRESS_USERS; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.address
    ADD CONSTRAINT "FK_ADDRESS_USERS" FOREIGN KEY (user_id) REFERENCES public.users(id) NOT VALID;


--
-- TOC entry 4778 (class 2606 OID 25381)
-- Name: city FK_CITY_COUNTRY; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.city
    ADD CONSTRAINT "FK_CITY_COUNTRY" FOREIGN KEY (country_id) REFERENCES public.country(id) NOT VALID;


--
-- TOC entry 4779 (class 2606 OID 25386)
-- Name: district FK_DISTRICT_CITY; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.district
    ADD CONSTRAINT "FK_DISTRICT_CITY" FOREIGN KEY (city_id) REFERENCES public.city(id) NOT VALID;


--
-- TOC entry 4785 (class 2606 OID 25477)
-- Name: invoices FK_INVOICE_ADDRESS; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.invoices
    ADD CONSTRAINT "FK_INVOICE_ADDRESS" FOREIGN KEY (address_id) REFERENCES public.address(id) NOT VALID;


--
-- TOC entry 4787 (class 2606 OID 25457)
-- Name: invoices_details FK_INVOICE_DETAILS_INVOICE; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.invoices_details
    ADD CONSTRAINT "FK_INVOICE_DETAILS_INVOICE" FOREIGN KEY (invoice_id) REFERENCES public.invoices(id) NOT VALID;


--
-- TOC entry 4788 (class 2606 OID 25467)
-- Name: invoices_details FK_INVOICE_DETAILS_ORDER_DETAILS; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.invoices_details
    ADD CONSTRAINT "FK_INVOICE_DETAILS_ORDER_DETAILS" FOREIGN KEY (order_details_id) REFERENCES public.order_details(id) NOT VALID;


--
-- TOC entry 4789 (class 2606 OID 25462)
-- Name: invoices_details FK_INVOICE_DETAILS_PRODUCTS; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.invoices_details
    ADD CONSTRAINT "FK_INVOICE_DETAILS_PRODUCTS" FOREIGN KEY (product_id) REFERENCES public.products(id) NOT VALID;


--
-- TOC entry 4786 (class 2606 OID 25472)
-- Name: invoices FK_INVOICE_ORDERS; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.invoices
    ADD CONSTRAINT "FK_INVOICE_ORDERS" FOREIGN KEY (order_id) REFERENCES public.orders(id) NOT VALID;


--
-- TOC entry 4780 (class 2606 OID 25487)
-- Name: orders FK_ORDERS_ADDRESS; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.orders
    ADD CONSTRAINT "FK_ORDERS_ADDRESS" FOREIGN KEY (address_id) REFERENCES public.address(id) NOT VALID;


--
-- TOC entry 4781 (class 2606 OID 25482)
-- Name: orders FK_ORDERS_USERS; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.orders
    ADD CONSTRAINT "FK_ORDERS_USERS" FOREIGN KEY (user_id) REFERENCES public.users(id) NOT VALID;


--
-- TOC entry 4782 (class 2606 OID 25492)
-- Name: order_details FK_ORDER_DETAILS_ORDERS; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.order_details
    ADD CONSTRAINT "FK_ORDER_DETAILS_ORDERS" FOREIGN KEY (order_id) REFERENCES public.orders(id) NOT VALID;


--
-- TOC entry 4783 (class 2606 OID 25497)
-- Name: order_details FK_ORDER_DETAILS_PRODUCTS; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.order_details
    ADD CONSTRAINT "FK_ORDER_DETAILS_PRODUCTS" FOREIGN KEY (product_id) REFERENCES public.products(id) NOT VALID;


--
-- TOC entry 4790 (class 2606 OID 25452)
-- Name: payments FK_PAYMENTS_PAYMENT_TYPES; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.payments
    ADD CONSTRAINT "FK_PAYMENTS_PAYMENT_TYPES" FOREIGN KEY (payment_id) REFERENCES public.payment_types(id) NOT VALID;


--
-- TOC entry 4784 (class 2606 OID 25502)
-- Name: products FK_PRODUCTS_CATEGORIES; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.products
    ADD CONSTRAINT "FK_PRODUCTS_CATEGORIES" FOREIGN KEY (category_id) REFERENCES public.categories(id) NOT VALID;


-- Completed on 2024-03-15 14:04:38

--
-- PostgreSQL database dump complete
--

