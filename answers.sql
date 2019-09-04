--Table - person
--1.
CREATE TABLE person (
id SERIAL PRIMARY KEY,
name VARCHAR(255) NOT NULL,
age INT NOT NULL,
height INT NOT NULL,
city VARCHAR(100) NOT NULL,
favorite_color VARCHAR(255)
)

--2.
INSERT INTO person
(name, age, height, city, favorite_color)
VALUES
('Harry Potter', 38, 70, 'Godrics_Hollow', 'orange'),
('Ron Weasley',37, 75, 'Ottery_St_Catchpole', 'red'),
('Hermione Granger', 36, 67, 'England', 'yellow'),
('Albus Dumbledore', 115, 78, 'Mould_on_the_Wold', 'silver'),
('Rubeus Hagrid', 91, 85, 'Forest_of_Dean', 'brown')

--3.
SELECT * FROM person
ORDER BY height DESC;

--4.
SELECT * FROM person
ORDER BY height ASC;

--5.
SELECT * FROM person
ORDER BY age DESC;

--6.
SELECT * FROM person
WHERE age > 20;

--7.
SELECT * FROM person
WHERE age = 18;

--8.
SELECT * FROM person
WHERE age < 20 
OR age > 30;

--9.
SELECT * FROM person
WHERE age != 27;

--10.
SELECT * FROM person
WHERE favorite_color != 'red';

--11.
SELECT * FROM person
WHERE favorite_color != 'red'
AND favorite_color != 'blue';

--12.
SELECT * FROM person
WHERE favorite_color = 'orange'
OR favorite_color = 'green';

--13.
SELECT * FROM person
WHERE favorite_color IN ('orange', 'green','blue')

--14.
SELECT * FROM person
WHERE favorite_color IN ('yellow', 'purple')


--Table - orders
--1.
CREATE TABLE orders (
order_id SERIAL PRIMARY KEY NOT NULL,
person_id INT NOT NULL,
product_name VARCHAR(255) NOT NULL,
product_price NUMERIC NOT NULL,
quantity INT NOT NULL
)

--2.
INSERT INTO orders
(person_id, product_name, product_price, quantity)
VALUES
(1, 'shirt', 12.99, 20),
(1, 'pants', 21.99, 7),
(2, 'dress', 14.99, 3),
(3, 'hat', 23.99, 30),
(4, 'shoes', 49.00, 15)

--3.
SELECT * FROM orders;

--4.
SELECT sum(quantity) FROM orders;

--5.
SELECT sum(product_price * quantity) FROM orders;

--6.
SELECT sum(quantity * product_price) FROM orders
WHERE person_id = 1;


--Table - artist
--1.
INSERT INTO artist
(name)
VALUES
('John Mayer'),
('Switchfoot'),
('Ben Rector')

--2.
SELECT * FROM artist
ORDER BY name DESC LIMIT 10;

--3.
SELECT * FROM artist
ORDER BY name ASC LIMIT 5;

--4.
SELECT * FROM artist
WHERE name LIKE 'Black%'

--5.
SELECT * FROM artist
WHERE name LIKE '%Black%'


--Table - employee
--1.
SELECT first_name, last_name FROM employee
WHERE city = 'Calgary'

--2.
SELECT max(birth_date) FROM employee;

--3.
SELECT min(birth_date) FROM employee;

--4.
SELECT * FROM employee
WHERE reports_to = 2;

--5.
SELECT count(*) FROM employee
WHERE city = 'Lethbridge';


--Table - invoice
--1.
SELECT count(*) FROM invoice
WHERE billing_country = 'USA';

--2.
SELECT max(total) FROM invoice;

--3.
SELECT min(total) FROM invoice;

--4.
SELECT * FROM invoice
WHERE total > 5;

--5.
SELECT count(*) FROM invoice
WHERE total < 5;

--6.
SELECT count(*) FROM invoice
WHERE billing_state IN ('CA', 'TX', 'AZ');

--7.
SELECT avg(total) FROM invoice;

--8.
SELECT sum(total) FROM invoice;