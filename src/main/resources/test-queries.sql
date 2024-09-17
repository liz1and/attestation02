--Получить список всех товаров:
SELECT * FROM product;

--Получить список всех покупателей:
SELECT * FROM customer;

--Получить список всех заказов:
SELECT * FROM orders;

--Получить список товаров, отсортированных по цене по убыванию:
SELECT * FROM product ORDER BY price DESC;

--Получить список заказов за определенный период:
SELECT * FROM orders
WHERE order_date BETWEEN '2023-04-01' AND '2023-04-30';


--Обновить цену товара с id = 1:
UPDATE product
SET price = 34.99
WHERE id = 1;

--Изменить фамилию покупателя с id = 3:
UPDATE customer
SET surname = 'Иванова'
WHERE id = 3;

--Увеличить количество товара с id = 5 на 10 шт.:
UPDATE product
SET quantity = quantity + 10
WHERE id = 5;


Удалить товар с id = 7:
DELETE FROM product
WHERE id = 7;

--Удалить всех покупателей с фамилией 'Иванов':
DELETE FROM customer
WHERE surname = 'Иванов';

--Удалить заказ с id = 3:
DELETE FROM orders
WHERE id = 3;