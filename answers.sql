--question 1
CREATE TABLE ProductDetail_1NF (
  OrderID INT,
  CustomerName VARCHAR(100),
  Product VARCHAR(100)
);

-- Insert rows with one product per row:
INSERT INTO ProductDetail_1NF (OrderID, CustomerName, Product) VALUES
(101, 'John Doe', 'Laptop'),
(101, 'John Doe', 'Mouse'),
(102, 'Jane Smith', 'Tablet'),
(102, 'Jane Smith', 'Keyboard'),
(102, 'Jane Smith', 'Mouse'),
(103, 'Emily Clark', 'Phone');





--question 2
-- Create Orders table
CREATE TABLE Orders (
  OrderID INT PRIMARY KEY,
  CustomerName VARCHAR(100)
);

-- Insert distinct orders
INSERT INTO Orders (OrderID, CustomerName) VALUES
(101, 'John Doe'),
(102, 'Jane Smith'),
(103, 'Emily Clark');

-- Create OrderDetails table without CustomerName
CREATE TABLE OrderDetails_2NF (
  OrderID INT,
  Product VARCHAR(100),
  Quantity INT,
  PRIMARY KEY (OrderID, Product),
  FOREIGN KEY (OrderID) REFERENCES Orders(OrderID)
);

-- Insert order details
INSERT INTO OrderDetails_2NF (OrderID, Product, Quantity) VALUES
(101, 'Laptop', 2),
(101, 'Mouse', 1),
(102, 'Tablet', 3),
(102, 'Keyboard', 1),
(102, 'Mouse', 2),
(103, 'Phone', 1);