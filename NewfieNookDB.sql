PGDMP       
                |            NewfieNookDB    16.1    16.0 B    u           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            v           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            w           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            x           1262    18709    NewfieNookDB    DATABASE     p   CREATE DATABASE "NewfieNookDB" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'C';
    DROP DATABASE "NewfieNookDB";
                postgres    false            �            1259    18710    address    TABLE     J  CREATE TABLE public.address (
    "address_ID" integer NOT NULL,
    street_address character varying(30) NOT NULL,
    city character varying(25) NOT NULL,
    province character varying(25) NOT NULL,
    postal_code character varying(8) NOT NULL,
    "person_ID" integer NOT NULL,
    address_type character varying NOT NULL
);
    DROP TABLE public.address;
       public         heap    postgres    false            �            1259    18713    customer    TABLE     �   CREATE TABLE public.customer (
    "customer_ID" integer NOT NULL,
    "person_ID" integer NOT NULL,
    username character varying(15) NOT NULL,
    password character varying NOT NULL,
    payment_info character varying NOT NULL
);
    DROP TABLE public.customer;
       public         heap    postgres    false            �            1259    18740    join_category_product    TABLE     u   CREATE TABLE public.join_category_product (
    "product_ID" integer NOT NULL,
    "category_ID" integer NOT NULL
);
 )   DROP TABLE public.join_category_product;
       public         heap    postgres    false            �            1259    18729    join_customer_address    TABLE     u   CREATE TABLE public.join_customer_address (
    "customer_ID" integer NOT NULL,
    "address_ID" integer NOT NULL
);
 )   DROP TABLE public.join_customer_address;
       public         heap    postgres    false            �            1259    19026    join_customer_order    TABLE     s   CREATE TABLE public.join_customer_order (
    "customer_ID" integer NOT NULL,
    "invoice_ID" integer NOT NULL
);
 '   DROP TABLE public.join_customer_order;
       public         heap    postgres    false            �            1259    18743    join_product_order    TABLE     q   CREATE TABLE public.join_product_order (
    "product_ID" integer NOT NULL,
    "invoice_ID" integer NOT NULL
);
 &   DROP TABLE public.join_product_order;
       public         heap    postgres    false            �            1259    19016    join_vendor_address    TABLE     q   CREATE TABLE public.join_vendor_address (
    "vendor_ID" integer NOT NULL,
    "address_ID" integer NOT NULL
);
 '   DROP TABLE public.join_vendor_address;
       public         heap    postgres    false            �            1259    19021    join_vendor_order    TABLE     o   CREATE TABLE public.join_vendor_order (
    "vendor_ID" integer NOT NULL,
    "invoice_ID" integer NOT NULL
);
 %   DROP TABLE public.join_vendor_order;
       public         heap    postgres    false            �            1259    18756    join_vendor_products    TABLE     r   CREATE TABLE public.join_vendor_products (
    "vendor_ID" integer NOT NULL,
    "product_ID" integer NOT NULL
);
 (   DROP TABLE public.join_vendor_products;
       public         heap    postgres    false            �            1259    18721    order_invoice    TABLE     �   CREATE TABLE public.order_invoice (
    "invoice_ID" integer NOT NULL,
    date date NOT NULL,
    shipping_information text NOT NULL,
    "customer_ID" integer NOT NULL,
    "vendor_ID" integer NOT NULL,
    "product_ID" integer NOT NULL
);
 !   DROP TABLE public.order_invoice;
       public         heap    postgres    false            �            1259    18726    person    TABLE       CREATE TABLE public.person (
    "person_ID" integer NOT NULL,
    person_name character varying(30) NOT NULL,
    email character varying(30) NOT NULL,
    phone_number character varying(20) NOT NULL,
    person_type character varying(10) NOT NULL,
    "address_ID" integer NOT NULL
);
    DROP TABLE public.person;
       public         heap    postgres    false            �            1259    18737    product_category    TABLE        CREATE TABLE public.product_category (
    "category_ID" integer NOT NULL,
    category_name character varying(50) NOT NULL
);
 $   DROP TABLE public.product_category;
       public         heap    postgres    false            �            1259    19163    products    TABLE     �   CREATE TABLE public.products (
    "product_ID" integer NOT NULL,
    product_name text NOT NULL,
    price numeric(10,2) NOT NULL,
    description text NOT NULL,
    image text NOT NULL,
    "category_ID" integer NOT NULL
);
    DROP TABLE public.products;
       public         heap    postgres    false            �            1259    18746    vendor    TABLE       CREATE TABLE public.vendor (
    "vendor_ID" integer NOT NULL,
    "person_ID" integer NOT NULL,
    vendor_name character varying NOT NULL,
    username character varying NOT NULL,
    password character varying NOT NULL,
    payment_info character varying NOT NULL
);
    DROP TABLE public.vendor;
       public         heap    postgres    false            e          0    18710    address 
   TABLE DATA           w   COPY public.address ("address_ID", street_address, city, province, postal_code, "person_ID", address_type) FROM stdin;
    public          postgres    false    215   �Q       f          0    18713    customer 
   TABLE DATA           `   COPY public.customer ("customer_ID", "person_ID", username, password, payment_info) FROM stdin;
    public          postgres    false    216   "T       k          0    18740    join_category_product 
   TABLE DATA           L   COPY public.join_category_product ("product_ID", "category_ID") FROM stdin;
    public          postgres    false    221   U       i          0    18729    join_customer_address 
   TABLE DATA           L   COPY public.join_customer_address ("customer_ID", "address_ID") FROM stdin;
    public          postgres    false    219   bU       q          0    19026    join_customer_order 
   TABLE DATA           J   COPY public.join_customer_order ("customer_ID", "invoice_ID") FROM stdin;
    public          postgres    false    227   �U       l          0    18743    join_product_order 
   TABLE DATA           H   COPY public.join_product_order ("product_ID", "invoice_ID") FROM stdin;
    public          postgres    false    222   �U       o          0    19016    join_vendor_address 
   TABLE DATA           H   COPY public.join_vendor_address ("vendor_ID", "address_ID") FROM stdin;
    public          postgres    false    225   JV       p          0    19021    join_vendor_order 
   TABLE DATA           F   COPY public.join_vendor_order ("vendor_ID", "invoice_ID") FROM stdin;
    public          postgres    false    226   �V       n          0    18756    join_vendor_products 
   TABLE DATA           I   COPY public.join_vendor_products ("vendor_ID", "product_ID") FROM stdin;
    public          postgres    false    224   �V       g          0    18721    order_invoice 
   TABLE DATA           {   COPY public.order_invoice ("invoice_ID", date, shipping_information, "customer_ID", "vendor_ID", "product_ID") FROM stdin;
    public          postgres    false    217   "W       h          0    18726    person 
   TABLE DATA           j   COPY public.person ("person_ID", person_name, email, phone_number, person_type, "address_ID") FROM stdin;
    public          postgres    false    218   X       j          0    18737    product_category 
   TABLE DATA           H   COPY public.product_category ("category_ID", category_name) FROM stdin;
    public          postgres    false    220   �Z       r          0    19163    products 
   TABLE DATA           h   COPY public.products ("product_ID", product_name, price, description, image, "category_ID") FROM stdin;
    public          postgres    false    228   -[       m          0    18746    vendor 
   TABLE DATA           i   COPY public.vendor ("vendor_ID", "person_ID", vendor_name, username, password, payment_info) FROM stdin;
    public          postgres    false    223   ��       �           2606    18762    address address_ID_PK 
   CONSTRAINT     _   ALTER TABLE ONLY public.address
    ADD CONSTRAINT "address_ID_PK" PRIMARY KEY ("address_ID");
 A   ALTER TABLE ONLY public.address DROP CONSTRAINT "address_ID_PK";
       public            postgres    false    215            �           2606    18770    product_category category_ID_PK 
   CONSTRAINT     j   ALTER TABLE ONLY public.product_category
    ADD CONSTRAINT "category_ID_PK" PRIMARY KEY ("category_ID");
 K   ALTER TABLE ONLY public.product_category DROP CONSTRAINT "category_ID_PK";
       public            postgres    false    220            �           2606    18766    customer customer_ID_PK 
   CONSTRAINT     b   ALTER TABLE ONLY public.customer
    ADD CONSTRAINT "customer_ID_PK" PRIMARY KEY ("customer_ID");
 C   ALTER TABLE ONLY public.customer DROP CONSTRAINT "customer_ID_PK";
       public            postgres    false    216            �           2606    18953 )   join_customer_address customer_address_PK 
   CONSTRAINT     �   ALTER TABLE ONLY public.join_customer_address
    ADD CONSTRAINT "customer_address_PK" PRIMARY KEY ("customer_ID", "address_ID");
 U   ALTER TABLE ONLY public.join_customer_address DROP CONSTRAINT "customer_address_PK";
       public            postgres    false    219    219            �           2606    19030 %   join_customer_order customer_order_PK 
   CONSTRAINT     ~   ALTER TABLE ONLY public.join_customer_order
    ADD CONSTRAINT "customer_order_PK" PRIMARY KEY ("customer_ID", "invoice_ID");
 Q   ALTER TABLE ONLY public.join_customer_order DROP CONSTRAINT "customer_order_PK";
       public            postgres    false    227    227            �           2606    18768    order_invoice order_invoice_PK 
   CONSTRAINT     h   ALTER TABLE ONLY public.order_invoice
    ADD CONSTRAINT "order_invoice_PK" PRIMARY KEY ("invoice_ID");
 J   ALTER TABLE ONLY public.order_invoice DROP CONSTRAINT "order_invoice_PK";
       public            postgres    false    217            �           2606    18764    person person_ID_PK 
   CONSTRAINT     \   ALTER TABLE ONLY public.person
    ADD CONSTRAINT "person_ID_PK" PRIMARY KEY ("person_ID");
 ?   ALTER TABLE ONLY public.person DROP CONSTRAINT "person_ID_PK";
       public            postgres    false    218            �           2606    19174    products product_ID 
   CONSTRAINT     ]   ALTER TABLE ONLY public.products
    ADD CONSTRAINT "product_ID" PRIMARY KEY ("product_ID");
 ?   ALTER TABLE ONLY public.products DROP CONSTRAINT "product_ID";
       public            postgres    false    228            �           2606    18873 )   join_category_product product_category_PK 
   CONSTRAINT     �   ALTER TABLE ONLY public.join_category_product
    ADD CONSTRAINT "product_category_PK" PRIMARY KEY ("product_ID", "category_ID");
 U   ALTER TABLE ONLY public.join_category_product DROP CONSTRAINT "product_category_PK";
       public            postgres    false    221    221            �           2606    18875 #   join_product_order product_order_PK 
   CONSTRAINT     {   ALTER TABLE ONLY public.join_product_order
    ADD CONSTRAINT "product_order_PK" PRIMARY KEY ("product_ID", "invoice_ID");
 O   ALTER TABLE ONLY public.join_product_order DROP CONSTRAINT "product_order_PK";
       public            postgres    false    222    222            �           2606    18776    vendor vendor_ID_PK 
   CONSTRAINT     \   ALTER TABLE ONLY public.vendor
    ADD CONSTRAINT "vendor_ID_PK" PRIMARY KEY ("vendor_ID");
 ?   ALTER TABLE ONLY public.vendor DROP CONSTRAINT "vendor_ID_PK";
       public            postgres    false    223            �           2606    19020 %   join_vendor_address vendor_address_PK 
   CONSTRAINT     |   ALTER TABLE ONLY public.join_vendor_address
    ADD CONSTRAINT "vendor_address_PK" PRIMARY KEY ("vendor_ID", "address_ID");
 Q   ALTER TABLE ONLY public.join_vendor_address DROP CONSTRAINT "vendor_address_PK";
       public            postgres    false    225    225            �           2606    19025 !   join_vendor_order vendor_order_PK 
   CONSTRAINT     x   ALTER TABLE ONLY public.join_vendor_order
    ADD CONSTRAINT "vendor_order_PK" PRIMARY KEY ("invoice_ID", "vendor_ID");
 M   ALTER TABLE ONLY public.join_vendor_order DROP CONSTRAINT "vendor_order_PK";
       public            postgres    false    226    226            �           2606    18877 &   join_vendor_products vendor_product_PK 
   CONSTRAINT     }   ALTER TABLE ONLY public.join_vendor_products
    ADD CONSTRAINT "vendor_product_PK" PRIMARY KEY ("vendor_ID", "product_ID");
 R   ALTER TABLE ONLY public.join_vendor_products DROP CONSTRAINT "vendor_product_PK";
       public            postgres    false    224    224            �           1259    19042    fki_address_ID    INDEX     K   CREATE INDEX "fki_address_ID" ON public.person USING btree ("address_ID");
 $   DROP INDEX public."fki_address_ID";
       public            postgres    false    218            �           1259    19180    fki_category_ID    INDEX     O   CREATE INDEX "fki_category_ID" ON public.products USING btree ("category_ID");
 %   DROP INDEX public."fki_category_ID";
       public            postgres    false    228            �           1259    19091    fki_customer_ID    INDEX     T   CREATE INDEX "fki_customer_ID" ON public.order_invoice USING btree ("customer_ID");
 %   DROP INDEX public."fki_customer_ID";
       public            postgres    false    217            �           1259    19048    fki_person_ID    INDEX     J   CREATE INDEX "fki_person_ID" ON public.address USING btree ("person_ID");
 #   DROP INDEX public."fki_person_ID";
       public            postgres    false    215            �           1259    19054    fki_person_ID_FK    INDEX     N   CREATE INDEX "fki_person_ID_FK" ON public.customer USING btree ("person_ID");
 &   DROP INDEX public."fki_person_ID_FK";
       public            postgres    false    216            �           1259    19097    fki_product_ID    INDEX     R   CREATE INDEX "fki_product_ID" ON public.order_invoice USING btree ("product_ID");
 $   DROP INDEX public."fki_product_ID";
       public            postgres    false    217            �           1259    19103    fki_vendor_ID    INDEX     P   CREATE INDEX "fki_vendor_ID" ON public.order_invoice USING btree ("vendor_ID");
 #   DROP INDEX public."fki_vendor_ID";
       public            postgres    false    217            �           1259    18945    fki_vendor_ID_FK    INDEX     S   CREATE INDEX "fki_vendor_ID_FK" ON public.order_invoice USING btree ("vendor_ID");
 &   DROP INDEX public."fki_vendor_ID_FK";
       public            postgres    false    217            �           2606    19075    person address_ID    FK CONSTRAINT     �   ALTER TABLE ONLY public.person
    ADD CONSTRAINT "address_ID" FOREIGN KEY ("address_ID") REFERENCES public.address("address_ID") NOT VALID;
 =   ALTER TABLE ONLY public.person DROP CONSTRAINT "address_ID";
       public          postgres    false    215    218    3495            �           2606    18777 #   join_customer_address address_ID_FK    FK CONSTRAINT     �   ALTER TABLE ONLY public.join_customer_address
    ADD CONSTRAINT "address_ID_FK" FOREIGN KEY ("address_ID") REFERENCES public.address("address_ID") NOT VALID;
 O   ALTER TABLE ONLY public.join_customer_address DROP CONSTRAINT "address_ID_FK";
       public          postgres    false    215    219    3495            �           2606    19175    products category_ID    FK CONSTRAINT     �   ALTER TABLE ONLY public.products
    ADD CONSTRAINT "category_ID" FOREIGN KEY ("category_ID") REFERENCES public.product_category("category_ID") NOT VALID;
 @   ALTER TABLE ONLY public.products DROP CONSTRAINT "category_ID";
       public          postgres    false    228    220    3512            �           2606    18787 $   join_category_product category_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.join_category_product
    ADD CONSTRAINT category_id_fk FOREIGN KEY ("category_ID") REFERENCES public.product_category("category_ID") NOT VALID;
 N   ALTER TABLE ONLY public.join_category_product DROP CONSTRAINT category_id_fk;
       public          postgres    false    3512    220    221            �           2606    19086    order_invoice customer_ID    FK CONSTRAINT     �   ALTER TABLE ONLY public.order_invoice
    ADD CONSTRAINT "customer_ID" FOREIGN KEY ("customer_ID") REFERENCES public.customer("customer_ID") NOT VALID;
 E   ALTER TABLE ONLY public.order_invoice DROP CONSTRAINT "customer_ID";
       public          postgres    false    217    216    3498            �           2606    18792     join_product_order invoice_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.join_product_order
    ADD CONSTRAINT invoice_id_fk FOREIGN KEY ("invoice_ID") REFERENCES public.order_invoice("invoice_ID") NOT VALID;
 J   ALTER TABLE ONLY public.join_product_order DROP CONSTRAINT invoice_id_fk;
       public          postgres    false    3505    222    217            �           2606    18797    vendor person_ID_FK    FK CONSTRAINT     �   ALTER TABLE ONLY public.vendor
    ADD CONSTRAINT "person_ID_FK" FOREIGN KEY ("person_ID") REFERENCES public.person("person_ID");
 ?   ALTER TABLE ONLY public.vendor DROP CONSTRAINT "person_ID_FK";
       public          postgres    false    3508    223    218            �           2606    18832 "   join_customer_address person_ID_FK    FK CONSTRAINT     �   ALTER TABLE ONLY public.join_customer_address
    ADD CONSTRAINT "person_ID_FK" FOREIGN KEY ("customer_ID") REFERENCES public.person("person_ID");
 N   ALTER TABLE ONLY public.join_customer_address DROP CONSTRAINT "person_ID_FK";
       public          postgres    false    3508    219    218            �           2606    19043    address person_ID_FK    FK CONSTRAINT     �   ALTER TABLE ONLY public.address
    ADD CONSTRAINT "person_ID_FK" FOREIGN KEY ("person_ID") REFERENCES public.person("person_ID") NOT VALID;
 @   ALTER TABLE ONLY public.address DROP CONSTRAINT "person_ID_FK";
       public          postgres    false    215    218    3508            �           2606    19049    customer person_ID_FK    FK CONSTRAINT     �   ALTER TABLE ONLY public.customer
    ADD CONSTRAINT "person_ID_FK" FOREIGN KEY ("person_ID") REFERENCES public.person("person_ID") NOT VALID;
 A   ALTER TABLE ONLY public.customer DROP CONSTRAINT "person_ID_FK";
       public          postgres    false    218    216    3508            �           2606    18812 !   join_vendor_products person_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.join_vendor_products
    ADD CONSTRAINT person_id_fk FOREIGN KEY ("vendor_ID") REFERENCES public.person("person_ID") NOT VALID;
 K   ALTER TABLE ONLY public.join_vendor_products DROP CONSTRAINT person_id_fk;
       public          postgres    false    3508    218    224            �           2606    19098    order_invoice vendor_ID    FK CONSTRAINT     �   ALTER TABLE ONLY public.order_invoice
    ADD CONSTRAINT "vendor_ID" FOREIGN KEY ("vendor_ID") REFERENCES public.vendor("vendor_ID") NOT VALID;
 C   ALTER TABLE ONLY public.order_invoice DROP CONSTRAINT "vendor_ID";
       public          postgres    false    223    217    3518            e   R  x�MS˒�0<��b� �xs��d]����S�F^(�RJHv��g�� H�z�{�% �D�S�4Tj��'����v��'�	Sۺ��n�GQ��&�!x�����ȇ$�<����
s2�3u��g��we����÷ |���@�E��4��S�h_��[}"\�e�E��8� hC�b�W�sRf�lŧe��v��T��A�m1�	p��R%oXr�BN�9��;wd�/�3�s� �!I&�}m{qʰq[5�Rw��$#l�)fc��sq�)wӴ|����t�81ԑjX,�,�v�'��)$���(1�=+\i*��_���R�7 �6��� �3	#5%��;�k�.���p��9_{���O���î��>݀-�H�mlu��e#'F��嬢o�m��{��#ϥ4}��F�-���SV��Z��U��l)�1w����5����p��~��3���E���a��xDN��a�ʵ�����a!��T��gN��a`����E �!_|2��%�H)�`���m��H��|&��+�� 4h�j~�����#��%���㦐�<��z�#��>�F��P(�      f   �   x�M�]k�0 E�o��tf�~
S�����V(�I����%�Ju?~�z���"��L)ƛZb�v^�M��}�]�Yw�F0�#>��R���j��W�fY������JH�ԝ>��&+�lh�">B��$Ji:c�|���������e�� �e�׺���!\xc�"D�GW���4���1zU�J���~�ߋ����J���G;r�&��3���M�?B� �UTy      k   <   x��� 1�jq�C�8�.��s�J�6�n:u��`֛Oˍ�m�25�~TN	A      i   >   x�˹ 1���(�Ɣ,?���:N1GB���2W�R�T�R������x��lrO݊�?�:
*      q   >   x���� ���0=��t�9~��ЋuHmJ��b+9�,E���j���y���<��q�	�      l   <   x�ʹ�0İxY�G<����:l�0N�HOaKgfr��X�l�\�2�Q46����}���
*      o   +   x��� ��N0�p(��?�'ʎŊ���;#��5�jW(      p   >   x�ʹ�@�@{&�p���8]2�M��M�DxL�eО�g��Nꡆ��0-��_��y      n   ?   x����0��0L/���٥���8?����RD��4)��)�m�Fw˷�#�作��)�]��)y      g   �   x�]��JAE�u��h�[�^�ĝ��d'�~�ձ�$B��>�TQ4j
��M��������4af�s�����"U�$��T,�.�I�R@��B�7uj�z��7�M�d$��F#����[��eD���\jSꨮ��኱dh�f��d�xE�L�ByZ?����l�g�L�`��`��A')���ꝣ^*ꎬ��[�r�uQ���<���6s���@�Za      h   t  x�MSMo�0=�����ؾѴj�H�FJ�\z1�,8{e̒��z?���<V���10ؘh�-f���g��3(�Ʉ7���ݐw~�J0�JM!K8��� �px6㈘m�'F�`���	����1�"H]S.$e��-s��D���m�`��`f�b�L�~��x� ˚�JP)�/[)�����b�b]"��zA���]X��+-봨���GI*���h�M���n:���N���;�P'BWT3�>���	��q��`f|���T��׼���,���:��$���&~av���������>�P�VLҲ��F�D��	.ۘ�7�q��v2�;A��viG�ϧ�L/W5-
)o�p�!&;.Z�m?�jZ�w&D��I�TTq}��Ij����;۽c�}{A�q�~�tH�|C���T1q͞�1�$ϩ����~gq��4_�I�t��LQ�R��7����`�C���O�|?,�o/�mљ�b��Oi0ZrN����=�0m����b���5��79. �t��Y��Հ ��MJٸ����L�in��>������T˚]�%aܯǧ]�`���}{���9﷉�Ė<�W|[VãO��~��T������d�)�"�%nB+�/'��`4=      j   �   x�-̻�0@����L)�-*,HH�,�qi�`WI���W:�Z�9aM��T��4�h)O�j�}q�G;���˻�fY(r�=t�^���K��^ؔ#�Wu����Op��XЮ�J�>����a*�S�LI�>W���f0d      r      x��}˒�F�غ�ɅD;\�» ݘP4MR�&9�IM8�� UP�],����^/�F������'��|��ģM�ټ�f<1C�]�H��+�ɶ&��*k��b[�kf��y+�k^�#QUۉ7��˶b5~_3^	��oX*+&�E�M��U"�D�*D�0��׬Y	V7�bY	듌�I�V�^rS����+�V�,g웶nX�}`��Y�olS&L�?���ɪi��W�9�F�$��*�<�Ų��I9�Wr=O�\�s��{B�=��G�e������������cZ����O����}�/��o�6�P9��������ˊ�K�pE�Ź��'����������S���)	Y�������(`��� T,��ony�����Sߵa��m�َF�)��Z�ٺ\��>ڧU�5�U[ƫ?��2��,�Ƶ3���N�06L�s7�M#�ex�o�ČRϱ掓��Mc�9��F�g��Fjž��K�x�����tY���y,v)��(k�sV�H��ڈe����v�K��s۴��i�3@����H�H��J�����1y�9�Q�;��d,sx1�+[�GR^e�
��qů���U��2@��%�4�y�����T!o-a_X�[ǰuM�#J�^���݂��97����I7F�5�l� ��i��ev؝�"��?�? ���@M��U&���
���۬�x��x�Z���o~���k�D����'c�t�Q}��59�e�e�:F�tR��5@���Po�hX��׬�WBќ�ĭN� ��.y|��O(�N ��x{�F��
���PO���di**ԍf�$*Dx�&8��ҏ���5+��D*�������d�+�� ��d���q�[��C����^���9��t�"OH_�N��T�e�:�ћ5����$"��L�5��h����O��B�G:�9h����y��W@d�'�/:ٟ���\�(��Z��Y!1��
~^�Au�eG住@^�
�>�>L��'�jQV��D���@֠� �kQ� :$���(LR�h��A&��C���� �.��Y��e ϖ�fDpH��
AΣ��??B�L��!��?�	���WGQW�0�9�]9[Ɇ�mQ�n���t�jxs�/>��wĔ�>M@��<Р(|O�BD��%��#��_~:��{ �Ch{��m�RՓ=9��dmwI�W�{*d`?�X�B����R��j�~�)�8xQ�5����Y����'��(�Y��G�?�%�Hq�mKC�Ub��(�����;�������~���c)K*�4��E_���_
	�◟��]QѦ�{�����eœ�ϧ�LO�6&w��4��%���W��T���pC�R�F�)JP���;���sG�u&���Y~��P����<sr&7ȬXHNp%!P�W��)>��]��cmދ�����h�~wr�c�o;� ��t'�X��M�����E8,<�����n��WAƛ<���6���`�KQMU��t�ke����kV��f%�Dдb7��K�����g7�|P��!0�UV�����'r�_���c�mV,��ńj-�`�UhĴ+$ئMR�~� Dn�"���G9�~q`#>4m�↬��g��1�Գ�"�!�l�v&�2�Fas��4�Ҭ(a�Ёb�Bg�(%�X�`�)�-z��t�9�I*���]�%!e{�!^a�K=BτН�S�-[J��)�@[�t "n��wU�Bw �c� �kR���ޚ\Bvq)׃Z(�c�b�]a�Pq�z�2�nVX"ٮ�9g�F�&�=9�.�z��h;
Ijy�)m���N���l��ȸf�V����h��(䤂�m����1�o1X��#�u.���6�D����LNŁ�I�/��;+�)`���@
��!��u[�/���>�u!%�u��(uۣ�ߚ\p����l3a����xy^�'���c���ϡ!�EN��_~�g���
m�1����#�Fl���O���jq�0��B�-ʯ!����=��,������A�f�j�E����-mKC�C~�V���|�?�l����k�[1�s�GyV�XA@�0Wfb0#m����i�B����Yų2�8$�OP
�C�b4(JUd��/d�Gn�,��P�6HW�U�����]���R���{�]�s�o��f�$�TNqsA�S6XN�rʀ�:�!�/��`�e��E	��s�� �ύ_	̞{�3kAnUGn*h���Ȭ^a����|��m��>+]�&H�{
Q�����>�tG.��r�X��A�;(�̓1�w6��^�C!v�Z�S��2��'T�:�F@��b$p�`)�F���m�2pI���h>���>;�ĝ�f�PbY�ʒ��뿸�
H�)۠1�w��6V�����5��L�i(l�����6#���@h�3����6Gd} ���9�+jt�4ů�\ͻ3�>|���L���y狽�i�=9��l�,rv�FT h2?!b}Ë�-���m���� h�;�x��IE_/?�{b�F��b���*���M�|Ѯ1U�i�,C�48Ol�Wr�I�_d 8�m�m�!�:@� M�|(����l��d�	B�=Ie�IUR�� h�<Ԗُ-�bU�2�c��[�-��R����<ÃQ�-��}� �`5I7��������W0�d��C4\��fM�Uek �QS6(˺�Z:�HY���Q
� nu.ĵҍ޾(Y��[�|K��)�x"��D~[�P�T|�gH�O���]0��{wv{b-�=�y�E�5b�Y���N���s�S��i��9ə\J���'���]Ș.���!L���}F)�m"(�Q�H������WXa¸�5�,�ix����e��ӎ=��R��ȱ��m�4�cEwt&��UR���y�n��=[�)2�b#�H�*���71�$<� ����e� Ó��Y�e�u࿒�(��m6P��K�ߕY->�g >{�	잂������;v:8<�)�z�%��B2�go����%�R܈d��5�S�F�WiA��y�(�q8D��P��P�z�{���\ `	RB��ɾ? �fڠ��мK����G"�*����H�~��?�Z�B�i
�t(1�.���\]�s�?]ײ)��)X�XLH��mdQ�U	�:�\r�����Е6 :Y)$��&�j�����(o������z�qsTq彷d�!;�($�}`����M�>��T���x�s���>��#c/�%&��6M���d czٍ_BDL��i�	��@��_��d*���ٶ榧׵����ث-u]�������U��"+s8	�:KA��!��Js�]�"|ćN�:�]n�zmb�I<�9���^���{���TO�w�l�A4�b]a�J[��$���	��U[.�F,% z���(��ֆB�S�J����}ݙ����q��,ʖ��jqP[�ͱ�-"1����W\	�USc��vdW~�9�����"�=Ը�jdef����&;q�˞yL�t� �&�W2��8HY�^vDB�h��6ø��@�[���Y��,�����`�G(�h4�j�21�nP�Ў��\�X�p�{���Cu[a�5v���[A�!9�3���Тp��5�sPe�
V�T�7��|�w���?L{N�����z� :��k��g��u��.kwA�*��LM�<S�µ\ӡ�(mV]{he�6�:�~/��.��Sg3����L�>�YB�P7�`t���^U-����kp
���С�LC0��w��o��7 p��>��TW!.�Wו�p����=�R)>e�Q�!>(��U�=�a��ur]�a�;��D�c�	lJ �T_���kEP�0l��ht���X���L�U����J8/�$�����XV�A�ȵ�u�hʂY��?Yd��5�
М�n���2���/�b��Պ͙3���ɾ��?��I��u��e�����]f�d�;"3T'�B�&;�h_b�W�,�l!L�X�@�d 8^i��V�d?H`�l�    E�U�n�yW7S��q�@$^d�N��S#0M۰���?������0[�,�^tg|�Bw�|�*o�q��׫o�}�XqC�m�
/����ȡ�DU���ɣI9��|���>�����Ҙqˬ��^��@���8��j���zξu�U�B+ƢO�J����i]��.�X�+�"+�=x$��vM��)���d	���H3UN��|%[�N�L��Mq[�	���Ð��y��O���]��,=�Iq�� s,��rYf?���g�JD:��q�Ŧ���M\T&��N�_�t:��J���f�HW���r>�8J��d�X>eZh���}n����aIW��zel�P����O��Ȏ0������P�ϥl���o��6�C���^9"�.v�s�.�j`+��^�d�	����N��{>��,��&M%�e���Jd%|����mD�+��!*�ۉb�� �j�+R�\v��C�2�^�U��Ϻ6�o ��_~�*�=������@�OK�s|{M쳬{^x#��4뼅e6�f��1���J�f2Mͱ4��y����{R��ŋu�U��0�џr�I�m]t_�'�Zݏ*���1j�ԋļP�h��]�Gϫ�J�@qŲf�F��c��鋲�!�kq�o<��!g�����GJ{�-Fh��T�ˀ�!�o7nc��@�3�v�k������x�7��U�iB��\8��>Ǣ� �K@�i=\�	a�w���X<��U��`��z[�Ю֎���j,�+�X�Ek�Xn�X��v�q�q��]���E���Yŋ�ni@.�ƣ��y���Q^/L��]>d��LeAsmi�p�������7���J���<��E��@7��fz�e_��>�F�h�Z����0/Bg���� ��,OF�?R��7�*�������ԗS�B4d�I�dZ4O��>����j��32��u����v��9�<E��o����m�W8�Z~v���<�Λ�p���� ��B�� �R Q;����m
j6]U	l�u��V`Z�+�gp+	�I����%�����*Ah��\���[������M6h�q��������T"���WHƄ]Hl!y�{�x�އ¡񒚑��=�T��d�=G�l3}\C�D�[���jm���Z� �6�Ա�5cwږeM����)Xi��U���%�$o;7�pJs7�V���5U���J�[�ӶmGw<�pm�2����ށ���ŧ����P�,��B0�P�d�H� %�e�o��6�<)m�@ǆ^�}9:yV��1>����k���#�D����.bX�<K ՘�_������߳�����CH> Di���eV�4�k�j��� 9�-����6�$I�Ú�&�!P�	x7�+uq����1l�o���ϟ���y�����tP������`_��TsP�_�a�ੂ{ �*�(o�P�5V���F��sL�^Ӵ�{�[��F#���Q`�R��(�Q`���(y�ǖ����s5}��1;������e���e�������dXl�J��f'�`"(F�q�$�Db,�;�oi�P�&"���H	֥ �3���yt��n �	�1�ĉ�Mc�=76����z3��$�	m0x���[X�F��"��$��rS��m��n`/ns��~��N,L��G	�D��C��	,?pR�ȷS��m���3p�؉��I��̂H�L .Y�'�G�����>��_��Q�D�b����wA'��La8!��>������v����$�:�ڀY��*��Su�R���M�l-�5^�	&�'�V��uy�Ы?�b;�>�a����<#�A���k��}D�_D��N �A�@|��e���`���g�\�w@`� ��W�aj4���X�c�����#�E��z��0�����ַ���a0��]Uf���Ƿ���)�~�BݼĘ��!�ק�WHȬ�ݧ٨ʣ�;X��cK5�����*XxA��n�
�1������ �Bְ��^���G�(Z������Pb��:c����O>D��$^���E�����[��+�۞iXW�k�h��2ÐF����^��0���@���W ���{�a�~'��8�%���p=���E�0<��Ad:�p����X��1���9h�}/��@��7{
�LC;<�~��w��f7�� "ؾ���E�;�����޾4x���� ����S4��p���=o�'�r�M c��&I��Q�}��'ߖꤠ��$]�m`�2ruH�uABrv6�ȚtO�)ִ���~?$�:�^;����!:Z���t�L!l�8N!@@xĭ�޷��i�!�����$���h�t2(�tr�>@�6P��>��m�� 
��_�,����4$���Y���6�.MQ�S30��֚��T����MwYg�kHJ��Ha<���Z�"�y~�$	R����x�"��7�`S�>[�g�0���S��^����&<�/�.������^H�����}`�9����]�����ˌ�_�z��хi����lⴷ���P�6F!�l�NT��6MeN��	����k��Ln@מ�_Ӊ��k�����|��5�,wa�A�����h.�Z����r`"�ȼ���e)���N?i~�f�Y�͛���F��Ob��TՄnS�m Y�u�E����rr�tЖtB��t��'6PQmԀk��~^�W.�y{˺a�x�q�iI��tG����e�l��ZV�ju��@��rt�����������gR�ȷx`���X�"�Z]��'�`#�m�s����9��(�*
�*��]�����Rݭ����`x���JMt|K�-�Z��y�=,`�!t�f��������gԱ��;��:���İ���f[�Hõ�y�͸�[	6��PLٻl8tC��XxaE��?�?���<�C�4�0\���0�;	�_���ܕRg��o�%��t�ь�S�<hU�k	��Uҩ+e�tK,�7c$��X�R����T=�HVJ��ծSdU°PL�#��Uc��r�-A���ͤ�C���jj�c��y�x��
���9�d���@C��BX�[k��(P��p�p_UR�Nz���#��.�׉���J��P����50���2>B�a��d���<"A�(��*T �ը ��ܖ�%m�(��<RWb�����hKI3�x���<�{i�f��F���F,�RkS3{m}��u/P��%l�mR�*0�!��s������RGP���� 7 �}M�]τ��4%���/ʚ�'Ɠ�������G��`���0&�HV�;���4ݣ�K������γ�f�ƾ�Z6+t^/�ȖX1B�0�Uy���7
���C�!L\��9��TE�
(��+Dϳ���~-�̰ 
��p��tS���9:�ؿ��?P�r����x�xF���iů�t2X�~2�`6]29�]�7���7@��iZ�G@��t��p�4{%��'���B ���d$�/S����k�Gd���v�Ć��ȻK�1���"�~��[�5=?�y�H��7���gb�Wm
�7�f�O Nl޼܈��c�K \U�sNm%O3��	�f%�ѰuW��G.�%eN���;54��cQ	��M�u��ŭ��:O��aX��ԛ<>\��2x	�֢�<+W�0#��!��X�\�E���?0Isc7Bh�` �>�,�\3ݴ52A R`AX�@�>� ��$�{�Ѫ��-d3����3	p��3�KU@���B�ͫ�pֵ :E��+0-4�Y�{鶴O����uA#(�~Р.0SdL[�`��;�_]��,q&\9��T��u�f��A�e����qXW��kA�w��7%Y{H_��L��h�+z  ��S �E��=t��J>�#�<����Ԡ��+ �K?$������p��'龮>���W1��#�u�T�}�2U�W#V�J�]W��f�c5ǥ;��� ���⫯�#LćUe��R5L��]�@,��N���5Z���l ��#��Z��5(�V���Rd��kPdIFK�?��V����] ;  Ug��gh�ޫ�{��l�
LO������$��iR����;��)�%oT�6޲���?*�&t [��v��;�(��l63L�����jN��-�7����\��כ,iV�L� Bw������}���''���%�_��*�0	{�Y�u�rw����*];co��nh��Y��*b�*��,`�i��Y4^c�3����D�Gq�]k)A;�:�b6x31A�l����_�H|�D;
����B�W:�B�z� r�/@�d>E�"����������bZ~Q�㔯�=h���[��)�۶��uL7�[���6]ӵ�yu����u���7�����7o /9Ee6�����Ļ�w�+�>ĵz5UT5��w� �N����G�Rsm<�"tW�����x"�C���e�`�F-��P�!�#Cۤ�e�kLF����+@qx�p��@�Am��$��Z30�z
'�j�ǈ�L<��󐹿o�s lM�����ީ��~t�<}�}���(l �q�_��k��b�w�=q�G�W�����L'`�idG ;0���)���j�k����c��s{�)��d<H}�F�����#�3��1CӴ����y������Y��훿,�'X��2�Rǘ���ox�����uT]�=ݷk"r���ݕ�*@�5�7����'�����q`	P�F
�L�ga����T^��_,;uT�f`�d ��U�P#�Hӈ��M���-����c����#�z�������"0C�x�$��ϏN��\��o���:}�xnz�ǸLn:��&�5OФ�[L�Y�΄�㨆��Æ��`f��{D�P}�锚�����β��	͝�/�1u����-���Q�x�*�[Uߣ�
��@���DB��[�(5�jH4����ꮤ�C<L��}�x̎Y�fG���#�Y�N�#�E���������\o���o<a�/�~��7-���^�<�:&R��"u	^�x�)2��W^eJ��Y�U��Xb����!^�%r���r���OZ��]��a|�Krt���7T����� �-e��#�g5���lJ�2��N�2�����`*�%�`��p�Zծd��!ݷ*}<�pB�������bl���rޛ!".����H:6|�"|f�Zx�m�?6O�^~{�g�y��"x�b�����i�</���%do?�YB*@�K���4^��v�/´��G�Ii ��N*H�c��t�o�l�n�둺H<&_�_��N>��Z�]Q��vE߈��*AТlóJ��ӗ`#r}Y@7�R��Ks�	��t�����<�ǫ����gO�?�<]����(oY@z��A���辳��D�lU��Q
GJ��Y�{��^�����o�?�xa��w��=��s���	���)eS�� ��v�D_�E�k���b&ЮՑ'�n�B��.�{R�y�M����VO)������{M�dz���=]ݷ�?�r��BH��X`~����m3��Goņ�b��F�B	��@2T����LڽW��#��z@��p/�#�n����ZF�._�A����9�����a�ݻw����2      m     x�U��N�0�ϓ����N��8q���Jȉ�f��v[��� $��vG�;�����Nn�d��(s���p2�F�T��8�S(a�^��q�jfˬ:���5J��-��Q*8'-�G`X��P�u����lZ0Q}� q�>��mT�g���Ǳ��E]���F��}=c��5����kq
��\3&*{Qˣ)VX�Kׁ1��1Q+����m��U����3H���o�gL:�� ��񚨬����+�����#���[�x�OM�|�hm�     