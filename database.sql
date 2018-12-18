
-- 1. Get all customers and their addresses.
SELECT * FROM "customers"
JOIN "addresses" ON "customers"."id"="addresses"."customer_id"
-- 2. Get all orders and their line items (orders, quantity and product).
SELECT * FROM "orders"
JOIN "line_items" ON "orders"."id"="line_items"."order_id"
-- 3. Which warehouses have cheetos?
SELECT "warehouse"."warehouse", "warehouse_product"."product_id"
from "warehouse" JOIN "warehouse_product"
ON  "warehouse"."id" = "warehouse_product"."warehouse_id"
WHERE "warehouse_product"."product_id" = 5;

-- 4. Which warehouses have diet pepsi?
SELECT "warehouse"."warehouse", "warehouse_product"."product_id"
from "warehouse" JOIN "warehouse_product"
ON  "warehouse"."id" = "warehouse_product"."warehouse_id"
WHERE "warehouse_product"."product_id" = 6;

-- 5. Get the number of orders for each customer. NOTE: It is OK if those without orders are not included in results.
SELECT count("orders"."address_id"), "customers"."first_name" FROM "orders"
JOIN "addresses" on "addresses"."id" = "orders"."address_id"
JOIN "customers" on "customers"."id" = "addresses"."customer_id"
GROUP BY "customers"."first_name";
-- 6. How many customers do we have?

-- 7. How many products do we carry?

-- 8. What is the total available on-hand quantity of diet pepsi?

