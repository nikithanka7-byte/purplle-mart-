SQL> SELECT COUNT(Order_ID) AS Total_Orders
  2  FROM Orders;

TOTAL_ORDERS
------------
           5

SQL> SELECT SUM(Total_Amount) AS Total_Sales
  2  FROM Orders;

TOTAL_SALES
-----------
       6145


SQL> SELECT AVG(Total_Amount) AS Average_Order_Amount
  2  FROM Orders;

AVERAGE_ORDER_AMOUNT
--------------------
                1229
SQL> SELECT MIN(Total_Amount) AS Minimum_Order
  2  FROM Orders;

MINIMUM_ORDER
-------------
          749

SQL> SELECT MAX(Total_Amount) AS Maximum_Order
  2  FROM Orders;

MAXIMUM_ORDER
-------------
         1699

SQL> SELECT
  2      COUNT(Order_ID) AS Total_Orders,
  3      SUM(Total_Amount) AS Total_Sales,
  4      AVG(Total_Amount) AS Average_Order_Value,
  5      MIN(Total_Amount) AS Minimum_Order,
  6      MAX(Total_Amount) AS Maximum_Order
  7  FROM Orders;

TOTAL_ORDERS TOTAL_SALES AVERAGE_ORDER_VALUE MINIMUM_ORDER MAXIMUM_ORDER
------------ ----------- ------------------- ------------- -------------
           5        6145                1229           749          1699


SQL> SELECT
  2      C.Customer_ID,
  3      C.First_Name || ' ' || C.Last_Name AS Customer_Name,
  4      SUM(O.Total_Amount) AS Total_Purchase
  5  FROM Customer5 C
  6  JOIN Orders O
  7      ON C.Customer_ID = O.Customer_ID
  8  GROUP BY
  9      C.Customer_ID,
 10      C.First_Name,
 11      C.Last_Name
 12  ORDER BY Total_Purchase DESC;

CUSTOMER_ID
-----------
CUSTOMER_NAME
--------------------------------------------------------------------------------
TOTAL_PURCHASE
--------------
        101
Nikitha R
          1699

        105
Sneha Patel
          1599

CUSTOMER_ID
-----------
CUSTOMER_NAME
--------------------------------------------------------------------------------
TOTAL_PURCHASE
--------------

        103
Arun Kumar
          1299

        104
Rahul Verma

CUSTOMER_ID
-----------
CUSTOMER_NAME
--------------------------------------------------------------------------------
TOTAL_PURCHASE
--------------
           799

        102
Priya Sharma
           749


SQL> SELECT
  2      C.Customer_ID,
  3      C.First_Name || ' ' || C.Last_Name AS Customer_Name,
  4      SUM(O.Total_Amount) AS Total_Purchase
  5  FROM Customer5 C
  6  JOIN Orders O
  7      ON C.Customer_ID = O.Customer_ID
  8  GROUP BY
  9      C.Customer_ID,
 10      C.First_Name,
 11      C.Last_Name
 12  ORDER BY Total_Purchase DESC;

CUSTOMER_ID
-----------
CUSTOMER_NAME
--------------------------------------------------------------------------------
TOTAL_PURCHASE
--------------
        101
Nikitha R
          1699

        105
Sneha Patel
          1599

CUSTOMER_ID
-----------
CUSTOMER_NAME
--------------------------------------------------------------------------------
TOTAL_PURCHASE
--------------

        103
Arun Kumar
          1299

        104
Rahul Verma

CUSTOMER_ID
-----------
CUSTOMER_NAME
--------------------------------------------------------------------------------
TOTAL_PURCHASE
--------------
           799

        102
Priya Sharma
           749


SQL> SELECT
  2      P.Product_ID,
  3      P.Product_Name,
  4      SUM(OD.Quantity) AS Total_Quantity_Sold
  5  FROM PurplleProduct P
  6  JOIN Order_Details OD
  7      ON P.Product_ID = OD.Product_ID
  8  GROUP BY
  9      P.Product_ID,
 10      P.Product_Name
 11  ORDER BY Total_Quantity_Sold DESC;

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
TOTAL_QUANTITY_SOLD
-------------------
       101
Lakme Foundation
                  3

       103
Mamaearth Face Wash
                  2

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
TOTAL_QUANTITY_SOLD
-------------------

       105
Loreal Shampoo
                  2

       104
Minimalist Serum

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
TOTAL_QUANTITY_SOLD
-------------------
                  1

       102
Maybelline Lipstick
                  1

SQL> SELECT
  2      P.Product_ID,
  3      P.Product_Name,
  4      SUM(OD.Quantity) AS Total_Quantity_Sold,
  5      SUM(OD.Quantity * OD.Unit_Price) AS Total_Sales
  6  FROM PurplleProduct P
  7  JOIN Order_Details OD
  8      ON P.Product_ID = OD.Product_ID
  9  GROUP BY
 10      P.Product_ID,
 11      P.Product_Name
 12  ORDER BY Total_Sales DESC;

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
TOTAL_QUANTITY_SOLD TOTAL_SALES
------------------- -----------
       101
Lakme Foundation
                  3        2397

       105
Loreal Shampoo
                  2        1599

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
TOTAL_QUANTITY_SOLD TOTAL_SALES
------------------- -----------

       103
Mamaearth Face Wash
                  2        1299

       104
Minimalist Serum

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
TOTAL_QUANTITY_SOLD TOTAL_SALES
------------------- -----------
                  1         799

       102
Maybelline Lipstick
                  1         749

SQL> SELECT
  2      C.Category_ID,
  3      C.Category_Name,
  4      SUM(OD.Quantity) AS Total_Quantity_Sold,
  5      SUM(OD.Quantity * OD.Unit_Price) AS Total_Sales
  6  FROM Category C
  7  JOIN PurplleProduct P
  8      ON C.Category_ID = P.Category_ID
  9  JOIN Order_Details OD
 10      ON P.Product_ID = OD.Product_ID
 11  GROUP BY
 12      C.Category_ID,
 13      C.Category_Name
 14  ORDER BY Total_Sales DESC;

CATEGORY_ID
-----------
CATEGORY_NAME
--------------------------------------------------------------------------------
TOTAL_QUANTITY_SOLD TOTAL_SALES
------------------- -----------
          1
Makeup
                  4        3146

          2
Skincare
                  3        2098

CATEGORY_ID
-----------
CATEGORY_NAME
--------------------------------------------------------------------------------
TOTAL_QUANTITY_SOLD TOTAL_SALES
------------------- -----------

          3
Haircare
                  2        1599

SQL> SELECT
  2      C.Customer_ID,
  3      C.First_Name || ' ' || C.Last_Name AS Customer_Name,
  4      O.Order_ID,
  5      P.Product_Name,
  6      CAT.Category_Name,
  7      OD.Quantity,
  8      OD.Unit_Price,
  9      (OD.Quantity * OD.Unit_Price) AS Subtotal
 10  FROM Customer5 C
 11  JOIN Orders O
 12      ON C.Customer_ID = O.Customer_ID
 13  JOIN Order_Details OD
 14      ON O.Order_ID = OD.Order_ID
 15  JOIN PurplleProduct P
 16      ON OD.Product_ID = P.Product_ID
 17  JOIN Category CAT
 18      ON P.Category_ID = CAT.Category_ID
 19  ORDER BY O.Order_ID;

CUSTOMER_ID
-----------
CUSTOMER_NAME
--------------------------------------------------------------------------------
  ORDER_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
CATEGORY_NAME
--------------------------------------------------------------------------------
  QUANTITY UNIT_PRICE   SUBTOTAL
---------- ---------- ----------
        101

CUSTOMER_ID
-----------
CUSTOMER_NAME
--------------------------------------------------------------------------------
  ORDER_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
CATEGORY_NAME
--------------------------------------------------------------------------------
  QUANTITY UNIT_PRICE   SUBTOTAL
---------- ---------- ----------
Nikitha R

CUSTOMER_ID
-----------
CUSTOMER_NAME
--------------------------------------------------------------------------------
  ORDER_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
CATEGORY_NAME
--------------------------------------------------------------------------------
  QUANTITY UNIT_PRICE   SUBTOTAL
---------- ---------- ----------
       501

CUSTOMER_ID
-----------
CUSTOMER_NAME
--------------------------------------------------------------------------------
  ORDER_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
CATEGORY_NAME
--------------------------------------------------------------------------------
  QUANTITY UNIT_PRICE   SUBTOTAL
---------- ---------- ----------
Lakme Foundation

CUSTOMER_ID
-----------
CUSTOMER_NAME
--------------------------------------------------------------------------------
  ORDER_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
CATEGORY_NAME
--------------------------------------------------------------------------------
  QUANTITY UNIT_PRICE   SUBTOTAL
---------- ---------- ----------
Makeup

CUSTOMER_ID
-----------
CUSTOMER_NAME
--------------------------------------------------------------------------------
  ORDER_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
CATEGORY_NAME
--------------------------------------------------------------------------------
  QUANTITY UNIT_PRICE   SUBTOTAL
---------- ---------- ----------
         3        799       2397

CUSTOMER_ID
-----------
CUSTOMER_NAME
--------------------------------------------------------------------------------
  ORDER_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
CATEGORY_NAME
--------------------------------------------------------------------------------
  QUANTITY UNIT_PRICE   SUBTOTAL
---------- ---------- ----------


CUSTOMER_ID
-----------
CUSTOMER_NAME
--------------------------------------------------------------------------------
  ORDER_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
CATEGORY_NAME
--------------------------------------------------------------------------------
  QUANTITY UNIT_PRICE   SUBTOTAL
---------- ---------- ----------
        102

CUSTOMER_ID
-----------
CUSTOMER_NAME
--------------------------------------------------------------------------------
  ORDER_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
CATEGORY_NAME
--------------------------------------------------------------------------------
  QUANTITY UNIT_PRICE   SUBTOTAL
---------- ---------- ----------
Priya Sharma

CUSTOMER_ID
-----------
CUSTOMER_NAME
--------------------------------------------------------------------------------
  ORDER_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
CATEGORY_NAME
--------------------------------------------------------------------------------
  QUANTITY UNIT_PRICE   SUBTOTAL
---------- ---------- ----------
       502

CUSTOMER_ID
-----------
CUSTOMER_NAME
--------------------------------------------------------------------------------
  ORDER_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
CATEGORY_NAME
--------------------------------------------------------------------------------
  QUANTITY UNIT_PRICE   SUBTOTAL
---------- ---------- ----------
Maybelline Lipstick

CUSTOMER_ID
-----------
CUSTOMER_NAME
--------------------------------------------------------------------------------
  ORDER_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
CATEGORY_NAME
--------------------------------------------------------------------------------
  QUANTITY UNIT_PRICE   SUBTOTAL
---------- ---------- ----------
Makeup

CUSTOMER_ID
-----------
CUSTOMER_NAME
--------------------------------------------------------------------------------
  ORDER_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
CATEGORY_NAME
--------------------------------------------------------------------------------
  QUANTITY UNIT_PRICE   SUBTOTAL
---------- ---------- ----------
         1        749        749

CUSTOMER_ID
-----------
CUSTOMER_NAME
--------------------------------------------------------------------------------
  ORDER_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
CATEGORY_NAME
--------------------------------------------------------------------------------
  QUANTITY UNIT_PRICE   SUBTOTAL
---------- ---------- ----------


CUSTOMER_ID
-----------
CUSTOMER_NAME
--------------------------------------------------------------------------------
  ORDER_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
CATEGORY_NAME
--------------------------------------------------------------------------------
  QUANTITY UNIT_PRICE   SUBTOTAL
---------- ---------- ----------
        103

CUSTOMER_ID
-----------
CUSTOMER_NAME
--------------------------------------------------------------------------------
  ORDER_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
CATEGORY_NAME
--------------------------------------------------------------------------------
  QUANTITY UNIT_PRICE   SUBTOTAL
---------- ---------- ----------
Arun Kumar

CUSTOMER_ID
-----------
CUSTOMER_NAME
--------------------------------------------------------------------------------
  ORDER_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
CATEGORY_NAME
--------------------------------------------------------------------------------
  QUANTITY UNIT_PRICE   SUBTOTAL
---------- ---------- ----------
       503

CUSTOMER_ID
-----------
CUSTOMER_NAME
--------------------------------------------------------------------------------
  ORDER_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
CATEGORY_NAME
--------------------------------------------------------------------------------
  QUANTITY UNIT_PRICE   SUBTOTAL
---------- ---------- ----------
Mamaearth Face Wash

CUSTOMER_ID
-----------
CUSTOMER_NAME
--------------------------------------------------------------------------------
  ORDER_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
CATEGORY_NAME
--------------------------------------------------------------------------------
  QUANTITY UNIT_PRICE   SUBTOTAL
---------- ---------- ----------
Skincare

CUSTOMER_ID
-----------
CUSTOMER_NAME
--------------------------------------------------------------------------------
  ORDER_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
CATEGORY_NAME
--------------------------------------------------------------------------------
  QUANTITY UNIT_PRICE   SUBTOTAL
---------- ---------- ----------
         2      649.5       1299

CUSTOMER_ID
-----------
CUSTOMER_NAME
--------------------------------------------------------------------------------
  ORDER_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
CATEGORY_NAME
--------------------------------------------------------------------------------
  QUANTITY UNIT_PRICE   SUBTOTAL
---------- ---------- ----------


CUSTOMER_ID
-----------
CUSTOMER_NAME
--------------------------------------------------------------------------------
  ORDER_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
CATEGORY_NAME
--------------------------------------------------------------------------------
  QUANTITY UNIT_PRICE   SUBTOTAL
---------- ---------- ----------
        104

CUSTOMER_ID
-----------
CUSTOMER_NAME
--------------------------------------------------------------------------------
  ORDER_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
CATEGORY_NAME
--------------------------------------------------------------------------------
  QUANTITY UNIT_PRICE   SUBTOTAL
---------- ---------- ----------
Rahul Verma

CUSTOMER_ID
-----------
CUSTOMER_NAME
--------------------------------------------------------------------------------
  ORDER_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
CATEGORY_NAME
--------------------------------------------------------------------------------
  QUANTITY UNIT_PRICE   SUBTOTAL
---------- ---------- ----------
       504

CUSTOMER_ID
-----------
CUSTOMER_NAME
--------------------------------------------------------------------------------
  ORDER_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
CATEGORY_NAME
--------------------------------------------------------------------------------
  QUANTITY UNIT_PRICE   SUBTOTAL
---------- ---------- ----------
Minimalist Serum

CUSTOMER_ID
-----------
CUSTOMER_NAME
--------------------------------------------------------------------------------
  ORDER_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
CATEGORY_NAME
--------------------------------------------------------------------------------
  QUANTITY UNIT_PRICE   SUBTOTAL
---------- ---------- ----------
Skincare

CUSTOMER_ID
-----------
CUSTOMER_NAME
--------------------------------------------------------------------------------
  ORDER_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
CATEGORY_NAME
--------------------------------------------------------------------------------
  QUANTITY UNIT_PRICE   SUBTOTAL
---------- ---------- ----------
         1        799        799

CUSTOMER_ID
-----------
CUSTOMER_NAME
--------------------------------------------------------------------------------
  ORDER_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
CATEGORY_NAME
--------------------------------------------------------------------------------
  QUANTITY UNIT_PRICE   SUBTOTAL
---------- ---------- ----------


CUSTOMER_ID
-----------
CUSTOMER_NAME
--------------------------------------------------------------------------------
  ORDER_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
CATEGORY_NAME
--------------------------------------------------------------------------------
  QUANTITY UNIT_PRICE   SUBTOTAL
---------- ---------- ----------
        105

CUSTOMER_ID
-----------
CUSTOMER_NAME
--------------------------------------------------------------------------------
  ORDER_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
CATEGORY_NAME
--------------------------------------------------------------------------------
  QUANTITY UNIT_PRICE   SUBTOTAL
---------- ---------- ----------
Sneha Patel

CUSTOMER_ID
-----------
CUSTOMER_NAME
--------------------------------------------------------------------------------
  ORDER_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
CATEGORY_NAME
--------------------------------------------------------------------------------
  QUANTITY UNIT_PRICE   SUBTOTAL
---------- ---------- ----------
       505

CUSTOMER_ID
-----------
CUSTOMER_NAME
--------------------------------------------------------------------------------
  ORDER_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
CATEGORY_NAME
--------------------------------------------------------------------------------
  QUANTITY UNIT_PRICE   SUBTOTAL
---------- ---------- ----------
Loreal Shampoo

CUSTOMER_ID
-----------
CUSTOMER_NAME
--------------------------------------------------------------------------------
  ORDER_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
CATEGORY_NAME
--------------------------------------------------------------------------------
  QUANTITY UNIT_PRICE   SUBTOTAL
---------- ---------- ----------
Haircare

CUSTOMER_ID
-----------
CUSTOMER_NAME
--------------------------------------------------------------------------------
  ORDER_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
CATEGORY_NAME
--------------------------------------------------------------------------------
  QUANTITY UNIT_PRICE   SUBTOTAL
---------- ---------- ----------
         2      799.5       1599

CUSTOMER_ID
-----------
CUSTOMER_NAME
--------------------------------------------------------------------------------
  ORDER_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
CATEGORY_NAME
--------------------------------------------------------------------------------
  QUANTITY UNIT_PRICE   SUBTOTAL
---------- ---------- ----------

