
CREATE TABLE IF NOT EXISTS public.product_category
(
    "category_ID" integer NOT NULL,
    category_name character varying(50) COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT "category_ID_PK" PRIMARY KEY ("category_ID")
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.product_category
    OWNER to postgres;