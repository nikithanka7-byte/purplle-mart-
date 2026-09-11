SQL> CREATE TABLE PurplleProduct (
  2  Product_ID INT PRIMARY KEY,
  3  Product_Name VARCHAR2(100) NOT NULL,
  4  Category_ID INT NOT NULL,
  5  Brand_ID INT,
  6  Seller_ID INT,
  7  Admin_ID INT,
  8  Description VARCHAR2(255),
  9  Expiry_Date DATE,
 10  Price NUMBER(10,2) NOT NULL CHECK (Price > 0),
 11  Stock INT NOT NULL CHECK (Stock >= 0),
 12  CONSTRAINT FK_Product_Category
 13  FOREIGN KEY (Category_ID)
 14  REFERENCES Category(Category_ID)
 15  );

Table created.

SQL> INSERT INTO PurplleProduct VALUES (101, 'Lakme Foundation', 1, 201, 301, 401, 'Liquid foundation', DATE '2027-05-10', 599, 50);

1 row created.

SQL> INSERT INTO PurplleProduct VALUES (102, 'Maybelline Lipstick', 1, 202, 302, 401, 'Matte lipstick', DATE '2027-06-15', 499, 40);

1 row created.

SQL> INSERT INTO PurplleProduct VALUES (103, 'Mamaearth Face Wash', 2, 203, 303, 402, 'Face cleansing product', DATE '2027-08-20', 349, 60);

1 row created.

SQL> INSERT INTO PurplleProduct VALUES (104, 'Minimalist Serum', 2, 204, 304, 402, 'Skin care serum', DATE '2027-09-10', 699, 35);

1 row created.

SQL> INSERT INTO PurplleProduct VALUES (105, 'Loreal Shampoo', 3, 205, 305, 403, 'Hair care shampoo', DATE '2028-01-15', 399, 45);

1 row created.

SQL> INSERT INTO PurplleProduct VALUES (106, 'Tresemme Conditioner', 3, 206, 306, 403, 'Hair conditioner', DATE '2028-02-20', 449, 30);

1 row created.

SQL> INSERT INTO PurplleProduct VALUES (107, 'Fogg Perfume', 4, 207, 307, 404, 'Fragrance perfume', DATE '2029-03-10', 599, 25);

1 row created.

SQL> INSERT INTO PurplleProduct VALUES (108, 'Nivea Body Lotion', 5, 208, 308, 405, 'Moisturizing body lotion', DATE '2028-04-15', 299, 55);

1 row created.

SQL> INSERT INTO PurplleProduct VALUES (109, 'Dove Body Wash', 5, 209, 309, 405, 'Refreshing body wash', DATE '2028-05-20', 349, 40);

1 row created.

SQL> INSERT INTO PurplleProduct VALUES (110, 'Lakme Kajal', 1, 201, 301, 401, 'Eye makeup kajal', DATE '2027-07-10', 299, 70);

1 row created.

SQL> SELECT * FROM PurplleProduct;

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
CATEGORY_ID   BRAND_ID  SELLER_ID   ADMIN_ID
----------- ---------- ---------- ----------
DESCRIPTION
--------------------------------------------------------------------------------
EXPIRY_DA      PRICE      STOCK
--------- ---------- ----------
       101
Lakme Foundation
          1        201        301        401

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
CATEGORY_ID   BRAND_ID  SELLER_ID   ADMIN_ID
----------- ---------- ---------- ----------
DESCRIPTION
--------------------------------------------------------------------------------
EXPIRY_DA      PRICE      STOCK
--------- ---------- ----------
Liquid foundation
10-MAY-27        599         50


PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
CATEGORY_ID   BRAND_ID  SELLER_ID   ADMIN_ID
----------- ---------- ---------- ----------
DESCRIPTION
--------------------------------------------------------------------------------
EXPIRY_DA      PRICE      STOCK
--------- ---------- ----------
       102
Maybelline Lipstick
          1        202        302        401

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
CATEGORY_ID   BRAND_ID  SELLER_ID   ADMIN_ID
----------- ---------- ---------- ----------
DESCRIPTION
--------------------------------------------------------------------------------
EXPIRY_DA      PRICE      STOCK
--------- ---------- ----------
Matte lipstick
15-JUN-27        499         40


PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
CATEGORY_ID   BRAND_ID  SELLER_ID   ADMIN_ID
----------- ---------- ---------- ----------
DESCRIPTION
--------------------------------------------------------------------------------
EXPIRY_DA      PRICE      STOCK
--------- ---------- ----------
       103
Mamaearth Face Wash
          2        203        303        402

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
CATEGORY_ID   BRAND_ID  SELLER_ID   ADMIN_ID
----------- ---------- ---------- ----------
DESCRIPTION
--------------------------------------------------------------------------------
EXPIRY_DA      PRICE      STOCK
--------- ---------- ----------
Face cleansing product
20-AUG-27        349         60


PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
CATEGORY_ID   BRAND_ID  SELLER_ID   ADMIN_ID
----------- ---------- ---------- ----------
DESCRIPTION
--------------------------------------------------------------------------------
EXPIRY_DA      PRICE      STOCK
--------- ---------- ----------
       104
Minimalist Serum
          2        204        304        402

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
CATEGORY_ID   BRAND_ID  SELLER_ID   ADMIN_ID
----------- ---------- ---------- ----------
DESCRIPTION
--------------------------------------------------------------------------------
EXPIRY_DA      PRICE      STOCK
--------- ---------- ----------
Skin care serum
10-SEP-27        699         35


PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
CATEGORY_ID   BRAND_ID  SELLER_ID   ADMIN_ID
----------- ---------- ---------- ----------
DESCRIPTION
--------------------------------------------------------------------------------
EXPIRY_DA      PRICE      STOCK
--------- ---------- ----------
       105
Loreal Shampoo
          3        205        305        403

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
CATEGORY_ID   BRAND_ID  SELLER_ID   ADMIN_ID
----------- ---------- ---------- ----------
DESCRIPTION
--------------------------------------------------------------------------------
EXPIRY_DA      PRICE      STOCK
--------- ---------- ----------
Hair care shampoo
15-JAN-28        399         45


PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
CATEGORY_ID   BRAND_ID  SELLER_ID   ADMIN_ID
----------- ---------- ---------- ----------
DESCRIPTION
--------------------------------------------------------------------------------
EXPIRY_DA      PRICE      STOCK
--------- ---------- ----------
       106
Tresemme Conditioner
          3        206        306        403

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
CATEGORY_ID   BRAND_ID  SELLER_ID   ADMIN_ID
----------- ---------- ---------- ----------
DESCRIPTION
--------------------------------------------------------------------------------
EXPIRY_DA      PRICE      STOCK
--------- ---------- ----------
Hair conditioner
20-FEB-28        449         30


PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
CATEGORY_ID   BRAND_ID  SELLER_ID   ADMIN_ID
----------- ---------- ---------- ----------
DESCRIPTION
--------------------------------------------------------------------------------
EXPIRY_DA      PRICE      STOCK
--------- ---------- ----------
       107
Fogg Perfume
          4        207        307        404

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
CATEGORY_ID   BRAND_ID  SELLER_ID   ADMIN_ID
----------- ---------- ---------- ----------
DESCRIPTION
--------------------------------------------------------------------------------
EXPIRY_DA      PRICE      STOCK
--------- ---------- ----------
Fragrance perfume
10-MAR-29        599         25


PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
CATEGORY_ID   BRAND_ID  SELLER_ID   ADMIN_ID
----------- ---------- ---------- ----------
DESCRIPTION
--------------------------------------------------------------------------------
EXPIRY_DA      PRICE      STOCK
--------- ---------- ----------
       108
Nivea Body Lotion
          5        208        308        405

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
CATEGORY_ID   BRAND_ID  SELLER_ID   ADMIN_ID
----------- ---------- ---------- ----------
DESCRIPTION
--------------------------------------------------------------------------------
EXPIRY_DA      PRICE      STOCK
--------- ---------- ----------
Moisturizing body lotion
15-APR-28        299         55


PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
CATEGORY_ID   BRAND_ID  SELLER_ID   ADMIN_ID
----------- ---------- ---------- ----------
DESCRIPTION
--------------------------------------------------------------------------------
EXPIRY_DA      PRICE      STOCK
--------- ---------- ----------
       109
Dove Body Wash
          5        209        309        405

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
CATEGORY_ID   BRAND_ID  SELLER_ID   ADMIN_ID
----------- ---------- ---------- ----------
DESCRIPTION
--------------------------------------------------------------------------------
EXPIRY_DA      PRICE      STOCK
--------- ---------- ----------
Refreshing body wash
20-MAY-28        349         40


PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
CATEGORY_ID   BRAND_ID  SELLER_ID   ADMIN_ID
----------- ---------- ---------- ----------
DESCRIPTION
--------------------------------------------------------------------------------
EXPIRY_DA      PRICE      STOCK
--------- ---------- ----------
       110
Lakme Kajal
          1        201        301        401

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
CATEGORY_ID   BRAND_ID  SELLER_ID   ADMIN_ID
----------- ---------- ---------- ----------
DESCRIPTION
--------------------------------------------------------------------------------
EXPIRY_DA      PRICE      STOCK
--------- ---------- ----------
Eye makeup kajal
10-JUL-27        299         70


10 rows selected.

SQL> UPDATE PurplleProduct SET Price = 649 WHERE Product_ID = 101;

1 row updated.

SQL> UPDATE PurplleProduct SET Price = 699, Stock = 60 WHERE Product_ID = 102;

1 row updated.

SQL> UPDATE PurplleProduct SET Price = Price + 50 WHERE Category_ID = 1;

3 rows updated.

SQL> SELECT * FROM PurplleProduct;

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
CATEGORY_ID   BRAND_ID  SELLER_ID   ADMIN_ID
----------- ---------- ---------- ----------
DESCRIPTION
--------------------------------------------------------------------------------
EXPIRY_DA      PRICE      STOCK
--------- ---------- ----------
       101
Lakme Foundation
          1        201        301        401

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
CATEGORY_ID   BRAND_ID  SELLER_ID   ADMIN_ID
----------- ---------- ---------- ----------
DESCRIPTION
--------------------------------------------------------------------------------
EXPIRY_DA      PRICE      STOCK
--------- ---------- ----------
Liquid foundation
10-MAY-27        699         50


PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
CATEGORY_ID   BRAND_ID  SELLER_ID   ADMIN_ID
----------- ---------- ---------- ----------
DESCRIPTION
--------------------------------------------------------------------------------
EXPIRY_DA      PRICE      STOCK
--------- ---------- ----------
       102
Maybelline Lipstick
          1        202        302        401

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
CATEGORY_ID   BRAND_ID  SELLER_ID   ADMIN_ID
----------- ---------- ---------- ----------
DESCRIPTION
--------------------------------------------------------------------------------
EXPIRY_DA      PRICE      STOCK
--------- ---------- ----------
Matte lipstick
15-JUN-27        749         60


PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
CATEGORY_ID   BRAND_ID  SELLER_ID   ADMIN_ID
----------- ---------- ---------- ----------
DESCRIPTION
--------------------------------------------------------------------------------
EXPIRY_DA      PRICE      STOCK
--------- ---------- ----------
       103
Mamaearth Face Wash
          2        203        303        402

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
CATEGORY_ID   BRAND_ID  SELLER_ID   ADMIN_ID
----------- ---------- ---------- ----------
DESCRIPTION
--------------------------------------------------------------------------------
EXPIRY_DA      PRICE      STOCK
--------- ---------- ----------
Face cleansing product
20-AUG-27        349         60


PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
CATEGORY_ID   BRAND_ID  SELLER_ID   ADMIN_ID
----------- ---------- ---------- ----------
DESCRIPTION
--------------------------------------------------------------------------------
EXPIRY_DA      PRICE      STOCK
--------- ---------- ----------
       104
Minimalist Serum
          2        204        304        402

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
CATEGORY_ID   BRAND_ID  SELLER_ID   ADMIN_ID
----------- ---------- ---------- ----------
DESCRIPTION
--------------------------------------------------------------------------------
EXPIRY_DA      PRICE      STOCK
--------- ---------- ----------
Skin care serum
10-SEP-27        699         35


PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
CATEGORY_ID   BRAND_ID  SELLER_ID   ADMIN_ID
----------- ---------- ---------- ----------
DESCRIPTION
--------------------------------------------------------------------------------
EXPIRY_DA      PRICE      STOCK
--------- ---------- ----------
       105
Loreal Shampoo
          3        205        305        403

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
CATEGORY_ID   BRAND_ID  SELLER_ID   ADMIN_ID
----------- ---------- ---------- ----------
DESCRIPTION
--------------------------------------------------------------------------------
EXPIRY_DA      PRICE      STOCK
--------- ---------- ----------
Hair care shampoo
15-JAN-28        399         45


PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
CATEGORY_ID   BRAND_ID  SELLER_ID   ADMIN_ID
----------- ---------- ---------- ----------
DESCRIPTION
--------------------------------------------------------------------------------
EXPIRY_DA      PRICE      STOCK
--------- ---------- ----------
       106
Tresemme Conditioner
          3        206        306        403

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
CATEGORY_ID   BRAND_ID  SELLER_ID   ADMIN_ID
----------- ---------- ---------- ----------
DESCRIPTION
--------------------------------------------------------------------------------
EXPIRY_DA      PRICE      STOCK
--------- ---------- ----------
Hair conditioner
20-FEB-28        449         30


PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
CATEGORY_ID   BRAND_ID  SELLER_ID   ADMIN_ID
----------- ---------- ---------- ----------
DESCRIPTION
--------------------------------------------------------------------------------
EXPIRY_DA      PRICE      STOCK
--------- ---------- ----------
       107
Fogg Perfume
          4        207        307        404

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
CATEGORY_ID   BRAND_ID  SELLER_ID   ADMIN_ID
----------- ---------- ---------- ----------
DESCRIPTION
--------------------------------------------------------------------------------
EXPIRY_DA      PRICE      STOCK
--------- ---------- ----------
Fragrance perfume
10-MAR-29        599         25


PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
CATEGORY_ID   BRAND_ID  SELLER_ID   ADMIN_ID
----------- ---------- ---------- ----------
DESCRIPTION
--------------------------------------------------------------------------------
EXPIRY_DA      PRICE      STOCK
--------- ---------- ----------
       108
Nivea Body Lotion
          5        208        308        405

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
CATEGORY_ID   BRAND_ID  SELLER_ID   ADMIN_ID
----------- ---------- ---------- ----------
DESCRIPTION
--------------------------------------------------------------------------------
EXPIRY_DA      PRICE      STOCK
--------- ---------- ----------
Moisturizing body lotion
15-APR-28        299         55


PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
CATEGORY_ID   BRAND_ID  SELLER_ID   ADMIN_ID
----------- ---------- ---------- ----------
DESCRIPTION
--------------------------------------------------------------------------------
EXPIRY_DA      PRICE      STOCK
--------- ---------- ----------
       109
Dove Body Wash
          5        209        309        405

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
CATEGORY_ID   BRAND_ID  SELLER_ID   ADMIN_ID
----------- ---------- ---------- ----------
DESCRIPTION
--------------------------------------------------------------------------------
EXPIRY_DA      PRICE      STOCK
--------- ---------- ----------
Refreshing body wash
20-MAY-28        349         40


PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
CATEGORY_ID   BRAND_ID  SELLER_ID   ADMIN_ID
----------- ---------- ---------- ----------
DESCRIPTION
--------------------------------------------------------------------------------
EXPIRY_DA      PRICE      STOCK
--------- ---------- ----------
       110
Lakme Kajal
          1        201        301        401

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
CATEGORY_ID   BRAND_ID  SELLER_ID   ADMIN_ID
----------- ---------- ---------- ----------
DESCRIPTION
--------------------------------------------------------------------------------
EXPIRY_DA      PRICE      STOCK
--------- ---------- ----------
Eye makeup kajal
10-JUL-27        349         70


10 rows selected.

SQL> DELETE FROM PurplleProduct WHERE Product_ID = 110;

1 row deleted.

SQL> DELETE FROM PurplleProduct WHERE Product_Name = 'Fogg Perfume';

1 row deleted.

SQL> DELETE FROM PurplleProduct WHERE Stock = 0;

0 rows deleted.

SQL> DELETE FROM PurplleProduct WHERE Price < 300;

1 row deleted.

SQL> SELECT * FROM PurplleProduct;

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
CATEGORY_ID   BRAND_ID  SELLER_ID   ADMIN_ID
----------- ---------- ---------- ----------
DESCRIPTION
--------------------------------------------------------------------------------
EXPIRY_DA      PRICE      STOCK
--------- ---------- ----------
       101
Lakme Foundation
          1        201        301        401

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
CATEGORY_ID   BRAND_ID  SELLER_ID   ADMIN_ID
----------- ---------- ---------- ----------
DESCRIPTION
--------------------------------------------------------------------------------
EXPIRY_DA      PRICE      STOCK
--------- ---------- ----------
Liquid foundation
10-MAY-27        699         50


PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
CATEGORY_ID   BRAND_ID  SELLER_ID   ADMIN_ID
----------- ---------- ---------- ----------
DESCRIPTION
--------------------------------------------------------------------------------
EXPIRY_DA      PRICE      STOCK
--------- ---------- ----------
       102
Maybelline Lipstick
          1        202        302        401

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
CATEGORY_ID   BRAND_ID  SELLER_ID   ADMIN_ID
----------- ---------- ---------- ----------
DESCRIPTION
--------------------------------------------------------------------------------
EXPIRY_DA      PRICE      STOCK
--------- ---------- ----------
Matte lipstick
15-JUN-27        749         60


PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
CATEGORY_ID   BRAND_ID  SELLER_ID   ADMIN_ID
----------- ---------- ---------- ----------
DESCRIPTION
--------------------------------------------------------------------------------
EXPIRY_DA      PRICE      STOCK
--------- ---------- ----------
       103
Mamaearth Face Wash
          2        203        303        402

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
CATEGORY_ID   BRAND_ID  SELLER_ID   ADMIN_ID
----------- ---------- ---------- ----------
DESCRIPTION
--------------------------------------------------------------------------------
EXPIRY_DA      PRICE      STOCK
--------- ---------- ----------
Face cleansing product
20-AUG-27        349         60


PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
CATEGORY_ID   BRAND_ID  SELLER_ID   ADMIN_ID
----------- ---------- ---------- ----------
DESCRIPTION
--------------------------------------------------------------------------------
EXPIRY_DA      PRICE      STOCK
--------- ---------- ----------
       104
Minimalist Serum
          2        204        304        402

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
CATEGORY_ID   BRAND_ID  SELLER_ID   ADMIN_ID
----------- ---------- ---------- ----------
DESCRIPTION
--------------------------------------------------------------------------------
EXPIRY_DA      PRICE      STOCK
--------- ---------- ----------
Skin care serum
10-SEP-27        699         35


PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
CATEGORY_ID   BRAND_ID  SELLER_ID   ADMIN_ID
----------- ---------- ---------- ----------
DESCRIPTION
--------------------------------------------------------------------------------
EXPIRY_DA      PRICE      STOCK
--------- ---------- ----------
       105
Loreal Shampoo
          3        205        305        403

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
CATEGORY_ID   BRAND_ID  SELLER_ID   ADMIN_ID
----------- ---------- ---------- ----------
DESCRIPTION
--------------------------------------------------------------------------------
EXPIRY_DA      PRICE      STOCK
--------- ---------- ----------
Hair care shampoo
15-JAN-28        399         45


PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
CATEGORY_ID   BRAND_ID  SELLER_ID   ADMIN_ID
----------- ---------- ---------- ----------
DESCRIPTION
--------------------------------------------------------------------------------
EXPIRY_DA      PRICE      STOCK
--------- ---------- ----------
       106
Tresemme Conditioner
          3        206        306        403

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
CATEGORY_ID   BRAND_ID  SELLER_ID   ADMIN_ID
----------- ---------- ---------- ----------
DESCRIPTION
--------------------------------------------------------------------------------
EXPIRY_DA      PRICE      STOCK
--------- ---------- ----------
Hair conditioner
20-FEB-28        449         30


PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
CATEGORY_ID   BRAND_ID  SELLER_ID   ADMIN_ID
----------- ---------- ---------- ----------
DESCRIPTION
--------------------------------------------------------------------------------
EXPIRY_DA      PRICE      STOCK
--------- ---------- ----------
       109
Dove Body Wash
          5        209        309        405

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
CATEGORY_ID   BRAND_ID  SELLER_ID   ADMIN_ID
----------- ---------- ---------- ----------
DESCRIPTION
--------------------------------------------------------------------------------
EXPIRY_DA      PRICE      STOCK
--------- ---------- ----------
Refreshing body wash
20-MAY-28        349         40


7 rows selected.

SQL> COMMIT;

Commit complete.