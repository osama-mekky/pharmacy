PGDMP     &                     y         
   pharmacydb    10.17    10.17 �    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false            �           1262    16393 
   pharmacydb    DATABASE     �   CREATE DATABASE pharmacydb WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'English_United States.1252' LC_CTYPE = 'English_United States.1252';
    DROP DATABASE pharmacydb;
             postgres    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
             postgres    false            �           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                  postgres    false    3                        3079    12924    plpgsql 	   EXTENSION     ?   CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;
    DROP EXTENSION plpgsql;
                  false            �           0    0    EXTENSION plpgsql    COMMENT     @   COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';
                       false    1            �            1259    24756    accounts_userprofile    TABLE     =  CREATE TABLE public.accounts_userprofile (
    id bigint NOT NULL,
    address character varying(60) NOT NULL,
    address2 character varying(60) NOT NULL,
    city character varying(60) NOT NULL,
    state character varying(60) NOT NULL,
    zip_number character varying(5) NOT NULL,
    user_id integer NOT NULL
);
 (   DROP TABLE public.accounts_userprofile;
       public         postgres    false    3            �            1259    24771 &   accounts_userprofile_Product_favorites    TABLE     �   CREATE TABLE public."accounts_userprofile_Product_favorites" (
    id bigint NOT NULL,
    userprofile_id bigint NOT NULL,
    product_id bigint NOT NULL
);
 <   DROP TABLE public."accounts_userprofile_Product_favorites";
       public         postgres    false    3            �            1259    24769 -   accounts_userprofile_Product_favorites_id_seq    SEQUENCE     �   CREATE SEQUENCE public."accounts_userprofile_Product_favorites_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 F   DROP SEQUENCE public."accounts_userprofile_Product_favorites_id_seq";
       public       postgres    false    220    3            �           0    0 -   accounts_userprofile_Product_favorites_id_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public."accounts_userprofile_Product_favorites_id_seq" OWNED BY public."accounts_userprofile_Product_favorites".id;
            public       postgres    false    219            �            1259    24754    accounts_userprofile_id_seq    SEQUENCE     �   CREATE SEQUENCE public.accounts_userprofile_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.accounts_userprofile_id_seq;
       public       postgres    false    3    218            �           0    0    accounts_userprofile_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.accounts_userprofile_id_seq OWNED BY public.accounts_userprofile.id;
            public       postgres    false    217            �            1259    16425 
   auth_group    TABLE     f   CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);
    DROP TABLE public.auth_group;
       public         postgres    false    3            �            1259    16423    auth_group_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.auth_group_id_seq;
       public       postgres    false    203    3            �           0    0    auth_group_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;
            public       postgres    false    202            �            1259    16435    auth_group_permissions    TABLE     �   CREATE TABLE public.auth_group_permissions (
    id bigint NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 *   DROP TABLE public.auth_group_permissions;
       public         postgres    false    3            �            1259    16433    auth_group_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.auth_group_permissions_id_seq;
       public       postgres    false    205    3            �           0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;
            public       postgres    false    204            �            1259    16417    auth_permission    TABLE     �   CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);
 #   DROP TABLE public.auth_permission;
       public         postgres    false    3            �            1259    16415    auth_permission_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.auth_permission_id_seq;
       public       postgres    false    201    3            �           0    0    auth_permission_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;
            public       postgres    false    200            �            1259    16443 	   auth_user    TABLE     �  CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(150) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);
    DROP TABLE public.auth_user;
       public         postgres    false    3            �            1259    16453    auth_user_groups    TABLE     ~   CREATE TABLE public.auth_user_groups (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);
 $   DROP TABLE public.auth_user_groups;
       public         postgres    false    3            �            1259    16451    auth_user_groups_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.auth_user_groups_id_seq;
       public       postgres    false    209    3            �           0    0    auth_user_groups_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;
            public       postgres    false    208            �            1259    16441    auth_user_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.auth_user_id_seq;
       public       postgres    false    3    207            �           0    0    auth_user_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;
            public       postgres    false    206            �            1259    16461    auth_user_user_permissions    TABLE     �   CREATE TABLE public.auth_user_user_permissions (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);
 .   DROP TABLE public.auth_user_user_permissions;
       public         postgres    false    3            �            1259    16459 !   auth_user_user_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.auth_user_user_permissions_id_seq;
       public       postgres    false    3    211            �           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;
            public       postgres    false    210            �            1259    16521    django_admin_log    TABLE     �  CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);
 $   DROP TABLE public.django_admin_log;
       public         postgres    false    3            �            1259    16519    django_admin_log_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.django_admin_log_id_seq;
       public       postgres    false    3    213            �           0    0    django_admin_log_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;
            public       postgres    false    212            �            1259    16407    django_content_type    TABLE     �   CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);
 '   DROP TABLE public.django_content_type;
       public         postgres    false    3            �            1259    16405    django_content_type_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.django_content_type_id_seq;
       public       postgres    false    199    3            �           0    0    django_content_type_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;
            public       postgres    false    198            �            1259    16396    django_migrations    TABLE     �   CREATE TABLE public.django_migrations (
    id bigint NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 %   DROP TABLE public.django_migrations;
       public         postgres    false    3            �            1259    16394    django_migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.django_migrations_id_seq;
       public       postgres    false    3    197            �           0    0    django_migrations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;
            public       postgres    false    196            �            1259    16552    django_session    TABLE     �   CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);
 "   DROP TABLE public.django_session;
       public         postgres    false    3            �            1259    24793    orders_order    TABLE     �   CREATE TABLE public.orders_order (
    id bigint NOT NULL,
    order_date timestamp with time zone NOT NULL,
    is_finished boolean NOT NULL,
    user_id integer NOT NULL
);
     DROP TABLE public.orders_order;
       public         postgres    false    3            �            1259    24791    orders_order_id_seq    SEQUENCE     |   CREATE SEQUENCE public.orders_order_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.orders_order_id_seq;
       public       postgres    false    3    222            �           0    0    orders_order_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.orders_order_id_seq OWNED BY public.orders_order.id;
            public       postgres    false    221            �            1259    24801    orders_orderdetails    TABLE     �   CREATE TABLE public.orders_orderdetails (
    id bigint NOT NULL,
    price numeric(6,2) NOT NULL,
    quantity integer NOT NULL,
    order_id bigint NOT NULL,
    product_id bigint NOT NULL
);
 '   DROP TABLE public.orders_orderdetails;
       public         postgres    false    3            �            1259    24799    orders_orderdetails_id_seq    SEQUENCE     �   CREATE SEQUENCE public.orders_orderdetails_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.orders_orderdetails_id_seq;
       public       postgres    false    224    3            �           0    0    orders_orderdetails_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.orders_orderdetails_id_seq OWNED BY public.orders_orderdetails.id;
            public       postgres    false    223            �            1259    24827    orders_payment    TABLE     B  CREATE TABLE public.orders_payment (
    id bigint NOT NULL,
    shipment_address character varying(150) NOT NULL,
    shipment_phone character varying(150) NOT NULL,
    card_number character varying(25) NOT NULL,
    expire date NOT NULL,
    security_code character varying(4) NOT NULL,
    order_id bigint NOT NULL
);
 "   DROP TABLE public.orders_payment;
       public         postgres    false    3            �            1259    24825    orders_payment_id_seq    SEQUENCE     ~   CREATE SEQUENCE public.orders_payment_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.orders_payment_id_seq;
       public       postgres    false    3    226            �           0    0    orders_payment_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.orders_payment_id_seq OWNED BY public.orders_payment.id;
            public       postgres    false    225            �            1259    16564    products_product    TABLE     *  CREATE TABLE public.products_product (
    id bigint NOT NULL,
    name character varying(150) NOT NULL,
    description text NOT NULL,
    price numeric(6,2) NOT NULL,
    photo character varying(100) NOT NULL,
    is_active boolean NOT NULL,
    publish_date timestamp with time zone NOT NULL
);
 $   DROP TABLE public.products_product;
       public         postgres    false    3            �            1259    16562    products_product_id_seq    SEQUENCE     �   CREATE SEQUENCE public.products_product_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.products_product_id_seq;
       public       postgres    false    216    3            �           0    0    products_product_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.products_product_id_seq OWNED BY public.products_product.id;
            public       postgres    false    215            �
           2604    24759    accounts_userprofile id    DEFAULT     �   ALTER TABLE ONLY public.accounts_userprofile ALTER COLUMN id SET DEFAULT nextval('public.accounts_userprofile_id_seq'::regclass);
 F   ALTER TABLE public.accounts_userprofile ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    218    217    218            �
           2604    24774 )   accounts_userprofile_Product_favorites id    DEFAULT     �   ALTER TABLE ONLY public."accounts_userprofile_Product_favorites" ALTER COLUMN id SET DEFAULT nextval('public."accounts_userprofile_Product_favorites_id_seq"'::regclass);
 Z   ALTER TABLE public."accounts_userprofile_Product_favorites" ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    219    220    220            �
           2604    16428    auth_group id    DEFAULT     n   ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);
 <   ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    202    203    203            �
           2604    16438    auth_group_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);
 H   ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    204    205    205            �
           2604    16420    auth_permission id    DEFAULT     x   ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);
 A   ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    200    201    201            �
           2604    16446    auth_user id    DEFAULT     l   ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);
 ;   ALTER TABLE public.auth_user ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    206    207    207            �
           2604    16456    auth_user_groups id    DEFAULT     z   ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);
 B   ALTER TABLE public.auth_user_groups ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    209    208    209            �
           2604    16464    auth_user_user_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);
 L   ALTER TABLE public.auth_user_user_permissions ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    211    210    211            �
           2604    16524    django_admin_log id    DEFAULT     z   ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);
 B   ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    212    213    213            �
           2604    16410    django_content_type id    DEFAULT     �   ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);
 E   ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    198    199    199            �
           2604    16399    django_migrations id    DEFAULT     |   ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);
 C   ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    196    197    197            �
           2604    24796    orders_order id    DEFAULT     r   ALTER TABLE ONLY public.orders_order ALTER COLUMN id SET DEFAULT nextval('public.orders_order_id_seq'::regclass);
 >   ALTER TABLE public.orders_order ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    222    221    222            �
           2604    24804    orders_orderdetails id    DEFAULT     �   ALTER TABLE ONLY public.orders_orderdetails ALTER COLUMN id SET DEFAULT nextval('public.orders_orderdetails_id_seq'::regclass);
 E   ALTER TABLE public.orders_orderdetails ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    223    224    224            �
           2604    24830    orders_payment id    DEFAULT     v   ALTER TABLE ONLY public.orders_payment ALTER COLUMN id SET DEFAULT nextval('public.orders_payment_id_seq'::regclass);
 @   ALTER TABLE public.orders_payment ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    226    225    226            �
           2604    16567    products_product id    DEFAULT     z   ALTER TABLE ONLY public.products_product ALTER COLUMN id SET DEFAULT nextval('public.products_product_id_seq'::regclass);
 B   ALTER TABLE public.products_product ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    215    216    216            �          0    24756    accounts_userprofile 
   TABLE DATA               g   COPY public.accounts_userprofile (id, address, address2, city, state, zip_number, user_id) FROM stdin;
    public       postgres    false    218   ��       �          0    24771 &   accounts_userprofile_Product_favorites 
   TABLE DATA               b   COPY public."accounts_userprofile_Product_favorites" (id, userprofile_id, product_id) FROM stdin;
    public       postgres    false    220   ��       �          0    16425 
   auth_group 
   TABLE DATA               .   COPY public.auth_group (id, name) FROM stdin;
    public       postgres    false    203   ��       �          0    16435    auth_group_permissions 
   TABLE DATA               M   COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public       postgres    false    205   ��       �          0    16417    auth_permission 
   TABLE DATA               N   COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
    public       postgres    false    201   �       �          0    16443 	   auth_user 
   TABLE DATA               �   COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
    public       postgres    false    207   ��       �          0    16453    auth_user_groups 
   TABLE DATA               A   COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
    public       postgres    false    209   ��       �          0    16461    auth_user_user_permissions 
   TABLE DATA               P   COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
    public       postgres    false    211   ��       �          0    16521    django_admin_log 
   TABLE DATA               �   COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public       postgres    false    213   ��       �          0    16407    django_content_type 
   TABLE DATA               C   COPY public.django_content_type (id, app_label, model) FROM stdin;
    public       postgres    false    199   6�       �          0    16396    django_migrations 
   TABLE DATA               C   COPY public.django_migrations (id, app, name, applied) FROM stdin;
    public       postgres    false    197   ��       �          0    16552    django_session 
   TABLE DATA               P   COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
    public       postgres    false    214   D�       �          0    24793    orders_order 
   TABLE DATA               L   COPY public.orders_order (id, order_date, is_finished, user_id) FROM stdin;
    public       postgres    false    222   _�       �          0    24801    orders_orderdetails 
   TABLE DATA               X   COPY public.orders_orderdetails (id, price, quantity, order_id, product_id) FROM stdin;
    public       postgres    false    224   �       �          0    24827    orders_payment 
   TABLE DATA               |   COPY public.orders_payment (id, shipment_address, shipment_phone, card_number, expire, security_code, order_id) FROM stdin;
    public       postgres    false    226   ��       �          0    16564    products_product 
   TABLE DATA               h   COPY public.products_product (id, name, description, price, photo, is_active, publish_date) FROM stdin;
    public       postgres    false    216   d�       �           0    0 -   accounts_userprofile_Product_favorites_id_seq    SEQUENCE SET     ]   SELECT pg_catalog.setval('public."accounts_userprofile_Product_favorites_id_seq"', 8, true);
            public       postgres    false    219            �           0    0    accounts_userprofile_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.accounts_userprofile_id_seq', 10, true);
            public       postgres    false    217            �           0    0    auth_group_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);
            public       postgres    false    202            �           0    0    auth_group_permissions_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);
            public       postgres    false    204            �           0    0    auth_permission_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.auth_permission_id_seq', 44, true);
            public       postgres    false    200            �           0    0    auth_user_groups_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);
            public       postgres    false    208            �           0    0    auth_user_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.auth_user_id_seq', 11, true);
            public       postgres    false    206            �           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);
            public       postgres    false    210            �           0    0    django_admin_log_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_admin_log_id_seq', 117, true);
            public       postgres    false    212            �           0    0    django_content_type_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.django_content_type_id_seq', 11, true);
            public       postgres    false    198            �           0    0    django_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_migrations_id_seq', 28, true);
            public       postgres    false    196            �           0    0    orders_order_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.orders_order_id_seq', 10, true);
            public       postgres    false    221            �           0    0    orders_orderdetails_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.orders_orderdetails_id_seq', 35, true);
            public       postgres    false    223            �           0    0    orders_payment_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.orders_payment_id_seq', 8, true);
            public       postgres    false    225            �           0    0    products_product_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.products_product_id_seq', 101, true);
            public       postgres    false    215                       2606    24778 f   accounts_userprofile_Product_favorites accounts_userprofile_Pro_userprofile_id_product_i_30a04fcd_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public."accounts_userprofile_Product_favorites"
    ADD CONSTRAINT "accounts_userprofile_Pro_userprofile_id_product_i_30a04fcd_uniq" UNIQUE (userprofile_id, product_id);
 �   ALTER TABLE ONLY public."accounts_userprofile_Product_favorites" DROP CONSTRAINT "accounts_userprofile_Pro_userprofile_id_product_i_30a04fcd_uniq";
       public         postgres    false    220    220                       2606    24776 R   accounts_userprofile_Product_favorites accounts_userprofile_Product_favorites_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public."accounts_userprofile_Product_favorites"
    ADD CONSTRAINT "accounts_userprofile_Product_favorites_pkey" PRIMARY KEY (id);
 �   ALTER TABLE ONLY public."accounts_userprofile_Product_favorites" DROP CONSTRAINT "accounts_userprofile_Product_favorites_pkey";
       public         postgres    false    220                       2606    24761 .   accounts_userprofile accounts_userprofile_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.accounts_userprofile
    ADD CONSTRAINT accounts_userprofile_pkey PRIMARY KEY (id);
 X   ALTER TABLE ONLY public.accounts_userprofile DROP CONSTRAINT accounts_userprofile_pkey;
       public         postgres    false    218                       2606    24763 5   accounts_userprofile accounts_userprofile_user_id_key 
   CONSTRAINT     s   ALTER TABLE ONLY public.accounts_userprofile
    ADD CONSTRAINT accounts_userprofile_user_id_key UNIQUE (user_id);
 _   ALTER TABLE ONLY public.accounts_userprofile DROP CONSTRAINT accounts_userprofile_user_id_key;
       public         postgres    false    218            �
           2606    16550    auth_group auth_group_name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
       public         postgres    false    203            �
           2606    16477 R   auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);
 |   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
       public         postgres    false    205    205            �
           2606    16440 2   auth_group_permissions auth_group_permissions_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       public         postgres    false    205            �
           2606    16430    auth_group auth_group_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
       public         postgres    false    203            �
           2606    16468 F   auth_permission auth_permission_content_type_id_codename_01ab375a_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);
 p   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq;
       public         postgres    false    201    201            �
           2606    16422 $   auth_permission auth_permission_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
       public         postgres    false    201            �
           2606    16458 &   auth_user_groups auth_user_groups_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_pkey;
       public         postgres    false    209            �
           2606    16492 @   auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);
 j   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq;
       public         postgres    false    209    209            �
           2606    16448    auth_user auth_user_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_pkey;
       public         postgres    false    207            �
           2606    16466 :   auth_user_user_permissions auth_user_user_permissions_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_pkey;
       public         postgres    false    211                       2606    16506 Y   auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq;
       public         postgres    false    211    211            �
           2606    16544     auth_user auth_user_username_key 
   CONSTRAINT     _   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);
 J   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_username_key;
       public         postgres    false    207                       2606    16530 &   django_admin_log django_admin_log_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       public         postgres    false    213            �
           2606    16414 E   django_content_type django_content_type_app_label_model_76bd3d3b_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);
 o   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
       public         postgres    false    199    199            �
           2606    16412 ,   django_content_type django_content_type_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
       public         postgres    false    199            �
           2606    16404 (   django_migrations django_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
       public         postgres    false    197                       2606    16559 "   django_session django_session_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 L   ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
       public         postgres    false    214                       2606    24798    orders_order orders_order_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.orders_order
    ADD CONSTRAINT orders_order_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.orders_order DROP CONSTRAINT orders_order_pkey;
       public         postgres    false    222                       2606    24806 ,   orders_orderdetails orders_orderdetails_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.orders_orderdetails
    ADD CONSTRAINT orders_orderdetails_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.orders_orderdetails DROP CONSTRAINT orders_orderdetails_pkey;
       public         postgres    false    224                       2606    24832 "   orders_payment orders_payment_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.orders_payment
    ADD CONSTRAINT orders_payment_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.orders_payment DROP CONSTRAINT orders_payment_pkey;
       public         postgres    false    226                       2606    16572 &   products_product products_product_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.products_product
    ADD CONSTRAINT products_product_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.products_product DROP CONSTRAINT products_product_pkey;
       public         postgres    false    216                       1259    24790 :   accounts_userprofile_Product_favorites_product_id_4c5d5920    INDEX     �   CREATE INDEX "accounts_userprofile_Product_favorites_product_id_4c5d5920" ON public."accounts_userprofile_Product_favorites" USING btree (product_id);
 P   DROP INDEX public."accounts_userprofile_Product_favorites_product_id_4c5d5920";
       public         postgres    false    220                       1259    24789 >   accounts_userprofile_Product_favorites_userprofile_id_0aa14a8f    INDEX     �   CREATE INDEX "accounts_userprofile_Product_favorites_userprofile_id_0aa14a8f" ON public."accounts_userprofile_Product_favorites" USING btree (userprofile_id);
 T   DROP INDEX public."accounts_userprofile_Product_favorites_userprofile_id_0aa14a8f";
       public         postgres    false    220            �
           1259    16551    auth_group_name_a6ea08ec_like    INDEX     h   CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);
 1   DROP INDEX public.auth_group_name_a6ea08ec_like;
       public         postgres    false    203            �
           1259    16488 (   auth_group_permissions_group_id_b120cbf9    INDEX     o   CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);
 <   DROP INDEX public.auth_group_permissions_group_id_b120cbf9;
       public         postgres    false    205            �
           1259    16489 -   auth_group_permissions_permission_id_84c5c92e    INDEX     y   CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);
 A   DROP INDEX public.auth_group_permissions_permission_id_84c5c92e;
       public         postgres    false    205            �
           1259    16474 (   auth_permission_content_type_id_2f476e4b    INDEX     o   CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);
 <   DROP INDEX public.auth_permission_content_type_id_2f476e4b;
       public         postgres    false    201            �
           1259    16504 "   auth_user_groups_group_id_97559544    INDEX     c   CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);
 6   DROP INDEX public.auth_user_groups_group_id_97559544;
       public         postgres    false    209            �
           1259    16503 !   auth_user_groups_user_id_6a12ed8b    INDEX     a   CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);
 5   DROP INDEX public.auth_user_groups_user_id_6a12ed8b;
       public         postgres    false    209            �
           1259    16518 1   auth_user_user_permissions_permission_id_1fbb5f2c    INDEX     �   CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);
 E   DROP INDEX public.auth_user_user_permissions_permission_id_1fbb5f2c;
       public         postgres    false    211            �
           1259    16517 +   auth_user_user_permissions_user_id_a95ead1b    INDEX     u   CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);
 ?   DROP INDEX public.auth_user_user_permissions_user_id_a95ead1b;
       public         postgres    false    211            �
           1259    16545     auth_user_username_6821ab7c_like    INDEX     n   CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);
 4   DROP INDEX public.auth_user_username_6821ab7c_like;
       public         postgres    false    207                       1259    16541 )   django_admin_log_content_type_id_c4bce8eb    INDEX     q   CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);
 =   DROP INDEX public.django_admin_log_content_type_id_c4bce8eb;
       public         postgres    false    213                       1259    16542 !   django_admin_log_user_id_c564eba6    INDEX     a   CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);
 5   DROP INDEX public.django_admin_log_user_id_c564eba6;
       public         postgres    false    213                       1259    16561 #   django_session_expire_date_a5c62663    INDEX     e   CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);
 7   DROP INDEX public.django_session_expire_date_a5c62663;
       public         postgres    false    214            	           1259    16560 (   django_session_session_key_c0390e0f_like    INDEX     ~   CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);
 <   DROP INDEX public.django_session_session_key_c0390e0f_like;
       public         postgres    false    214                       1259    24824    orders_order_user_id_e9b59eb1    INDEX     Y   CREATE INDEX orders_order_user_id_e9b59eb1 ON public.orders_order USING btree (user_id);
 1   DROP INDEX public.orders_order_user_id_e9b59eb1;
       public         postgres    false    222                       1259    24822 %   orders_orderdetails_order_id_d7985cfb    INDEX     i   CREATE INDEX orders_orderdetails_order_id_d7985cfb ON public.orders_orderdetails USING btree (order_id);
 9   DROP INDEX public.orders_orderdetails_order_id_d7985cfb;
       public         postgres    false    224                       1259    24823 '   orders_orderdetails_product_id_e66102b1    INDEX     m   CREATE INDEX orders_orderdetails_product_id_e66102b1 ON public.orders_orderdetails USING btree (product_id);
 ;   DROP INDEX public.orders_orderdetails_product_id_e66102b1;
       public         postgres    false    224                       1259    24838     orders_payment_order_id_bdccf250    INDEX     _   CREATE INDEX orders_payment_order_id_bdccf250 ON public.orders_payment USING btree (order_id);
 4   DROP INDEX public.orders_payment_order_id_bdccf250;
       public         postgres    false    226            +           2606    24784 \   accounts_userprofile_Product_favorites accounts_userprofile_product_id_4c5d5920_fk_products_    FK CONSTRAINT     �   ALTER TABLE ONLY public."accounts_userprofile_Product_favorites"
    ADD CONSTRAINT accounts_userprofile_product_id_4c5d5920_fk_products_ FOREIGN KEY (product_id) REFERENCES public.products_product(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public."accounts_userprofile_Product_favorites" DROP CONSTRAINT accounts_userprofile_product_id_4c5d5920_fk_products_;
       public       postgres    false    2827    220    216            )           2606    24764 J   accounts_userprofile accounts_userprofile_user_id_92240672_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.accounts_userprofile
    ADD CONSTRAINT accounts_userprofile_user_id_92240672_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 t   ALTER TABLE ONLY public.accounts_userprofile DROP CONSTRAINT accounts_userprofile_user_id_92240672_fk_auth_user_id;
       public       postgres    false    218    207    2802            *           2606    24779 `   accounts_userprofile_Product_favorites accounts_userprofile_userprofile_id_0aa14a8f_fk_accounts_    FK CONSTRAINT     �   ALTER TABLE ONLY public."accounts_userprofile_Product_favorites"
    ADD CONSTRAINT accounts_userprofile_userprofile_id_0aa14a8f_fk_accounts_ FOREIGN KEY (userprofile_id) REFERENCES public.accounts_userprofile(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public."accounts_userprofile_Product_favorites" DROP CONSTRAINT accounts_userprofile_userprofile_id_0aa14a8f_fk_accounts_;
       public       postgres    false    2829    220    218            "           2606    16483 O   auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
       public       postgres    false    205    201    2789            !           2606    16478 P   auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
       public       postgres    false    203    2794    205                        2606    16469 E   auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
       public       postgres    false    199    2784    201            $           2606    16498 D   auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id;
       public       postgres    false    203    2794    209            #           2606    16493 B   auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id;
       public       postgres    false    209    207    2802            &           2606    16512 S   auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm;
       public       postgres    false    201    211    2789            %           2606    16507 V   auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id;
       public       postgres    false    2802    211    207            '           2606    16531 G   django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
       public       postgres    false    2784    213    199            (           2606    16536 B   django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id;
       public       postgres    false    2802    213    207            ,           2606    24807 :   orders_order orders_order_user_id_e9b59eb1_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.orders_order
    ADD CONSTRAINT orders_order_user_id_e9b59eb1_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 d   ALTER TABLE ONLY public.orders_order DROP CONSTRAINT orders_order_user_id_e9b59eb1_fk_auth_user_id;
       public       postgres    false    222    2802    207            -           2606    24812 L   orders_orderdetails orders_orderdetails_order_id_d7985cfb_fk_orders_order_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.orders_orderdetails
    ADD CONSTRAINT orders_orderdetails_order_id_d7985cfb_fk_orders_order_id FOREIGN KEY (order_id) REFERENCES public.orders_order(id) DEFERRABLE INITIALLY DEFERRED;
 v   ALTER TABLE ONLY public.orders_orderdetails DROP CONSTRAINT orders_orderdetails_order_id_d7985cfb_fk_orders_order_id;
       public       postgres    false    224    2839    222            .           2606    24817 R   orders_orderdetails orders_orderdetails_product_id_e66102b1_fk_products_product_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.orders_orderdetails
    ADD CONSTRAINT orders_orderdetails_product_id_e66102b1_fk_products_product_id FOREIGN KEY (product_id) REFERENCES public.products_product(id) DEFERRABLE INITIALLY DEFERRED;
 |   ALTER TABLE ONLY public.orders_orderdetails DROP CONSTRAINT orders_orderdetails_product_id_e66102b1_fk_products_product_id;
       public       postgres    false    2827    216    224            /           2606    24833 B   orders_payment orders_payment_order_id_bdccf250_fk_orders_order_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.orders_payment
    ADD CONSTRAINT orders_payment_order_id_bdccf250_fk_orders_order_id FOREIGN KEY (order_id) REFERENCES public.orders_order(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.orders_payment DROP CONSTRAINT orders_payment_order_id_bdccf250_fk_orders_order_id;
       public       postgres    false    222    2839    226            �   |   x�MMK
�0\�;EO }��t�{t3�j%���
��)��0���K�j�´���C+�/X����{K=5^<����?	�`��8WWn�����Ш*��1޶����hP�P�� "��.�      �   5   x�ɱ  ���2�OAwq�9�&ŏ)d��bV���>%����dאs� �:C      �      x������ � �      �      x������ � �      �   �  x�e�Qn�0���Sp�� -�kL�P�:$��~�����K�I��μwS��}6���O��4΄�g8���ܾ���K	,���w�R+ �������-~��m�'S�Z*ث�S �	��~�EA�6IQ��(��-���XL	��l].娏^�8�D� R$��%<6��
�G�*9�8>9�k��m�5O����Z�?o.`���b]#EN0
)��^'�$_�I�D��b[o>��+��*�AO�T��z���'�I_��q�McO��!g�N��7cn�d���&�U�:��a���laŖ�9bQcޝ'x�<�@As�M�0�}k��lK��GCD�6�R��}  <�]k��[{7��	_V��-�#�K5�Ҿ�+R��T��X^Hꌧ�X��OX���m��C@�F��~��H�XA�<"��f��$�A�      �   �  x�u�oo�0�_�O�ߙ���J�d0e�s�E��&7P*q�����o�5�i�4'��<=\�̓`�� ���P5�C1K�!����;kO������S��k!���e>+{�1ͻî簧ý7��z��ƭ�5b��07)1�@5b�e���F��Z��X�""��R�8U�LV/��@k��05����W9����`�9�N���u����P����7�e���X�oq��+m��i��J��L=�h��yG�K�^�F��u�j��T B���E2^+�y��D"��/?��n�k�Ld�`�� N����;N�\����wݧ�g��6���C9�6:>�||؏֣t���+g��nal�o^r�Mj@LDL�Ud���a��J�R(2���j~�jDWe��� 5��L�AuDɇ�g)�D�ã�� h:E�Ɏ��C�k?[ֽ'o(&}h�����(��Yb����iZ]�)W��K���}�Uf f�,%Ay{��������s�\%:�tv�7~��)Fb3�&S/�g6��=o�Ư3Y�	��5���X�#|co�>o���kv���VC��4����t���W������ۓ�i�)E���R�+guUÌ�s'��
�@t�D(=��h��n_��G�ݰ�����9���'���[���A#�G9����\ha5�*�L�TN�3r��Ѹ���O}\�ov��B��Ҫ��v��G����#�C�      �      x������ � �      �      x������ � �      �   D	  x���Ko9�ו_!d;H��v����v�t�dzA��VuJ*M�����>��2N�PAc`-��{>�E+F}A�bg��9�sVSb��� ���r�޵�����ӟ��jծ��g���o���3�*����*��S\��E�֒	͋kD�F�O-(�2l�UͰm���O�.�s�jE����/o��o��_������������}UV������N������)�:'|Nu-,c\�m/ögr��;)�6퓮y�e3*��0��j�uy��q���J񴹀�5�B�Du�iw��2�mA��T�͙��d*r ��~׍ݶ$@sIj���>U�wM?ܶ[ה4X���Z1&�9tu�m��nՕn �絢L�L�΍�i'��"א
>A��յ�v��-�S�³b(.DR�~{u�ϫ��x]RQ�
7���iL	�Z4n��ō�TB�)��VZ��뗯?���,)dxJ��a&��ڻC?l��4CV�%�SDœ��̻�Nk��qf�jNM��VAGT/�����H%�]�,ha�p�y���8�EjXƮ�Zz�0�ۺUY!cW�&����:�>������6VpCa�e{�xd�d8�R�#��z��a�vwE?2bA��Ge�&�owөT�2dM8������w���b2b��So������E�[w۩�"�v�Em	�$�Dv��a[�O���Ur����k���M%��M0��p�c@%��mv�芛Hф�0�0��PU-B8g��D�&��+��m��U��Kt�N�e`�Y���.ڛ��<�ˑ��`�腭�ۇ�����ٜJ��L,10���T�*I�xB}�̰MXv5��}��NJ��4�����ý���H�䨔�&�Z�Î�fv�ݭKx��O�c�&"��>�:���p�V8�6��>�2:�'\#�"�CUgpt�tc)"�S�<A�B���Z>�2"�S�	A�M-��0�_P���J���(��
jC�ko|�3lnJ
���>��F�[��p[��"�S͉�N$��j�O�!�����X����+����U'�qw���Cwؔƃ�PJ�!����a�6�+)dT���)_������)^r�A�)ᆘ�R���vN(dH��q�z�p��Ք�YyFs��O����ƢFd(�
F�\��nr��+���Y�!Y)cD�n�:�.g	I���08���8�	��]ǩ-�+iR0�j�g��=0_}���6��&�q���ݣ�/�@}�$����m�@7D��}@��R4Q@%��d��3��|��K�Y�^�D�K��ѭ�����	`|�H�N�+�Bj�M/_\�k�ķ�)f"dzVSJ��!0Շ��?S���*���P�(d����\���)7�3�� s�~�1��V�ۗ��S%��ַ�a�%����k�E���%��F�b�����`�\A��Hfx�����8�I�ބ	TH!�z0���n_J��
���*�\ ��o��b.�,���$4���zx��C�T���*����j�E��[T3+"t*�*�r=�2Q �$��Z�/��n*>J�L�>z$jX�pTl^����"�B���KJ"�~凳���t�$>qD�8�^�t�w��?�������c4=�"�&���1�"	F*���ﻩX�L���Z_����:��#&���
d"��@%<��w'��I�da
@.?�w��V]�J�v&�?�a�FO�~�:l�	�d\r?�`>%1M��_��};�����Da�'�(��0&�0�ܳɥa�_������u�>��1�P�v����_t6r(��!*��R��(����A�V�&6#��5�g�8�g�a,j3B��y1�
���s,��˻� �Z�S� ���mQ�JE�f���ZhA�d�/�x"��?��U������o�۱-�-�1j<a�������.��6c���Ms"������p���QN|�c�&d`���A��C��O����k�B���W���P&ܦx��X�^����Т�l�)I	�m�B]VFǍ��5b1�(��c;I1��6�"�ħ%��[4�ŸR�r�}_�d���e��}�WTʿ?���О�L��E;�����sQ%�*蚤����h$�Mה�AѢ��ǅiT�  �]w�q'R %)�~��L��;��JIF���`�F�=
�joK�f�d�*�˨�d� �^"�l��%O�22C��_tI�`_ު��xU��#�����v���-^����}�W����`����8iWn�iWO�����x(N>~|Z���ք���D߳��/��S��1��K����3˟|_>� .P�F��i�M��
�����~���gϞ���      �   �   x�U�K�0Dמ� ���S"�qd'�ܞ@U	V���;�qI�f�8W�8�o�E�uIfI2���TZ�i�f�8S�\G�������m[���Jl��p#��<�gp�g�w�����G�>��6]|_�c<v �ӲG�      �   h  x����n�0���S�~U��YV�,pRK������6)!jP�A���y�P4~��0M�W;��np�3]�ᝈwR���FQ�,���!x�������CR�´�H���,I�]���g�������x�צm�2$�\���w�3�N�fr~���\t��]x�R\ab�_n�O4�:�у��sp������M7٠�6�nSHI�{�;;\⿞�*�V���1>lo\���U.O�Rؖ�9�v�A�J$�����ΌS������y�%E�4S`����م���N��@(�%�{�[(��s��|s�m>�ގ����J`��+N=u�͌	��l%U�<:�RB�� ��rC]����0�
�2F���5Zd�5���MG��Å��?k;n�:�p4-AĲY@����rWH�,��u;7ӾIM�F^Ҵ���-�4~�T�U��@J�׳���#���Yy0�U�L�wc�,"ή�+�l>}pӦC߈H�GXl��.0Z��ڰ�ҷ�9�)�qZ�̥G��Q�����w=OPQsW: ɣ�|��Y>�D�v��g�H 1�$�Kߠ� �q�B.�8�� �K@TG/�ߘ�;�6 q @��9��;�oy:���i~      �     x���Ɏ�@ �s�}�h�~
(��.(v��"C&1�,�����K�����c�6,���A(��<�}BZ�}[�h�_;5Jך~򙳫�ݮ�ۇh3�OSW�)ʤN�o��b�Oy�{6JZ�hfy
��hj^��`��Q��1MQŎ���?�'�VEw���Һ���U����8gۯ%P�m��Z��5��Zu܏���ݒ����b��ǇmI�Kz�(ڒ�D�vZ�����S�|��{R�U�~���'����LR�<e-�y��%�HxG 2Ha �� X�����G^=��#0�'IF�gE>�c�"j}6y�{��t���Y����&��aM������Ҹ=��Jj~ոw@"�"�
cS��6�c�F���g�gH'>H}�8U0�QB^E��+�M���Z'�e����v�]b�Tx�ۇ;r]s8�T��U��_D�YG0�5W���S�IÌ�RHT��x�k���8o�OR���:X�f1V��F�Y�N�v���n��2�W��c^Ĝ��
�@���o�X,��&��      �   �   x�]�In�@Dѵx
�7�bs<��>A�t"ȃ�,�����hF�	s�c{n�$������P/���ͷ��z樀XF��a����d)�3�_���a2��i�j��Bu���Zw�d�i���4r��:��2���C\��G�H���w��ن�8ӏP�c�/�C�      �   �   x�=��1�R0S��e�c��C��HB�h��@�Cc��U�.��u��:+�3K��%�A5�a�]�Yh&��A_��b�ڳ�g��<��R�	�g���B��U�Y��;KIڼw	b�s��{�=$��+�      �   �   x���A�0E��]p���p7@�:��ۛ*2�
���L���Է���h��F��&I�*�	�e#��)�F���ȑ���G)����:c�i���y��0����E-E]�ĉ�<g���$Y��\�� �\��x��~;vO5O�'R�h���k����6OI      �      x��}�r�H�������CQ\�pNJ)�JS���̬���6+�A- �F ���>�c�\���O2��P����mV�E,��ާ�zIWi��T�"~Z�Q�*����+���ዌ�F'�}}Y�c��EU�*�D����R��Ij-3=�����y\��9]ɂNL�RO�_����0����QTnU���d4��.�Ǔs7��_�MTG�����l<�Ǘ��d1�����W�GQ�D�"WYx<�aF�^�D�\��|��ت���|:<���boእ��0�D�ܗr��Ȅ��DuS���֍��P���L�<��%�:]�H��9���f�M��b<E�\G�D��@�B�0�L�K"�M����U��ϖB0�m��"2��B%����ɏ��逗���U�����\5	G�*�Ț�bXn�s���^~�}Ӛ�pZ��V	,�<�7ћT+�{�˜��Q�r7�JVDҺ�t����Ȇ+��,J��b�)1�4�.���l��	�
w�J`�x�j)��Cf�|F��	=po.��vz��\�\���R$�)���u
�"s�AO]���K��UW�e)U�����UXi-��sZoi�"�[��:�6˛B���%�d��\��_Ny�������<��=���"�e|��\�\f�C.�J|U���D;7��[�y��ȗ$F�$qm��f��\���2�hM͖1l5��a��t�{�gM��j�-���SI]�B�K	�ݘo
��R�HY���g��d�M?�nv/�c$�<��eZ������QJ��x�sU���p5�w�f��/b�Bg�JW�#�-g����s�;^Ҁ�F��΄����=k�c����tݥI�ְ�����\,���iBc�1�6�U�l�����S;8j͂��t�ɤ�u����T���܀=ŏ�OqL.p:�Q�û�O���������B� ]����x�@r�PȀ��R\ȕ,%�S�̘�0H!X	�N�D6�������7��مf�����s*�qt��j��tfm
��� 7��Q��q����� 
��«e7��Rh��SE?
�k;0fK���ZU������V=��OJ�Z�pħ��K�
؏�:���RV�l��<��O��1t�s��������4�3���6-vY���*��JU���zW��j`|�]�bj�QU$�`� ��[�\�<ڪ
t������s@�� �b��v��	+�p��Ȇk�$ �+Y%H�Z�-� qY�Ѓ�"��RH�@5��$/�r;G�&�������=|�#��x�A�"aZ������	$TFh�,�
(65
/���bC�3g�y�dܙNO_����?7�c<��~e�y2���z������� ��/�rT5�� �x����6�l���uS���C�R�$���5�G����T��:��I��t���
B0�q#��~��Dbt�x<LE��Qt�#Z~��C�9l ��0Ġ�fƂ ;�������d�x���,s��0���g(4��dj��b��V`��� D�P#u���8 
��6 C�b-��+�<E��x���xM!V@����ٝ�$�3B�Y,$|a��b�\���b�ç\#��Ѹ��gˢs�S����MՀ���L
�:�����`u�?�,���f�_Aހ�k`3~�i�L|RH���T�R+�W 	ak �W|���'R}"y4w��2��@��*E�����I���3	�L7:FӾ�$t���bDv��*�&��_znm��{����-ƪ�rWI;:����U��ӺW����O���58�~G���m#�3#����N�����ߴ@�ep�e�i�(\*���?�>�ψ9A\�e���;T��#��'�*D;��@�16�H�w�&3�l�lU�&�C�n��Z���G+�(���+F�*0g@�װ����	�b-��ÄD=k�f��AeS��!�ə�m����2?��xv�B�Y�����9n b�ֿ +I:�#��9�2�X��Y�{��ϴ�S��eM�rZO�$,Fpn@F��l�<j46h�x��g�,��jB^��$���-޿*�C3�+}љ ��lހ�iɵwѲj ��=�JO�X_��A��F.-
5{+rPR�|О��"�!��'�gO��~Bݲ�j1#5�F@(+����SUv�Tf45iʅ����E�eD4,���ѯag�[�s(�U	P$�%g0����f[��a��9H����~ՠT�)�jp	�K�T��Z"�,W���P���VT%0y%��3:*�|�z����-����+�#���.G�n��^�Y̢_�,�h�e�P8�C�aD�b.w*�1e�"���~�W����މ��8H�.���7���Ŕ��D �`����۰��=6C��� �͕����9i��������e�����Q�I�)�!IS�kpT{���)K����B�T��u	�{��S+����`��2/Ƀ[T��c�x�h�H��y��b4'�_D7�wn����{e���rd��1��C�^4�F����A�x��] �]��R>���w�1z�?��lS(�z)�,�r��v"��D��"3���E�<��̄��e�}&6��|K�{1�����l�Ba�%��YCB�,:l[�<$od�� �<0��v�2E/Z�y(t}�Jr>�=���lP���EZ���#{*~�W�Wv�x.&tJ�4���u�ne��Q٨���\*����9�o*�����䦒�$��-z6U��^�Y�lظCL"Q��d���xb��3���[�������_e�\�/Kx�*6�YF.�J�ØK�����zY�V�W�;ɷ( �و��[l+ҊȐ����m2�$�&�
Te�' �+�0��A#�E�E���-����K��i};v�\��{�}�b�(vh�e�� `�r��,�R Pmv�@��9�T�0g"��p��}��z�H�Ƃ1�+��J���ȍ�ư�Ý�ݔ��6�w��:��<�����ͭ @	�?�7�O�k�JNl���UQ������]��}�:� �tz-�t��]ʃ�a�Uƪ���m��uM���m����PZ��QꆶzrP]�9S��y�Aq�^����]�����8z���	���<�xF�9��=�W�&��0 ]!4p5���
!��(�R�F�����p'|d��tZ4(�5F�w�\b��{	�G�C��򎸶��L4�V�#G�����C�u�2v���d1f�O��\�'�(Fl�� �����2+�7>ȋā:нp\�DV5Y(ν0�[U&_%
�R>FU90��B�M���ih���t�Ŕ�tj}��t����b�� �'.�+����h��k��r��8~;��5��5��v��}��g �K���Ž������Yе.��|ˎЬ �zn4Џ$oZ9�	7�O;1�:#r��zNHy:�~��}�2`RS�X�4�H�۬r���utԽ�̟_���1�sA�z�n����Ͽ�w��uNJw_[�Ӎ��VZ�%c��D'y�*K�J�6!Pvi�ч}�F:e�w��y��� <��W4�z��!U�۴��E���-/�שc���v|���M�?��T��>m��d+`n(x����4���t���h#B�1�������4&h3Ї�vg���-��\owrc�8�O���I�� l�Y<i�_���.xV�Z����F;�P3�(�G�;
A�pdv׾N��i���+t�+Խ�3c�N/�[��T��1}w�ar/ޥ�������,%?ԙ��:���%��܅������M(\�D�D2X�n�����	"�~g��(G�P�F�̊�l3�>����+ 6\����]n�A�	-9C���J��@v2�^��9W�
J�x������Ō `�*�-u�%�@%s���]�qB�thw�Ӽ#�(�~�g�G�k���'LYQ�2����Mo���'�9�5jku��6��#    ��#�������t7��l����Qt�%j-
�y��~j��m���;T�S�D޿�o=��V&*��Yȇ>�������'��zi�צbG����Y����FY	�}��@�V�a���&�IN Y��?�"q�݁;��[�39v�����Q���@���E��o`���2��Ӕ�sf��{�D�q�y,?�45\��#��.��r5Lfîa���d/��J��r{B7@���ٷ�&.�R�0�h�Q��G��k��b�b���~C@L�3���w��/��݈r���&�a�S&^�ߣ��X78O�B��<�t*{|]"�?K8��\`m�J�;���Bv>f�?v�4�PÑY쌀�x\� �2:��,�K6�G�ҏ2���K�������D�X�(�1�`���qt�?d!�9&.P������o?ݝb��)<�vƶ�Y��sO�&;�Y�4ns�ڰf��r�{��j N�8H���\�9K0ټ�D%�Q��k�}>��R��:�K�v�u�I�����#�{�����e`����������V$hS���RIM��Z�;(z��t�
���
5�����!����X�����bB v6�> r����2���n�0VJ9��̜vB�v��'!�1w3��1˙`�������0�*�Xv�9��Ɂ�H�<@�2+�qGܬ6���hIx��7���$]���aa�br�B�Q&�1>���쎻���ˆ�^"�
T��:��o*�L�Jh+����٠�>ug��o��;�G?e�?m��	�F<20;	p�~l���Y(;��M\�v�f����46�#^�{��1���,6�K���=��	�?{�#H�atyՃC�����u�Ѧ`�.�� א���xÆ��wr%���h�����vZb��.lH ����	���h&f�&��ڤ�߹?�z���&���e���6G+��@v�ء�~6&o12�x���I�jԺ���!8�a�צHHa���}ܞZ8�[�O�֖7	���%��jV,�����$�F��&��6-풀j+0�o��T�J}��v�����n�iQ�����쏎]���T�V��!r![���sB��-�7drB���Օ�b7�^�}z݊Z�$��Ѭ�����0�0hG Z����6qJ�M�O6'��MN�ؔ��7�|b�e�g�y�j ���bd;q)�]�E��)[+� f���Վ��6��q����-���2l��)9�v�A�q����ו��5[�d�B�0�}&2�g��b�W`I2uI�0-���i��+�+ԓ��1jgó)�e����6�ܓP�5a{,u1[�hg�v� 2��Ϋ)\���hޗ�kx�[\-����Q��j�Y����\�o�����}*��p�����8�u�:1A��	7'{z��<v��0�4t��=oq%��e�� ���R���oE�J�>�S��訂 ���ry�fzΆ\hm�ma�|���^�(Ώؗ2�x4�jr�L^��2�����6���jW�[@#O6Mn�����s0�]n,��r.!�ʈ�φ �O�'�Id�q`A1�m���u>�Zws���̧��$ ��ϣ��w?p$���E�L�N�[X��Xv{2�}���׳�h8WpS�e&_��K�=0�c@�ͮ+<o�y������K
�E+vs��*5�eh����q;o<��2��SIf�
�vH��+3Ml����wh��2^$f�})Ѥ�2�r��͇���ş�#^�Y��D�T���Vg1P��W44i�#�[�u��[���mp"��qq�Q��Kg�zOq��C��;�.�i�0���tБ:;��'7�Gw�P;�wyt��ì�p�w$��?6"]�*�&���Ө�U1�}62���E�� ���|�VQ8�''2�i��ދ��w �9(���DAzj���U�>�ޅ�I�o���� ���yv��|���޸�ޞ�W/��4y+*[�D��(:�Rls#���V|��®S��9c��Np��zV?(�j=Q��u�t`����1+n,�O��E�P�9�z���uQL�	 ��Le�Rl�n -�]�]���=��=eM�5��LKN�d�k>��it݉��紞{b��#
4ί���w����|�#��T�5 .�=<2,<���d���
���N��3�}q�6Z��?ע�bHT���РR��	H�M�<�?er�SXXϏ��Ɲl�L3��Rh������_q�o�����K����=N�L,W ��R�w�ൡ� :FkG��������Ts�6U<b��Q�?4�ܟPT٠����V�'�]a�����*7Pt�#��5�i<�/�S����7	��Xzl���A���`
B��U�]�^x�$hFuʿڦQ DNn��Z��VZq)�}�:^��&�k"����G-����,W^C����<Z�{h_��� ܆�Kq[ѩ�2�٭.Ǒ.>��w�6Rߑ���C�h?/ш�LE�>�}���٘���@��\}'�Ŋ��;�<�9�R���ՀO�6�8�hH���'ح�t�@���0�� Y���Z�r���B��J�DƷ|��$,�*M�(�K�r���'�Ū�1b� :0Έ;|(�?[I�h�6�s���u+��55P�bvĶr���6���������)M�j>�o&����r��0<�N�1rc\���m�k�9̊��n�D�*s�B_�"~(lyo<=��r���e�ߏ�+����> �����D�񍬝�t�0[~�sA�����)�޺�;cgt}�����4�_G`?i�r�*u��J��}����֦�����B2��߉��UƁ�l!K:�-\�V ����԰x���R��jt�7W�&��9�s���{�FC��x&:����_[0M;]����??�����P)`���	^��O��Xep ���@�=0���[��(ȾEt�nd��q�簡���#��n��$��.>i��fDY� l��Yp
hp�s@������W���I�����R�f~���~��%���ND�̹6�� 巐��e}E��O����Ǉw��uF-�8��h�(>�Ϟ���v9��p}��^�l�):�Ce�nAx���ѓn`��	:��	N'���������ȭaT5�����Ƨ���a�4̈́`�Q�Ȇ\}�d�~�ꆘ�DǎwD�I��a_��ߑ���������9�١Y���]�.���������K�n��Z�����{P�ڗ⧯�8�@i8�zm���0� ��D�}�I
��K��V�3 �ȅx��q�&�ȅ�	�M4�[�#�� p�9Eܓ����ܷ�L����9I��Ǯ�-	�F�$��j$�U%$DLͭm�JI����5�F�2~���y�|�L���9�� -��<Z�������'i�NS@K�vFH������"czg�[Z���fg�g�4�O��ֽ�8��Xv�4�掭_ޗ�a���x��q!��^���ƙ�`i$��q���JQ��4It4���
���ݷ8���n0��	��cV',vsi�-��־)��y5�&�m�5N�{aM�q\}3����%v���m>��fY��`��:-MwT���n'���!q2GA0V؁í?v0�Yc*��$S�	uج$��!O�=F0�����M���5y�e�y���6��{x�
ox���<��4�-��9��sLܚΎom�`�
���'ǌ����X<�.��PiE��,9�MH�A�=�)��$4�-c�}dkV��x���C�3�N�)]%�V�X��ק��S`F6Փ0nIs�����s�:ݬvm%�U�^���&��y,�}ƬZ���i������!��mK����&�F���C�=��^64���^pߌ��e����-����vmQ����S�'�1�"/�u�=�h��#�D'��r��A����IJ�PA���b�7��I�YS6}��鹥A'v��c2�.G�����;8�jp��H<�&h�bC� ,�U��.�i��A�R�T��)I
4|�;�/����*���E�L�"�2���V:�� ȳK ;  j��o�0?�,��y7>����1n��a<Zb�KJQ��F�=�ĵ�z�:M��|9�n�)���?�]#��	+�(�A��:=�Ё�́�7�J	�=��j%���AvJq�r�ڭ�p�5~߾��5m�E��f�v�q�2%Qb��[�3>dn�¦�~�S[��ԘF�,�H�F��N��W�o�T�SF�F%�������}�D�l��nT^�N���}�/' Ӱ��,���g��7�)�
�J{��f:{K��Ϧ��r���h�M��bD��r��
�:L�6GE�|�	]�Uw�64��+�{���J�DY�:���_�������.��>a�{grCqp�OX�e߅�JO�(�Q?�e�**]���2���h�ez�{~��ݡQ�7?�η��[��-�Z/g�;���?:ޚ�(�T
t���&��̧���_}A�qn/�'�o>���f2��%W�;BLq$��>Yʹo5��\�AΨ�~-����*i�v�`������:���Xn�hqE�{��S �eoܷZ3�R\Σ�R͌�����7���@$&2k?�H� ����4���{\�,+3:�#+g�Ī�vB��g�d��J?�J��q�
'��Rp%�j^�ckO��o�8���v���'�~Ք�!͵:����A�����߾��6|���L�	h���?��L����؍Pߋ�8f�g�Hաs>urTOn�����7V�sy�"�ϲJ�gW�� LO��,RR߹�1�&��0h3C�����ה:`��p�F`D�Q�_� �I���u�VV!�X�JH�d��4y���i_����L��]_���U��?W_o��Lxs�����w��$/�O9���T�Jŝ(d���nTHo]5{o�c�w_1g�����iMݶ��w���m��L�nRNM���Q����..X����b��ho7y�I6칡8,�ud�Fy�kjЪ�E��
�ϯ��`��`:��t�ܦ�)�x��EYS���D�2ƕ��W��+%9e��'������� ��>v(C-_L��J:O뚊��}Лe��7�9�׹�D�W,����헇ۛwGo��;�p����Ն�'��ت����EGESWl"�{��֦�D�lU��6y��<���#������>��QB(�e�6�%����P-\sL�4��$�w�kO��d�7��+�`������u˅�bF^��i��8�*w�R��B���x���{s�D��Ew���'`U{p|E�J�wQ7�dll�D���~�2��۩�Qߓ�4�w.6Q�����ЪV㱎�xQP|�o��W�ڷ��Ș�̟(Lj2l�T"��aF���`�K�4g�Zm�uM	���|?�O��
a��K*�@�I_�<Ӽo��X�j�J}0��<>x컌��ѿ5��<�}�����3�(�*}�J������%�|�&w�f�j���O�B���4=��S�bs��G;�*]]D�E��?�v���5�6��pG��К�Pg�4X%Xg��{>$�5����}	Æ���U&>��[�����L�ܡ�n)�M��p�`���U>���Q�6=m(�|���ҟi��y�tW��g��Z#��?�!)>�6��M&����2��}^�u�|��(��ϥ��M�\:R�gG|�����OS�Z�@"�����![P�=�VN��X"m�cv� q�K{�e��^Z�u�T�z�-\���X��̵��n����vƸ^�}2C�FYW�"��������j���ʫ�|��nQ�v]l1�ft�Y��B��k���"��emV��)��.���O��'g�^�6�M���Z݌r���y=�n����_-k����~����9� GR��ڳ��\�AΘ����2ijQH���'ܰ���:��@�&�_����!u�� ƊL�2� ��^�P�[���� 	�@�cWH����G�Sv�۪���2��4>��rE��������A�Z_�����ޮb��_�{=��fӠ�k�Y�O�N#�^q	���9i�M�O=��wm��H��k�R
0�u���[�*�����[����?V�b��0�� ��)�V8&U���WJu�v:2�$�'���M���^_�t�-"M�^�@g�5��dL��so۴�c��l5�1�{Qg��w�"~�gg�_׌�u�����.�i�^����Vz�ƚR��Q�j�n�VW��o>}��|~��ʤ��P��v��@�z��櫵��~w�'W��NL���4���i}9�]�k�m��E|�.3:����L�EO��y�J)Y|�vH�[YR�Nz�f���a�7�lB 0�� ���c�p���i�^*5=����+!��0pHʾE`���,���\���%�a.fP�D���wX�d��b���%��W
r�9�ާq�0`���x�G��z��-y��q��yt���RILM�����9;������X;�Yd �ͫ��6tHr���	W >�঑��[����Z������~�YuB���԰_�]
�Qk��18<�]]9�j���Tx��<�W�R�+�$��#�,;�D��ǟm��u��gr� ۵6�ab�����C�����fJ�v���.6��GZus�Ԥg__F�D��Й;8��o͛=Φ���;Л�q��'"�7�;׳]2~e$�H-ӯ��x�SjDb�C�G7�U��,fQ%g�I�t�������cr�{�N�z9C�'��X��Զ>��-L�s;�nb�L���*��n@3�K����Po#k�)W�h�:x�A䍅-�<����ʾ|�e2Ce�"v��T���CZf��H�l�T����ӱ��7��kcݐ�`���퇌2�]�	�k�d<�@�;_R�r�ս�s�a���8~�2<a)��<v����������}|r�#�؃G�dN�μ�9��N��B�.ۯq�-��Q�^�{]y�����'��x���r����1T��k�,����`y2��;8�9{���w�c��<��~_����o�� ��G��-ȄB�������6�8+I���Z㯥�:�/7um�9�R��]��T���I.Ջ��+�m�1�X�D@�c��w�C�%.�,P*�k{4��I7E.L#�����?�?ղ�     