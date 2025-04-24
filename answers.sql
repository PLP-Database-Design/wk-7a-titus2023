-- Question 1
-- Step 1: Create Customers table
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY AUTO_INCREMENT,
    CustomerName VARCHAR(100)
);

-- Step 2: Create Orders table
CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);

-- Step 3: Create Products table
CREATE TABLE Products (
    ProductID INT PRIMARY KEY AUTO_INCREMENT,
    ProductName VARCHAR(100) UNIQUE
);

-- Step 4: Create OrderProducts junction table
CREATE TABLE OrderProducts (
    OrderID INT,
    ProductID INT,
    PRIMARY KEY (OrderID, ProductID),
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID),
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
);

-- Step 5: Insert customers
INSERT INTO Customers (CustomerName) 
VALUES 
('John Doe'), 
('Jane Smith'), 
('Emily Clark');

-- Step 6: Insert orders (Zinamatch hapa)
INSERT INTO Orders (OrderID, CustomerID)
VALUES 
(101, 1), 
(102, 2), 
(103, 3);

-- Step 7: Insert products
INSERT INTO Products (ProductName) 
VALUES 
('Laptop'), 
('Mouse'), 
('Tablet'), 
('Keyboard'), 
('Phone');

-- Step 8: Insert order-product mappings
INSERT INTO OrderProducts (OrderID, ProductID)
VALUES 
(101, 1),  -- Laptop
(101, 2),  -- Mouse
(102, 3),  -- Tablet
(102, 4),  -- Keyboard
(102, 2),  -- Mouse
(103, 5);  -- Phone


-- Question 2
-- Step 1: Create the Orders table
CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerName VARCHAR(100)
);

-- Step 2: Create the OrderItems table
CREATE TABLE OrderItems (
    OrderID INT,
    Product VARCHAR(100),
    Quantity INT,
    PRIMARY KEY (OrderID, Product),
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID)
);

-- Step 3: Insert data into Orders table
INSERT INTO Orders (OrderID, CustomerName) VALUES
(101, 'John Doe'),
(102, 'Jane Smith'),
(103, 'Emily Clark');

-- Step 4: Insert data into OrderItems table
INSERT INTO OrderItems (OrderID, Product, Quantity) VALUES
(101, 'Laptop', 2),
(101, 'Mouse', 1),
(102, 'Tablet', 3),
(102, 'Keyboard', 1),
(102, 'Mouse', 2),
(103, 'Phone', 1);
