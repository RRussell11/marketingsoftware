CREATE TABLE product (
    product_id INT IDENTITY(1,1) PRIMARY KEY,
    product_name VARCHAR(255) NOT NULL,
    brand_id INT,
    category_id INT,
    model_year INT,
    list_price DECIMAL(10, 2),
    FOREIGN KEY (brand_id) REFERENCES brand(brand_id),
    FOREIGN KEY (category_id) REFERENCES category(category_id)
);
INSERT INTO software_product (product_name, version, developer, release_date, price)
VALUES
('Visual Studio Code', '1.60', 'Microsoft', '2021-09-01', 0.00),
('IntelliJ IDEA', '2021.2', 'JetBrains', '2021-07-27', 499.00),
('Eclipse IDE', '2021-06', 'Eclipse Foundation', '2021-06-16', 0.00),
('PyCharm', '2021.2', 'JetBrains', '2021-07-27', 199.00);
