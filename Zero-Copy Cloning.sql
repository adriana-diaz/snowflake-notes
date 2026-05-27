
-- ============================================
-- CLONING DE UNA TABLA
-- ============================================
-- CREATE TABLE ... CLONE crea una copia independiente de una tabla
-- sin copiar físicamente los datos (usa metadata/micropartitions compartidas).
-- Los cambios en la tabla clonada NO afectan la tabla original y viceversa.
-- El cloning es instantáneo y no consume almacenamiento adicional
-- hasta que se modifiquen datos en alguna de las dos tablas.
-- ============================================

CREATE OR REPLACE DATABASE test_cloning;
Use database test_cloning;

CREATE TABLE test_cloning.public.CUSTOMER
AS SELECT * FROM SNOWFLAKE_SAMPLE_DATA.TPCH_SF1000.CUSTOMER

SELECT * FROM CUSTOMER;

CREATE TABLE CUSTOMER_COPY CLONE CUSTOMER;

SELECT COUNT(*) FROM CUSTOMER_COPY;
UPDATE CUSTOMER_COPY SET C_MKTSEGMENT = 'Auto' WHERE C_MKTSEGMENT = 'AUTOMOBILE';
