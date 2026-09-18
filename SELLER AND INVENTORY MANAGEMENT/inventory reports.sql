SQL> SELECT
  2      S.Seller_ID,
  3      S.Seller_Name,
  4      P.Product_ID,
  5      P.Product_Name,
  6      I.Stock_Quantity,
  7      I.Product_Status
  8  FROM Seller S
  9  JOIN Inventory I
 10  ON S.Seller_ID = I.Seller_ID
 11  JOIN PurplleProduct P
 12  ON I.Product_ID = P.Product_ID
 13  ORDER BY S.Seller_ID;

 SELLER_ID
----------
SELLER_NAME
--------------------------------------------------------------------------------
PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
STOCK_QUANTITY PRODUCT_STATUS
-------------- --------------------
       301
Lakme Seller
       101

 SELLER_ID
----------
SELLER_NAME
--------------------------------------------------------------------------------
PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
STOCK_QUANTITY PRODUCT_STATUS
-------------- --------------------
Lakme Foundation
            25 Available


 SELLER_ID
----------
SELLER_NAME
--------------------------------------------------------------------------------
PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
STOCK_QUANTITY PRODUCT_STATUS
-------------- --------------------
       302
Maybelline Seller
       102

 SELLER_ID
----------
SELLER_NAME
--------------------------------------------------------------------------------
PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
STOCK_QUANTITY PRODUCT_STATUS
-------------- --------------------
Maybelline Lipstick
            75 Available


 SELLER_ID
----------
SELLER_NAME
--------------------------------------------------------------------------------
PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
STOCK_QUANTITY PRODUCT_STATUS
-------------- --------------------
       303
Mamaearth Seller
       103

 SELLER_ID
----------
SELLER_NAME
--------------------------------------------------------------------------------
PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
STOCK_QUANTITY PRODUCT_STATUS
-------------- --------------------
Mamaearth Face Wash
            80 Available


 SELLER_ID
----------
SELLER_NAME
--------------------------------------------------------------------------------
PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
STOCK_QUANTITY PRODUCT_STATUS
-------------- --------------------
       304
Minimalist Seller
       104

 SELLER_ID
----------
SELLER_NAME
--------------------------------------------------------------------------------
PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
STOCK_QUANTITY PRODUCT_STATUS
-------------- --------------------
Minimalist Serum
            40 Available


 SELLER_ID
----------
SELLER_NAME
--------------------------------------------------------------------------------
PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
STOCK_QUANTITY PRODUCT_STATUS
-------------- --------------------
       305
Loreal Seller
       105

 SELLER_ID
----------
SELLER_NAME
--------------------------------------------------------------------------------
PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
STOCK_QUANTITY PRODUCT_STATUS
-------------- --------------------
Loreal Shampoo
            80 Available


 SELLER_ID
----------
SELLER_NAME
--------------------------------------------------------------------------------
PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
STOCK_QUANTITY PRODUCT_STATUS
-------------- --------------------
       306
Tresemme Seller
       106

 SELLER_ID
----------
SELLER_NAME
--------------------------------------------------------------------------------
PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
STOCK_QUANTITY PRODUCT_STATUS
-------------- --------------------
Tresemme Conditioner
            55 Available


 SELLER_ID
----------
SELLER_NAME
--------------------------------------------------------------------------------
PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
STOCK_QUANTITY PRODUCT_STATUS
-------------- --------------------
       307
Fogg Seller
       107

 SELLER_ID
----------
SELLER_NAME
--------------------------------------------------------------------------------
PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
STOCK_QUANTITY PRODUCT_STATUS
-------------- --------------------
Fogg Perfume
            35 Available


 SELLER_ID
----------
SELLER_NAME
--------------------------------------------------------------------------------
PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
STOCK_QUANTITY PRODUCT_STATUS
-------------- --------------------
       308
Bella Vita Seller
       108

 SELLER_ID
----------
SELLER_NAME
--------------------------------------------------------------------------------
PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
STOCK_QUANTITY PRODUCT_STATUS
-------------- --------------------
Nivea Body Lotion
            30 Available


 SELLER_ID
----------
SELLER_NAME
--------------------------------------------------------------------------------
PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
STOCK_QUANTITY PRODUCT_STATUS
-------------- --------------------
       309
Dove Seller
       109

 SELLER_ID
----------
SELLER_NAME
--------------------------------------------------------------------------------
PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
STOCK_QUANTITY PRODUCT_STATUS
-------------- --------------------
Dove Body Wash
            90 Available


 SELLER_ID
----------
SELLER_NAME
--------------------------------------------------------------------------------
PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
STOCK_QUANTITY PRODUCT_STATUS
-------------- --------------------
       310
Nivea Seller
       110

 SELLER_ID
----------
SELLER_NAME
--------------------------------------------------------------------------------
PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
STOCK_QUANTITY PRODUCT_STATUS
-------------- --------------------
Lakme Kajal
            65 Available


10 rows selected.

SQL> SELECT
  2      P.Product_ID,
  3      P.Product_Name,
  4      S.Seller_Name,
  5      I.Stock_Quantity
  6  FROM Inventory I
  7  JOIN PurplleProduct P
  8  ON I.Product_ID = P.Product_ID
  9  JOIN Seller S
 10  ON I.Seller_ID = S.Seller_ID
 11  WHERE I.Product_Status = 'Available';

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
SELLER_NAME
--------------------------------------------------------------------------------
STOCK_QUANTITY
--------------
       101
Lakme Foundation
Lakme Seller
            25


PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
SELLER_NAME
--------------------------------------------------------------------------------
STOCK_QUANTITY
--------------
       102
Maybelline Lipstick
Maybelline Seller
            75


PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
SELLER_NAME
--------------------------------------------------------------------------------
STOCK_QUANTITY
--------------
       103
Mamaearth Face Wash
Mamaearth Seller
            80


PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
SELLER_NAME
--------------------------------------------------------------------------------
STOCK_QUANTITY
--------------
       104
Minimalist Serum
Minimalist Seller
            40


PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
SELLER_NAME
--------------------------------------------------------------------------------
STOCK_QUANTITY
--------------
       105
Loreal Shampoo
Loreal Seller
            80


PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
SELLER_NAME
--------------------------------------------------------------------------------
STOCK_QUANTITY
--------------
       106
Tresemme Conditioner
Tresemme Seller
            55


PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
SELLER_NAME
--------------------------------------------------------------------------------
STOCK_QUANTITY
--------------
       107
Fogg Perfume
Fogg Seller
            35


PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
SELLER_NAME
--------------------------------------------------------------------------------
STOCK_QUANTITY
--------------
       108
Nivea Body Lotion
Bella Vita Seller
            30


PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
SELLER_NAME
--------------------------------------------------------------------------------
STOCK_QUANTITY
--------------
       109
Dove Body Wash
Dove Seller
            90


PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
SELLER_NAME
--------------------------------------------------------------------------------
STOCK_QUANTITY
--------------
       110
Lakme Kajal
Nivea Seller
            65


10 rows selected.


SQL> SELECT
  2      P.Product_ID,
  3      P.Product_Name,
  4      S.Seller_Name,
  5      I.Stock_Quantity
  6  FROM Inventory I
  7  JOIN PurplleProduct P
  8  ON I.Product_ID = P.Product_ID
  9  JOIN Seller S
 10  ON I.Seller_ID = S.Seller_ID
 11  WHERE I.Product_Status = 'Unavailable';

no rows selected

SQL> SELECT
  2      I.Inventory_ID,
  3      S.Seller_Name,
  4      P.Product_Name,
  5      I.Stock_Quantity,
  6      I.Product_Status,
  7      I.Last_Updated
  8  FROM Inventory I
  9  JOIN Seller S
 10  ON I.Seller_ID = S.Seller_ID
 11  JOIN PurplleProduct P
 12  ON I.Product_ID = P.Product_ID
 13  ORDER BY I.Inventory_ID;

INVENTORY_ID
------------
SELLER_NAME
--------------------------------------------------------------------------------
PRODUCT_NAME
--------------------------------------------------------------------------------
STOCK_QUANTITY PRODUCT_STATUS       LAST_UPDA
-------------- -------------------- ---------
           1
Lakme Seller
Lakme Foundation
            25 Available            17-SEP-26


INVENTORY_ID
------------
SELLER_NAME
--------------------------------------------------------------------------------
PRODUCT_NAME
--------------------------------------------------------------------------------
STOCK_QUANTITY PRODUCT_STATUS       LAST_UPDA
-------------- -------------------- ---------
           2
Maybelline Seller
Maybelline Lipstick
            75 Available            17-SEP-26


INVENTORY_ID
------------
SELLER_NAME
--------------------------------------------------------------------------------
PRODUCT_NAME
--------------------------------------------------------------------------------
STOCK_QUANTITY PRODUCT_STATUS       LAST_UPDA
-------------- -------------------- ---------
           3
Mamaearth Seller
Mamaearth Face Wash
            80 Available            17-SEP-26


INVENTORY_ID
------------
SELLER_NAME
--------------------------------------------------------------------------------
PRODUCT_NAME
--------------------------------------------------------------------------------
STOCK_QUANTITY PRODUCT_STATUS       LAST_UPDA
-------------- -------------------- ---------
           4
Minimalist Seller
Minimalist Serum
            40 Available            17-SEP-26


INVENTORY_ID
------------
SELLER_NAME
--------------------------------------------------------------------------------
PRODUCT_NAME
--------------------------------------------------------------------------------
STOCK_QUANTITY PRODUCT_STATUS       LAST_UPDA
-------------- -------------------- ---------
           5
Loreal Seller
Loreal Shampoo
            80 Available            17-SEP-26


INVENTORY_ID
------------
SELLER_NAME
--------------------------------------------------------------------------------
PRODUCT_NAME
--------------------------------------------------------------------------------
STOCK_QUANTITY PRODUCT_STATUS       LAST_UPDA
-------------- -------------------- ---------
           6
Tresemme Seller
Tresemme Conditioner
            55 Available            17-SEP-26


INVENTORY_ID
------------
SELLER_NAME
--------------------------------------------------------------------------------
PRODUCT_NAME
--------------------------------------------------------------------------------
STOCK_QUANTITY PRODUCT_STATUS       LAST_UPDA
-------------- -------------------- ---------
           7
Fogg Seller
Fogg Perfume
            35 Available            17-SEP-26


INVENTORY_ID
------------
SELLER_NAME
--------------------------------------------------------------------------------
PRODUCT_NAME
--------------------------------------------------------------------------------
STOCK_QUANTITY PRODUCT_STATUS       LAST_UPDA
-------------- -------------------- ---------
           8
Bella Vita Seller
Nivea Body Lotion
            30 Available            17-SEP-26


INVENTORY_ID
------------
SELLER_NAME
--------------------------------------------------------------------------------
PRODUCT_NAME
--------------------------------------------------------------------------------
STOCK_QUANTITY PRODUCT_STATUS       LAST_UPDA
-------------- -------------------- ---------
           9
Dove Seller
Dove Body Wash
            90 Available            17-SEP-26


INVENTORY_ID
------------
SELLER_NAME
--------------------------------------------------------------------------------
PRODUCT_NAME
--------------------------------------------------------------------------------
STOCK_QUANTITY PRODUCT_STATUS       LAST_UPDA
-------------- -------------------- ---------
          10
Nivea Seller
Lakme Kajal
            65 Available            17-SEP-26


10 rows selected.


SQL> SELECT
  2      I.Inventory_ID,
  3      S.Seller_Name,
  4      P.Product_Name,
  5      I.Stock_Quantity,
  6      I.Product_Status,
  7      I.Last_Updated
  8  FROM Inventory I
  9  JOIN Seller S
 10  ON I.Seller_ID = S.Seller_ID
 11  JOIN PurplleProduct P
 12  ON I.Product_ID = P.Product_ID
 13  ORDER BY I.Inventory_ID;

INVENTORY_ID
------------
SELLER_NAME
--------------------------------------------------------------------------------
PRODUCT_NAME
--------------------------------------------------------------------------------
STOCK_QUANTITY PRODUCT_STATUS       LAST_UPDA
-------------- -------------------- ---------
           1
Lakme Seller
Lakme Foundation
            25 Available            17-SEP-26


INVENTORY_ID
------------
SELLER_NAME
--------------------------------------------------------------------------------
PRODUCT_NAME
--------------------------------------------------------------------------------
STOCK_QUANTITY PRODUCT_STATUS       LAST_UPDA
-------------- -------------------- ---------
           2
Maybelline Seller
Maybelline Lipstick
            75 Available            17-SEP-26


INVENTORY_ID
------------
SELLER_NAME
--------------------------------------------------------------------------------
PRODUCT_NAME
--------------------------------------------------------------------------------
STOCK_QUANTITY PRODUCT_STATUS       LAST_UPDA
-------------- -------------------- ---------
           3
Mamaearth Seller
Mamaearth Face Wash
            80 Available            17-SEP-26


INVENTORY_ID
------------
SELLER_NAME
--------------------------------------------------------------------------------
PRODUCT_NAME
--------------------------------------------------------------------------------
STOCK_QUANTITY PRODUCT_STATUS       LAST_UPDA
-------------- -------------------- ---------
           4
Minimalist Seller
Minimalist Serum
            40 Available            17-SEP-26


INVENTORY_ID
------------
SELLER_NAME
--------------------------------------------------------------------------------
PRODUCT_NAME
--------------------------------------------------------------------------------
STOCK_QUANTITY PRODUCT_STATUS       LAST_UPDA
-------------- -------------------- ---------
           5
Loreal Seller
Loreal Shampoo
            80 Available            17-SEP-26


INVENTORY_ID
------------
SELLER_NAME
--------------------------------------------------------------------------------
PRODUCT_NAME
--------------------------------------------------------------------------------
STOCK_QUANTITY PRODUCT_STATUS       LAST_UPDA
-------------- -------------------- ---------
           6
Tresemme Seller
Tresemme Conditioner
            55 Available            17-SEP-26


INVENTORY_ID
------------
SELLER_NAME
--------------------------------------------------------------------------------
PRODUCT_NAME
--------------------------------------------------------------------------------
STOCK_QUANTITY PRODUCT_STATUS       LAST_UPDA
-------------- -------------------- ---------
           7
Fogg Seller
Fogg Perfume
            35 Available            17-SEP-26


INVENTORY_ID
------------
SELLER_NAME
--------------------------------------------------------------------------------
PRODUCT_NAME
--------------------------------------------------------------------------------
STOCK_QUANTITY PRODUCT_STATUS       LAST_UPDA
-------------- -------------------- ---------
           8
Bella Vita Seller
Nivea Body Lotion
            30 Available            17-SEP-26


INVENTORY_ID
------------
SELLER_NAME
--------------------------------------------------------------------------------
PRODUCT_NAME
--------------------------------------------------------------------------------
STOCK_QUANTITY PRODUCT_STATUS       LAST_UPDA
-------------- -------------------- ---------
           9
Dove Seller
Dove Body Wash
            90 Available            17-SEP-26


INVENTORY_ID
------------
SELLER_NAME
--------------------------------------------------------------------------------
PRODUCT_NAME
--------------------------------------------------------------------------------
STOCK_QUANTITY PRODUCT_STATUS       LAST_UPDA
-------------- -------------------- ---------
          10
Nivea Seller
Lakme Kajal
            65 Available            17-SEP-26


10 rows selected.

SQL> SELECT
  2      Product_Status,
  3      COUNT(*) AS Product_Count
  4  FROM Inventory
  5  GROUP BY Product_Status;

PRODUCT_STATUS       PRODUCT_COUNT
-------------------- -------------
Available                       10

SQL> SELECT
  2      S.Seller_ID,
  3      S.Seller_Name,
  4      SUM(I.Stock_Quantity) AS Total_Stock
  5  FROM Seller S
  6  JOIN Inventory I
  7  ON S.Seller_ID = I.Seller_ID
  8  GROUP BY S.Seller_ID, S.Seller_Name
  9  ORDER BY S.Seller_ID;

 SELLER_ID
----------
SELLER_NAME
--------------------------------------------------------------------------------
TOTAL_STOCK
-----------
       301
Lakme Seller
         25

       302
Maybelline Seller
         75

 SELLER_ID
----------
SELLER_NAME
--------------------------------------------------------------------------------
TOTAL_STOCK
-----------

       303
Mamaearth Seller
         80

       304
Minimalist Seller

 SELLER_ID
----------
SELLER_NAME
--------------------------------------------------------------------------------
TOTAL_STOCK
-----------
         40

       305
Loreal Seller
         80

       306

 SELLER_ID
----------
SELLER_NAME
--------------------------------------------------------------------------------
TOTAL_STOCK
-----------
Tresemme Seller
         55

       307
Fogg Seller
         35


 SELLER_ID
----------
SELLER_NAME
--------------------------------------------------------------------------------
TOTAL_STOCK
-----------
       308
Bella Vita Seller
         30

       309
Dove Seller
         90

 SELLER_ID
----------
SELLER_NAME
--------------------------------------------------------------------------------
TOTAL_STOCK
-----------

       310
Nivea Seller
         65


10 rows selected.

SQL> SELECT
  2      P.Product_ID,
  3      P.Product_Name,
  4      S.Seller_Name,
  5      I.Stock_Quantity,
  6      I.Product_Status
  7  FROM Inventory I
  8  JOIN PurplleProduct P
  9  ON I.Product_ID = P.Product_ID
 10  JOIN Seller S
 11  ON I.Seller_ID = S.Seller_ID
 12  WHERE I.Stock_Quantity = 0;

no rows selected
