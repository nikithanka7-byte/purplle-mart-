SQL> CREATE TABLE Category (
  2      Category_ID INT PRIMARY KEY,
  3      Category_Name VARCHAR2(50) NOT NULL UNIQUE,
  4      Description VARCHAR2(255)
  5  );

Table created.

SQL> INSERT INTO Category VALUES (1, 'Makeup', 'Makeup products');

1 row created.

SQL> INSERT INTO Category VALUES (2, 'Skincare', 'Skin care products');

1 row created.

SQL> INSERT INTO Category VALUES (3, 'Haircare', 'Hair care products');

1 row created.

SQL> INSERT INTO Category VALUES (4, 'Fragrance', 'Perfume and fragrance products');

1 row created.

SQL> INSERT INTO Category VALUES (5, 'Bath and Body', 'Bath and body products');

1 row created.

SQL> SELECT * FROM Category;

CATEGORY_ID CATEGORY_NAME
----------- --------------------------------------------------
DESCRIPTION
--------------------------------------------------------------------------------
          1 Makeup
Makeup products

          2 Skincare
Skin care products

          3 Haircare
Hair care products


CATEGORY_ID CATEGORY_NAME
----------- --------------------------------------------------
DESCRIPTION
--------------------------------------------------------------------------------
          4 Fragrance
Perfume and fragrance products

          5 Bath and Body
Bath and body products


SQL> COMMIT;

Commit complete.
