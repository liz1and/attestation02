-- Таблица "Товар"
CREATE TABLE IF NOT EXISTS product (
    id SERIAL PRIMARY KEY,
    description TEXT NOT NULL,
    price NUMERIC(10,2) NOT NULL,
    quantity INTEGER NOT NULL
    );
COMMENT ON TABLE product IS 'Таблица, содержащая информацию о товарах';

-- Таблица "Покупатель"
CREATE TABLE IF NOT EXISTS customer (
    id SERIAL PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    surname VARCHAR(50) NOT NULL
    );
COMMENT ON TABLE customer IS 'Таблица, содержащая информацию о покупателях';

-- Таблица "Заказ"
CREATE TABLE IF NOT EXISTS orders (
    id SERIAL PRIMARY KEY,
    product_id INTEGER NOT NULL,
    customer_id INTEGER NOT NULL,
    order_date DATE NOT NULL,
    quantity INTEGER NOT NULL,
    FOREIGN KEY (product_id) REFERENCES product(id),
    FOREIGN KEY (customer_id) REFERENCES customer(id)
    );
COMMENT ON TABLE orders IS 'Таблица, содержащая информацию о заказах';

-- Заполнение таблицы "Товар"
INSERT INTO product (description, price, quantity)
VALUES
    ('Наушники', 1099.99, 50),
    ('Клавиатура', 2559.99, 25),
    ('Мышь компьютерная', 1119.99, 100),
    ('Блокнот', 254.99, 75),
    ('Ручка', 100.59, 200),
    ('Карандаш', 52.99, 80),
    ('Степлер', 219.99, 30),
    ('Стикеры', 89.99, 40),
    ('Монитор 32"', 15599.99, 15),
    ('Флэш-накопитель 32 ГБ', 1499.99, 60);

-- Заполнение таблицы "Покупатель"
INSERT INTO customer (name, surname)
VALUES
    ('Иван', 'Иванов'),
    ('Петр', 'Петров'),
    ('Анна', 'Сидорова'),
    ('Сергей', 'Кузнецов'),
    ('Елена', 'Смирнова'),
    ('Алексей', 'Новиков'),
    ('Мария', 'Васильева'),
    ('Дмитрий', 'Михайлов'),
    ('Ольга', 'Заплатина'),
    ('Андрей', 'Орлов');

-- Заполнение таблицы "Заказ"
INSERT INTO orders (product_id, customer_id, order_date, quantity)
VALUES
    (1, 1, '2023-04-01', 2),
    (2, 2, '2023-04-02', 1),
    (3, 3, '2023-04-03', 3),
    (4, 4, '2023-04-04', 1),
    (5, 5, '2023-04-05', 5),
    (6, 6, '2023-04-06', 2),
    (7, 7, '2023-04-07', 1),
    (8, 8, '2023-04-08', 1),
    (9, 9, '2023-04-09', 1),
    (10, 10, '2023-04-10', 4);