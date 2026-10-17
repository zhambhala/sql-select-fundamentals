-- ==========================================
-- TechStore — Consultas Básicas SELECT
-- Autor: Bruno Angel Tomas Zabala
-- Fecha: [fecha de entrega]
-- ==========================================

-- Consulta 1: Exploración general de la tabla sales
-- SELECT * sirve para explorar una tabla que no conocés.
-- No conviene usarlo en producción o cuando ya sabés qué columnas necesitás.
SELECT * FROM sales;

-- Consulta 2: Selección de columnas específicas para finanzas
SELECT customer_id, product_id, total_amount
FROM sales;

-- Consulta 3: Selección con alias en español para stakeholders
SELECT order_date AS fecha_pedido,
       product_name AS nombre_producto,
       quantity AS cantidad_unidades
FROM sales;
