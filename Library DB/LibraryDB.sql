CREATE DATABASE library;

USE library;

-- Таблица "Авторы":
CREATE TABLE Authors
(
	code_author INT AUTO_INCREMENT PRIMARY KEY,
    name_author NVARCHAR(40) NOT NULL,
    birthday DATE
);

-- Таблица "Издательство':
CREATE TABLE Publishing_house
(
	code_publish INT AUTO_INCREMENT PRIMARY KEY,
    publish NVARCHAR(100) NOT NULL,
    city NVARCHAR(40)
);

-- Таблица "Книги":
CREATE TABLE Books
(
	code_book INT AUTO_INCREMENT PRIMARY KEY,
    book_title NVARCHAR(40) NOT NULL,
    code_author INT NOT NULL,
    pages INT NOT NULL,
    code_publish INT NOT NULL,
    
    FOREIGN KEY (code_author) REFERENCES Authors(code_author),
    FOREIGN KEY (code_publish) REFERENCES Publishing_house(code_publish)
);

-- Таблица "Доставки":
CREATE TABLE Deliveries
(
	code_delivery INT AUTO_INCREMENT PRIMARY KEY,
    name_delivery NVARCHAR(40),
    name_company NVARCHAR(80) NOT NULL,
    address NVARCHAR(80) NOT NULL,
    phone NVARCHAR(40),
    inn NVARCHAR(40) NOT NULL
);

-- Таблица "Заказы":
CREATE TABLE Purchases
(
    code_purchase INT AUTO_INCREMENT PRIMARY KEY,
	code_book INT NOT NULL,
    date_order DATE NOT NULL,
    code_delivery INT NOT NULL,
    type_purchase NVARCHAR(40),
    cost INT NOT NULL,
    amount INT NOT NULL,
    
    FOREIGN KEY (code_book) REFERENCES Books(code_book),
    FOREIGN KEY (code_delivery) REFERENCES Deliveries(code_delivery)
);
