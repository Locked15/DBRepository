CREATE DATABASE restaurant;

USE restaurant;

-- 1. Продукты:
CREATE TABLE product
(
	productId INT PRIMARY KEY AUTO_INCREMENT,
    productName NVARCHAR(40) NOT NULL,
    productCalories INT NOT NULL
);

-- 2. Блюда:
CREATE TABLE cookedMeal
(
	cookedMealId INT PRIMARY KEY AUTO_INCREMENT,
    cookedMealName NVARCHAR(40) NOT NULL
);

-- 3. Связь (Продукты-Блюда):
CREATE TABLE product_cookedMeal
(
	product_cookedMealId INT PRIMARY KEY AUTO_INCREMENT,
    productId INT NOT NULL,
    cookedMealId INT NOT NULL,
    
    FOREIGN KEY (productId) REFERENCES product(productid),
    FOREIGN KEY (cookedMealId) REFERENCES cookedMeal(cookedMealId)
);

-- 4. Категории:
CREATE TABLE category
(
	categoryId INT PRIMARY KEY AUTO_INCREMENT,
    categoryName NVARCHAR(40) NOT NULL
);

-- 5. Связь (Блюда-Категории):
CREATE TABLE cookedMeal_category
(
	cookedMeal_categoryId INT PRIMARY KEY AUTO_INCREMENT,
    cookedMealId INT NOT NULL,
    categoryId INT NOT NULL,
    
    FOREIGN KEY (cookedMealId) REFERENCES cookedMeal(cookedMealId),
    FOREIGN KEY (categoryId) REFERENCES category(categoryId)
);

-- 6. Ресторан:
CREATE TABLE restaurant
(
	restaurantId INT PRIMARY KEY AUTO_INCREMENT,
    restaurantName NVARCHAR(40) NOT NULL,
    restaurantAddPrice INT NOT NULL
);

-- 7. Связь (Ресторан-Блюда):
CREATE TABLE restaurant_cookedMeal
(
	restaurant_cookedMealId INT PRIMARY KEY AUTO_INCREMENT,
    restaurantId INT NOT NULL,
    cookedMealId INT NOT NULL,
    
    FOREIGN KEY (restaurantId) REFERENCES restaurant(restaurantId),
    FOREIGN KEY (cookedMealId) REFERENCES cookedMeal(cookedMealId)
);

-- 8. Тип аккаунта:
CREATE TABLE accountType
(
	accountTypeId INT PRIMARY KEY AUTO_INCREMENT,
    accountTypeName NVARCHAR(40) NOT NULL
);

-- 9. Данные аккаунта:
CREATE TABLE accountData
(
	accountId INT PRIMARY KEY AUTO_INCREMENT,
    accountLogin NVARCHAR(40) NOT NULL,
    accountPassword NVARCHAR(40) NOT NULL,
    accountEmail NVARCHAR(40) NOT NULL,
    accountPhoneNumber NVARCHAR(40) NOT NULL,
    accountTypeId INT NOT NULL,
    
    FOREIGN KEY (accountTypeId) REFERENCES accountType(accountTypeId)
);

-- 10. Аккаунт ресторана:
CREATE TABLE restaurantAccount
(
	accountId INT PRIMARY KEY,
    restaurantId INT NOT NULL,
    
    FOREIGN KEY (accountId) REFERENCES accountData(accountId),
    FOREIGN KEY (restaurantId) REFERENCES restaurant(restaurantId)
);

-- 11. Аккаунт пользователя:
CREATE TABLE userAccount
(
	accountId INT PRIMARY KEY,
    accountDiscount DOUBLE,
    accountAddress NVARCHAR(60),
    
    FOREIGN KEY (accountId) REFERENCES accountData(accountId)
);

-- 12. Состояние заказа:
CREATE TABLE orderState
(
	orderStateId INT PRIMARY KEY AUTO_INCREMENT,
    stateName NVARCHAR(40) NOT NULL
);

-- 13. Заказ:
CREATE TABLE foodOrder
(
	foodOrderId INT PRIMARY KEY AUTO_INCREMENT,
    accountID INT,
    orderStateId INT NOT NULL,
    fullPrice INT NOT NULL,
    
    FOREIGN KEY (accountId) REFERENCES userAccount(accountId),
    FOREIGN KEY (orderStateId) REFERENCES orderState(orderStateId)
);

-- 14. Связь (Заказ-Блюда):
CREATE TABLE foodOrder_cookedMeal
(
	foodOrder_cookedMealId INT PRIMARY KEY AUTO_INCREMENT,
    foodOrderId INT NOT NULL,
    cookedMealId INT NOT NULL,
    
    FOREIGN KEY (foodOrderId) REFERENCES foodOrder(foodOrderId),
    FOREIGN KEY (cookedMealId) REFERENCES cookedMeal(cookedMealId)
);

-- 15. Аккаунт курьера:
CREATE TABLE courierAccount
(
	accountId INT PRIMARY KEY,
    foodOrderId INT NOT NULL,
    courierVehicle NVARCHAR(40),
    
    FOREIGN KEY (accountId) REFERENCES accountData(accountId),
    FOREIGN KEY (foodOrderId) REFERENCES foodOrder(foodOrderId)
);
