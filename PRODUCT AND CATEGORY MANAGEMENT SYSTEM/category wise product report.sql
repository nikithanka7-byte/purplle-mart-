
SQL> SELECT
  2      C.Category_Name,
  3      P.Product_ID,
  4      P.Product_Name,
  5      P.Price,
  6      P.Stock
  7  FROM Category C
  8  JOIN PurplleProduct P
  9  ON C.Category_ID = P.Category_ID
 10  ORDER BY C.Category_Name;

CATEGORY_NAME                                      PRODUCT_ID
-------------------------------------------------- ----------
PRODUCT_NAME
--------------------------------------------------------------------------------
     PRICE      STOCK
---------- ----------
Bath and Body                                             109
Dove Body Wash
       349         40

Haircare                                                  106
Tresemme Conditioner
       449         30

CATEGORY_NAME                                      PRODUCT_ID
-------------------------------------------------- ----------
PRODUCT_NAME
--------------------------------------------------------------------------------
     PRICE      STOCK
---------- ----------

Haircare                                                  105
Loreal Shampoo
       399         45

Makeup                                                    102
Maybelline Lipstick

CATEGORY_NAME                                      PRODUCT_ID
-------------------------------------------------- ----------
PRODUCT_NAME
--------------------------------------------------------------------------------
     PRICE      STOCK
---------- ----------
       749         60

Makeup                                                    101
Lakme Foundation
       699         50

Skincare                                                  103

CATEGORY_NAME                                      PRODUCT_ID
-------------------------------------------------- ----------
PRODUCT_NAME
--------------------------------------------------------------------------------
     PRICE      STOCK
---------- ----------
Mamaearth Face Wash
       349         60

Skincare                                                  104
Minimalist Serum
       699         35


7 rows selected.

SQL> SELECT
  2      C.Category_Name,
  3      SUM(P.Stock) AS Total_Stock
  4  FROM Category C
  5  JOIN PurplleProduct P
  6  ON C.Category_ID = P.Category_ID
  7  GROUP BY C.Category_Name
  8  ORDER BY C.Category_Name;

CATEGORY_NAME                                      TOTAL_STOCK
-------------------------------------------------- -----------
Bath and Body                                               40
Haircare                                                    75
Makeup                                                     110
Skincare                                                    95

SQL> SELECT
  2      C.Category_Name,
  3      AVG(P.Price) AS Average_Price
  4  FROM Category C
  5  JOIN PurplleProduct P
  6  ON C.Category_ID = P.Category_ID
  7  GROUP BY C.Category_Name
  8  ORDER BY C.Category_Name;

CATEGORY_NAME                                      AVERAGE_PRICE
-------------------------------------------------- -------------
Bath and Body                                                349
Haircare                                                     424
Makeup                                                       724
Skincare                                                     524

SQL> SELECT
  2      C.Category_Name,
  3      COUNT(P.Product_ID) AS Total_Products
  4  FROM Category C
  5  JOIN PurplleProduct P
  6  ON C.Category_ID = P.Category_ID
  7  GROUP BY C.Category_Name
  8  ORDER BY C.Category_Name;

CATEGORY_NAME                                      TOTAL_PRODUCTS
-------------------------------------------------- --------------
Bath and Body                                                   1
Haircare                                                        2
Makeup                                                          2
Skincare                                                        2

SQL> SELECT
  2      P.Product_ID,
  3      P.Product_Name,
  4      P.Price,
  5      P.Stock
  6  FROM PurplleProduct P
  7  JOIN Category C
  8  ON P.Category_ID = C.Category_ID
  9  WHERE C.Category_Name = 'Makeup products';

no rows selected

SQL> SELECT
  2      P.Product_ID,
  3      P.Product_Name,
  4      P.Price,
  5      P.Stock
  6  FROM PurplleProduct P
  7  JOIN Category C
  8  ON P.Category_ID = C.Category_ID
  9  WHERE C.Category_Name = 'Skincare';

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
     PRICE      STOCK
---------- ----------
       103
Mamaearth Face Wash
       349         60

       104
Minimalist Serum
       699         35

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
     PRICE      STOCK
---------- ----------


SQL> SELECT
  2      P.Product_ID,
  3      P.Product_Name,
  4      P.Price,
  5      P.Stock
  6  FROM PurplleProduct P
  7  JOIN Category C
  8  ON P.Category_ID = C.Category_ID
  9  WHERE C.Category_Name = 'Haircare';

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
     PRICE      STOCK
---------- ----------
       105
Loreal Shampoo
       399         45

       106
Tresemme Conditioner
       449         30

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
     PRICE      STOCK
---------- ----------


SQL> SELECT
  2      C.Category_Name,
  3      COUNT(P.Product_ID) AS Product_Count
  4  FROM Category C
  5  LEFT JOIN PurplleProduct P
  6  ON C.Category_ID = P.Category_ID
  7  GROUP BY C.Category_Name
  8  ORDER BY C.Category_Name;

CATEGORY_NAME                                      PRODUCT_COUNT
-------------------------------------------------- -------------
Bath and Body                                                  1
Fragrance                                                      0
Haircare                                                       2
Makeup                                                         2
Skincare                                                       2
