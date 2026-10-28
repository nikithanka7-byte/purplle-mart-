
SQL> SELECT
  2      C.Customer_ID,
  3      C.First_Name,
  4      C.Last_Name,
  5      O.Order_ID,
  6      O.Order_Date,
  7      O.Total_Amount,
  8      O.Order_Status
  9  FROM Customer5 C
 10  INNER JOIN Orders O
 11      ON C.Customer_ID = O.Customer_ID
 12  ;

CUSTOMER_ID FIRST_NAME
----------- --------------------------------------------------
LAST_NAME                                            ORDER_ID ORDER_DAT
-------------------------------------------------- ---------- ---------
TOTAL_AMOUNT ORDER_STATUS
------------ ------------------------------
        101 Nikitha
R                                                         501 20-SEP-26
        1699 Pending

        102 Priya
Sharma                                                    502 26-SEP-26
         749 Shipped

CUSTOMER_ID FIRST_NAME
----------- --------------------------------------------------
LAST_NAME                                            ORDER_ID ORDER_DAT
-------------------------------------------------- ---------- ---------
TOTAL_AMOUNT ORDER_STATUS
------------ ------------------------------

        103 Arun
Kumar                                                     503 26-SEP-26
        1299 Delivered

        104 Rahul
Verma                                                     504 26-SEP-26

CUSTOMER_ID FIRST_NAME
----------- --------------------------------------------------
LAST_NAME                                            ORDER_ID ORDER_DAT
-------------------------------------------------- ---------- ---------
TOTAL_AMOUNT ORDER_STATUS
------------ ------------------------------
         799 Pending

        105 Sneha
Patel                                                     505 26-SEP-26
        1599 Delivered


SQL> SELECT
  2     O.Order_ID,
  3     O.Order_Date,
  4     O.Total_Amount,
  5    P.Payment_Mode,
  6     P.Payment_Amount,
  7     P.Payment_Status
  8  FROM Orders O INNER JOIN Payment P ON O.Order_ID = P.Order_ID;

  ORDER_ID ORDER_DAT TOTAL_AMOUNT PAYMENT_MODE         PAYMENT_AMOUNT
---------- --------- ------------ -------------------- --------------
PAYMENT_STATUS
--------------------
       501 20-SEP-26         1699 UPI                            1699
Successful

       502 26-SEP-26          749 CARD                            749
Successful

       503 26-SEP-26         1299 COD                            1299
Successful


  ORDER_ID ORDER_DAT TOTAL_AMOUNT PAYMENT_MODE         PAYMENT_AMOUNT
---------- --------- ------------ -------------------- --------------
PAYMENT_STATUS
--------------------
       504 26-SEP-26          799 UPI                             799
Successful

       505 26-SEP-26         1599 CARD                           1599
Successful


SQL> SELECT
  2      P.Product_ID,
  3      P.Product_Name,
  4      OD.Order_ID,
  5      OD.Quantity,
  6      OD.Unit_Price,
  7      (OD.Quantity * OD.Unit_Price) AS Subtotal
  8  FROM PurplleProduct P
  9  INNER JOIN Order_Details OD
 10      ON P.Product_ID = OD.Product_ID
 11  ;

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
  ORDER_ID   QUANTITY UNIT_PRICE   SUBTOTAL
---------- ---------- ---------- ----------
       101
Lakme Foundation
       501          3        799       2397

       102
Maybelline Lipstick
       502          1        749        749

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
  ORDER_ID   QUANTITY UNIT_PRICE   SUBTOTAL
---------- ---------- ---------- ----------

       103
Mamaearth Face Wash
       503          2      649.5       1299

       104
Minimalist Serum

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
  ORDER_ID   QUANTITY UNIT_PRICE   SUBTOTAL
---------- ---------- ---------- ----------
       504          1        799        799

       105
Loreal Shampoo
       505          2      799.5       1599

SQL> SELECT
  2      C.Customer_ID,
  3      C.First_Name,
  4      C.Last_Name,
  5      O.Order_ID,
  6      O.Order_Date,
  7      O.Total_Amount
  8  FROM Customer5 C
  9  LEFT JOIN Orders O
 10      ON C.Customer_ID = O.Customer_ID;

CUSTOMER_ID FIRST_NAME
----------- --------------------------------------------------
LAST_NAME                                            ORDER_ID ORDER_DAT
-------------------------------------------------- ---------- ---------
TOTAL_AMOUNT
------------
        101 Nikitha
R                                                         501 20-SEP-26
        1699

        102 Priya
Sharma                                                    502 26-SEP-26
         749

CUSTOMER_ID FIRST_NAME
----------- --------------------------------------------------
LAST_NAME                                            ORDER_ID ORDER_DAT
-------------------------------------------------- ---------- ---------
TOTAL_AMOUNT
------------

        103 Arun
Kumar                                                     503 26-SEP-26
        1299

        104 Rahul
Verma                                                     504 26-SEP-26

CUSTOMER_ID FIRST_NAME
----------- --------------------------------------------------
LAST_NAME                                            ORDER_ID ORDER_DAT
-------------------------------------------------- ---------- ---------
TOTAL_AMOUNT
------------
         799

        105 Sneha
Patel                                                     505 26-SEP-26
        1599

        107 Karthik

CUSTOMER_ID FIRST_NAME
----------- --------------------------------------------------
LAST_NAME                                            ORDER_ID ORDER_DAT
-------------------------------------------------- ---------- ---------
TOTAL_AMOUNT
------------
S


        108 Divya
Nair



CUSTOMER_ID FIRST_NAME
----------- --------------------------------------------------
LAST_NAME                                            ORDER_ID ORDER_DAT
-------------------------------------------------- ---------- ---------
TOTAL_AMOUNT
------------
        106 Anjali
Rao



8 rows selected.

SQL> SELECT
  2  C.Customer_ID,
  3  C.First_Name,
  4  O.Order_ID,
  5  O.Order_Date,
  6  O.Total_Amount
  7  FROM Customer5 C
  8  RIGHT JOIN Orders O
  9  ON C.Customer_ID = O.Customer_ID;

CUSTOMER_ID FIRST_NAME                                           ORDER_ID
----------- -------------------------------------------------- ----------
ORDER_DAT TOTAL_AMOUNT
--------- ------------
        101 Nikitha                                                   501
20-SEP-26         1699

        102 Priya                                                     502
26-SEP-26          749

        103 Arun                                                      503
26-SEP-26         1299


CUSTOMER_ID FIRST_NAME                                           ORDER_ID
----------- -------------------------------------------------- ----------
ORDER_DAT TOTAL_AMOUNT
--------- ------------
        104 Rahul                                                     504
26-SEP-26          799

        105 Sneha                                                     505
26-SEP-26         1599

SQL> SELECT
  2      C.Customer_ID,
  3      C.First_Name,
  4      C.Last_Name,
  5      O.Order_ID,
  6      O.Order_Date,
  7      P.Product_ID,
  8      P.Product_Name,
  9      OD.Quantity,
 10      OD.Unit_Price,
 11      (OD.Quantity * OD.Unit_Price) AS Subtotal,
 12      PY.Payment_Mode,
 13      PY.Payment_Amount,
 14      PY.Payment_Status
 15  FROM Customer5 C
 16  INNER JOIN Orders O
 17      ON C.Customer_ID = O.Customer_ID
 18  INNER JOIN Order_Details OD
 19      ON O.Order_ID = OD.Order_ID
 20  INNER JOIN PurplleProduct P
 21      ON OD.Product_ID = P.Product_ID
 22  INNER JOIN Payment PY
 23      ON O.Order_ID = PY.Order_ID
 24  ORDER BY O.Order_Date DESC;

CUSTOMER_ID FIRST_NAME
----------- --------------------------------------------------
LAST_NAME                                            ORDER_ID ORDER_DAT
-------------------------------------------------- ---------- ---------
PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
  QUANTITY UNIT_PRICE   SUBTOTAL PAYMENT_MODE         PAYMENT_AMOUNT
---------- ---------- ---------- -------------------- --------------
PAYMENT_STATUS
--------------------
        105 Sneha

CUSTOMER_ID FIRST_NAME
----------- --------------------------------------------------
LAST_NAME                                            ORDER_ID ORDER_DAT
-------------------------------------------------- ---------- ---------
PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
  QUANTITY UNIT_PRICE   SUBTOTAL PAYMENT_MODE         PAYMENT_AMOUNT
---------- ---------- ---------- -------------------- --------------
PAYMENT_STATUS
--------------------
Patel                                                     505 26-SEP-26

CUSTOMER_ID FIRST_NAME
----------- --------------------------------------------------
LAST_NAME                                            ORDER_ID ORDER_DAT
-------------------------------------------------- ---------- ---------
PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
  QUANTITY UNIT_PRICE   SUBTOTAL PAYMENT_MODE         PAYMENT_AMOUNT
---------- ---------- ---------- -------------------- --------------
PAYMENT_STATUS
--------------------
       105

CUSTOMER_ID FIRST_NAME
----------- --------------------------------------------------
LAST_NAME                                            ORDER_ID ORDER_DAT
-------------------------------------------------- ---------- ---------
PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
  QUANTITY UNIT_PRICE   SUBTOTAL PAYMENT_MODE         PAYMENT_AMOUNT
---------- ---------- ---------- -------------------- --------------
PAYMENT_STATUS
--------------------
Loreal Shampoo

CUSTOMER_ID FIRST_NAME
----------- --------------------------------------------------
LAST_NAME                                            ORDER_ID ORDER_DAT
-------------------------------------------------- ---------- ---------
PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
  QUANTITY UNIT_PRICE   SUBTOTAL PAYMENT_MODE         PAYMENT_AMOUNT
---------- ---------- ---------- -------------------- --------------
PAYMENT_STATUS
--------------------
         2      799.5       1599 CARD                           1599

CUSTOMER_ID FIRST_NAME
----------- --------------------------------------------------
LAST_NAME                                            ORDER_ID ORDER_DAT
-------------------------------------------------- ---------- ---------
PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
  QUANTITY UNIT_PRICE   SUBTOTAL PAYMENT_MODE         PAYMENT_AMOUNT
---------- ---------- ---------- -------------------- --------------
PAYMENT_STATUS
--------------------
Successful

CUSTOMER_ID FIRST_NAME
----------- --------------------------------------------------
LAST_NAME                                            ORDER_ID ORDER_DAT
-------------------------------------------------- ---------- ---------
PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
  QUANTITY UNIT_PRICE   SUBTOTAL PAYMENT_MODE         PAYMENT_AMOUNT
---------- ---------- ---------- -------------------- --------------
PAYMENT_STATUS
--------------------


CUSTOMER_ID FIRST_NAME
----------- --------------------------------------------------
LAST_NAME                                            ORDER_ID ORDER_DAT
-------------------------------------------------- ---------- ---------
PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
  QUANTITY UNIT_PRICE   SUBTOTAL PAYMENT_MODE         PAYMENT_AMOUNT
---------- ---------- ---------- -------------------- --------------
PAYMENT_STATUS
--------------------
        104 Rahul

CUSTOMER_ID FIRST_NAME
----------- --------------------------------------------------
LAST_NAME                                            ORDER_ID ORDER_DAT
-------------------------------------------------- ---------- ---------
PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
  QUANTITY UNIT_PRICE   SUBTOTAL PAYMENT_MODE         PAYMENT_AMOUNT
---------- ---------- ---------- -------------------- --------------
PAYMENT_STATUS
--------------------
Verma                                                     504 26-SEP-26

CUSTOMER_ID FIRST_NAME
----------- --------------------------------------------------
LAST_NAME                                            ORDER_ID ORDER_DAT
-------------------------------------------------- ---------- ---------
PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
  QUANTITY UNIT_PRICE   SUBTOTAL PAYMENT_MODE         PAYMENT_AMOUNT
---------- ---------- ---------- -------------------- --------------
PAYMENT_STATUS
--------------------
       104

CUSTOMER_ID FIRST_NAME
----------- --------------------------------------------------
LAST_NAME                                            ORDER_ID ORDER_DAT
-------------------------------------------------- ---------- ---------
PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
  QUANTITY UNIT_PRICE   SUBTOTAL PAYMENT_MODE         PAYMENT_AMOUNT
---------- ---------- ---------- -------------------- --------------
PAYMENT_STATUS
--------------------
Minimalist Serum

CUSTOMER_ID FIRST_NAME
----------- --------------------------------------------------
LAST_NAME                                            ORDER_ID ORDER_DAT
-------------------------------------------------- ---------- ---------
PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
  QUANTITY UNIT_PRICE   SUBTOTAL PAYMENT_MODE         PAYMENT_AMOUNT
---------- ---------- ---------- -------------------- --------------
PAYMENT_STATUS
--------------------
         1        799        799 UPI                             799

CUSTOMER_ID FIRST_NAME
----------- --------------------------------------------------
LAST_NAME                                            ORDER_ID ORDER_DAT
-------------------------------------------------- ---------- ---------
PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
  QUANTITY UNIT_PRICE   SUBTOTAL PAYMENT_MODE         PAYMENT_AMOUNT
---------- ---------- ---------- -------------------- --------------
PAYMENT_STATUS
--------------------
Successful

CUSTOMER_ID FIRST_NAME
----------- --------------------------------------------------
LAST_NAME                                            ORDER_ID ORDER_DAT
-------------------------------------------------- ---------- ---------
PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
  QUANTITY UNIT_PRICE   SUBTOTAL PAYMENT_MODE         PAYMENT_AMOUNT
---------- ---------- ---------- -------------------- --------------
PAYMENT_STATUS
--------------------


CUSTOMER_ID FIRST_NAME
----------- --------------------------------------------------
LAST_NAME                                            ORDER_ID ORDER_DAT
-------------------------------------------------- ---------- ---------
PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
  QUANTITY UNIT_PRICE   SUBTOTAL PAYMENT_MODE         PAYMENT_AMOUNT
---------- ---------- ---------- -------------------- --------------
PAYMENT_STATUS
--------------------
        103 Arun

CUSTOMER_ID FIRST_NAME
----------- --------------------------------------------------
LAST_NAME                                            ORDER_ID ORDER_DAT
-------------------------------------------------- ---------- ---------
PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
  QUANTITY UNIT_PRICE   SUBTOTAL PAYMENT_MODE         PAYMENT_AMOUNT
---------- ---------- ---------- -------------------- --------------
PAYMENT_STATUS
--------------------
Kumar                                                     503 26-SEP-26

CUSTOMER_ID FIRST_NAME
----------- --------------------------------------------------
LAST_NAME                                            ORDER_ID ORDER_DAT
-------------------------------------------------- ---------- ---------
PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
  QUANTITY UNIT_PRICE   SUBTOTAL PAYMENT_MODE         PAYMENT_AMOUNT
---------- ---------- ---------- -------------------- --------------
PAYMENT_STATUS
--------------------
       103

CUSTOMER_ID FIRST_NAME
----------- --------------------------------------------------
LAST_NAME                                            ORDER_ID ORDER_DAT
-------------------------------------------------- ---------- ---------
PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
  QUANTITY UNIT_PRICE   SUBTOTAL PAYMENT_MODE         PAYMENT_AMOUNT
---------- ---------- ---------- -------------------- --------------
PAYMENT_STATUS
--------------------
Mamaearth Face Wash

CUSTOMER_ID FIRST_NAME
----------- --------------------------------------------------
LAST_NAME                                            ORDER_ID ORDER_DAT
-------------------------------------------------- ---------- ---------
PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
  QUANTITY UNIT_PRICE   SUBTOTAL PAYMENT_MODE         PAYMENT_AMOUNT
---------- ---------- ---------- -------------------- --------------
PAYMENT_STATUS
--------------------
         2      649.5       1299 COD                            1299

CUSTOMER_ID FIRST_NAME
----------- --------------------------------------------------
LAST_NAME                                            ORDER_ID ORDER_DAT
-------------------------------------------------- ---------- ---------
PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
  QUANTITY UNIT_PRICE   SUBTOTAL PAYMENT_MODE         PAYMENT_AMOUNT
---------- ---------- ---------- -------------------- --------------
PAYMENT_STATUS
--------------------
Successful

CUSTOMER_ID FIRST_NAME
----------- --------------------------------------------------
LAST_NAME                                            ORDER_ID ORDER_DAT
-------------------------------------------------- ---------- ---------
PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
  QUANTITY UNIT_PRICE   SUBTOTAL PAYMENT_MODE         PAYMENT_AMOUNT
---------- ---------- ---------- -------------------- --------------
PAYMENT_STATUS
--------------------


CUSTOMER_ID FIRST_NAME
----------- --------------------------------------------------
LAST_NAME                                            ORDER_ID ORDER_DAT
-------------------------------------------------- ---------- ---------
PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
  QUANTITY UNIT_PRICE   SUBTOTAL PAYMENT_MODE         PAYMENT_AMOUNT
---------- ---------- ---------- -------------------- --------------
PAYMENT_STATUS
--------------------
        102 Priya

CUSTOMER_ID FIRST_NAME
----------- --------------------------------------------------
LAST_NAME                                            ORDER_ID ORDER_DAT
-------------------------------------------------- ---------- ---------
PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
  QUANTITY UNIT_PRICE   SUBTOTAL PAYMENT_MODE         PAYMENT_AMOUNT
---------- ---------- ---------- -------------------- --------------
PAYMENT_STATUS
--------------------
Sharma                                                    502 26-SEP-26

CUSTOMER_ID FIRST_NAME
----------- --------------------------------------------------
LAST_NAME                                            ORDER_ID ORDER_DAT
-------------------------------------------------- ---------- ---------
PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
  QUANTITY UNIT_PRICE   SUBTOTAL PAYMENT_MODE         PAYMENT_AMOUNT
---------- ---------- ---------- -------------------- --------------
PAYMENT_STATUS
--------------------
       102

CUSTOMER_ID FIRST_NAME
----------- --------------------------------------------------
LAST_NAME                                            ORDER_ID ORDER_DAT
-------------------------------------------------- ---------- ---------
PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
  QUANTITY UNIT_PRICE   SUBTOTAL PAYMENT_MODE         PAYMENT_AMOUNT
---------- ---------- ---------- -------------------- --------------
PAYMENT_STATUS
--------------------
Maybelline Lipstick

CUSTOMER_ID FIRST_NAME
----------- --------------------------------------------------
LAST_NAME                                            ORDER_ID ORDER_DAT
-------------------------------------------------- ---------- ---------
PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
  QUANTITY UNIT_PRICE   SUBTOTAL PAYMENT_MODE         PAYMENT_AMOUNT
---------- ---------- ---------- -------------------- --------------
PAYMENT_STATUS
--------------------
         1        749        749 CARD                            749

CUSTOMER_ID FIRST_NAME
----------- --------------------------------------------------
LAST_NAME                                            ORDER_ID ORDER_DAT
-------------------------------------------------- ---------- ---------
PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
  QUANTITY UNIT_PRICE   SUBTOTAL PAYMENT_MODE         PAYMENT_AMOUNT
---------- ---------- ---------- -------------------- --------------
PAYMENT_STATUS
--------------------
Successful

CUSTOMER_ID FIRST_NAME
----------- --------------------------------------------------
LAST_NAME                                            ORDER_ID ORDER_DAT
-------------------------------------------------- ---------- ---------
PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
  QUANTITY UNIT_PRICE   SUBTOTAL PAYMENT_MODE         PAYMENT_AMOUNT
---------- ---------- ---------- -------------------- --------------
PAYMENT_STATUS
--------------------


CUSTOMER_ID FIRST_NAME
----------- --------------------------------------------------
LAST_NAME                                            ORDER_ID ORDER_DAT
-------------------------------------------------- ---------- ---------
PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
  QUANTITY UNIT_PRICE   SUBTOTAL PAYMENT_MODE         PAYMENT_AMOUNT
---------- ---------- ---------- -------------------- --------------
PAYMENT_STATUS
--------------------
        101 Nikitha

CUSTOMER_ID FIRST_NAME
----------- --------------------------------------------------
LAST_NAME                                            ORDER_ID ORDER_DAT
-------------------------------------------------- ---------- ---------
PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
  QUANTITY UNIT_PRICE   SUBTOTAL PAYMENT_MODE         PAYMENT_AMOUNT
---------- ---------- ---------- -------------------- --------------
PAYMENT_STATUS
--------------------
R                                                         501 20-SEP-26

CUSTOMER_ID FIRST_NAME
----------- --------------------------------------------------
LAST_NAME                                            ORDER_ID ORDER_DAT
-------------------------------------------------- ---------- ---------
PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
  QUANTITY UNIT_PRICE   SUBTOTAL PAYMENT_MODE         PAYMENT_AMOUNT
---------- ---------- ---------- -------------------- --------------
PAYMENT_STATUS
--------------------
       101

CUSTOMER_ID FIRST_NAME
----------- --------------------------------------------------
LAST_NAME                                            ORDER_ID ORDER_DAT
-------------------------------------------------- ---------- ---------
PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
  QUANTITY UNIT_PRICE   SUBTOTAL PAYMENT_MODE         PAYMENT_AMOUNT
---------- ---------- ---------- -------------------- --------------
PAYMENT_STATUS
--------------------
Lakme Foundation

CUSTOMER_ID FIRST_NAME
----------- --------------------------------------------------
LAST_NAME                                            ORDER_ID ORDER_DAT
-------------------------------------------------- ---------- ---------
PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
  QUANTITY UNIT_PRICE   SUBTOTAL PAYMENT_MODE         PAYMENT_AMOUNT
---------- ---------- ---------- -------------------- --------------
PAYMENT_STATUS
--------------------
         3        799       2397 UPI                            1699

CUSTOMER_ID FIRST_NAME
----------- --------------------------------------------------
LAST_NAME                                            ORDER_ID ORDER_DAT
-------------------------------------------------- ---------- ---------
PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
  QUANTITY UNIT_PRICE   SUBTOTAL PAYMENT_MODE         PAYMENT_AMOUNT
---------- ---------- ---------- -------------------- --------------
PAYMENT_STATUS
--------------------
Successful

CUSTOMER_ID FIRST_NAME
----------- --------------------------------------------------
LAST_NAME                                            ORDER_ID ORDER_DAT
-------------------------------------------------- ---------- ---------
PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
  QUANTITY UNIT_PRICE   SUBTOTAL PAYMENT_MODE         PAYMENT_AMOUNT
---------- ---------- ---------- -------------------- --------------
PAYMENT_STATUS
--------------------

SQL> SELECT
  2      C.Customer_ID,
  3      C.First_Name,
  4      C.Last_Name,
  5      O.Order_ID,
  6      P.Product_Name,
  7      OD.Quantity,
  8      (OD.Quantity * OD.Unit_Price) AS Subtotal
  9  FROM Customer5 C
 10  INNER JOIN Orders O
 11      ON C.Customer_ID = O.Customer_ID
 12  INNER JOIN Order_Details OD
 13      ON O.Order_ID = OD.Order_ID
 14  INNER JOIN PurplleProduct P
 15      ON OD.Product_ID = P.Product_ID
 16  ORDER BY C.Customer_ID, O.Order_Date;

CUSTOMER_ID FIRST_NAME
----------- --------------------------------------------------
LAST_NAME                                            ORDER_ID
-------------------------------------------------- ----------
PRODUCT_NAME
--------------------------------------------------------------------------------
  QUANTITY   SUBTOTAL
---------- ----------
        101 Nikitha
R                                                         501
Lakme Foundation
         3       2397


CUSTOMER_ID FIRST_NAME
----------- --------------------------------------------------
LAST_NAME                                            ORDER_ID
-------------------------------------------------- ----------
PRODUCT_NAME
--------------------------------------------------------------------------------
  QUANTITY   SUBTOTAL
---------- ----------
        102 Priya
Sharma                                                    502
Maybelline Lipstick
         1        749


CUSTOMER_ID FIRST_NAME
----------- --------------------------------------------------
LAST_NAME                                            ORDER_ID
-------------------------------------------------- ----------
PRODUCT_NAME
--------------------------------------------------------------------------------
  QUANTITY   SUBTOTAL
---------- ----------
        103 Arun
Kumar                                                     503
Mamaearth Face Wash
         2       1299


CUSTOMER_ID FIRST_NAME
----------- --------------------------------------------------
LAST_NAME                                            ORDER_ID
-------------------------------------------------- ----------
PRODUCT_NAME
--------------------------------------------------------------------------------
  QUANTITY   SUBTOTAL
---------- ----------
        104 Rahul
Verma                                                     504
Minimalist Serum
         1        799


CUSTOMER_ID FIRST_NAME
----------- --------------------------------------------------
LAST_NAME                                            ORDER_ID
-------------------------------------------------- ----------
PRODUCT_NAME
--------------------------------------------------------------------------------
  QUANTITY   SUBTOTAL
---------- ----------
        105 Sneha
Patel                                                     505
Loreal Shampoo
         2       1599

    SQL> SELECT
  2      C.Customer_ID,
  3      C.First_Name,
  4      C.Last_Name,
  5      O.Order_ID,
  6      O.Order_Date,
  7      P.Product_Name,
  8      OD.Quantity,
  9      (OD.Quantity * OD.Unit_Price) AS Subtotal,
 10      PY.Payment_Mode,
 11      PY.Payment_Status
 12  FROM Customer5 C
 13  INNER JOIN Orders O
 14      ON C.Customer_ID = O.Customer_ID
 15  INNER JOIN Order_Details OD
 16      ON O.Order_ID = OD.Order_ID
 17  INNER JOIN PurplleProduct P
 18      ON OD.Product_ID = P.Product_ID
 19  INNER JOIN Payment PY
 20      ON O.Order_ID = PY.Order_ID
 21  ORDER BY C.Customer_ID;

CUSTOMER_ID FIRST_NAME
----------- --------------------------------------------------
LAST_NAME                                            ORDER_ID ORDER_DAT
-------------------------------------------------- ---------- ---------
PRODUCT_NAME
--------------------------------------------------------------------------------
  QUANTITY   SUBTOTAL PAYMENT_MODE         PAYMENT_STATUS
---------- ---------- -------------------- --------------------
        101 Nikitha
R                                                         501 20-SEP-26
Lakme Foundation
         3       2397 UPI                  Successful


CUSTOMER_ID FIRST_NAME
----------- --------------------------------------------------
LAST_NAME                                            ORDER_ID ORDER_DAT
-------------------------------------------------- ---------- ---------
PRODUCT_NAME
--------------------------------------------------------------------------------
  QUANTITY   SUBTOTAL PAYMENT_MODE         PAYMENT_STATUS
---------- ---------- -------------------- --------------------
        102 Priya
Sharma                                                    502 26-SEP-26
Maybelline Lipstick
         1        749 CARD                 Successful


CUSTOMER_ID FIRST_NAME
----------- --------------------------------------------------
LAST_NAME                                            ORDER_ID ORDER_DAT
-------------------------------------------------- ---------- ---------
PRODUCT_NAME
--------------------------------------------------------------------------------
  QUANTITY   SUBTOTAL PAYMENT_MODE         PAYMENT_STATUS
---------- ---------- -------------------- --------------------
        103 Arun
Kumar                                                     503 26-SEP-26
Mamaearth Face Wash
         2       1299 COD                  Successful


CUSTOMER_ID FIRST_NAME
----------- --------------------------------------------------
LAST_NAME                                            ORDER_ID ORDER_DAT
-------------------------------------------------- ---------- ---------
PRODUCT_NAME
--------------------------------------------------------------------------------
  QUANTITY   SUBTOTAL PAYMENT_MODE         PAYMENT_STATUS
---------- ---------- -------------------- --------------------
        104 Rahul
Verma                                                     504 26-SEP-26
Minimalist Serum
         1        799 UPI                  Successful


CUSTOMER_ID FIRST_NAME
----------- --------------------------------------------------
LAST_NAME                                            ORDER_ID ORDER_DAT
-------------------------------------------------- ---------- ---------
PRODUCT_NAME
--------------------------------------------------------------------------------
  QUANTITY   SUBTOTAL PAYMENT_MODE         PAYMENT_STATUS
---------- ---------- -------------------- --------------------
        105 Sneha
Patel                                                     505 26-SEP-26
Loreal Shampoo
         2       1599 CARD                 Successful

     SQL> SELECT
  2      C.Customer_ID,
  3      C.First_Name || ' ' || C.Last_Name AS Customer_Name,
  4      COUNT(DISTINCT O.Order_ID) AS Total_Orders,
  5      SUM(OD.Quantity * OD.Unit_Price) AS Total_Purchase,
  6      SUM(OD.Quantity) AS Total_Products
  7  FROM Customer5 C
  8  INNER JOIN Orders O
  9      ON C.Customer_ID = O.Customer_ID
 10  INNER JOIN Order_Details OD
 11      ON O.Order_ID = OD.Order_ID
 12  GROUP BY
 13      C.Customer_ID,
 14      C.First_Name,
 15      C.Last_Name
 16  ORDER BY Total_Purchase DESC;

CUSTOMER_ID
-----------
CUSTOMER_NAME
--------------------------------------------------------------------------------
TOTAL_ORDERS TOTAL_PURCHASE TOTAL_PRODUCTS
------------ -------------- --------------
        101
Nikitha R
           1           2397              3

        105
Sneha Patel
           1           1599              2

CUSTOMER_ID
-----------
CUSTOMER_NAME
--------------------------------------------------------------------------------
TOTAL_ORDERS TOTAL_PURCHASE TOTAL_PRODUCTS
------------ -------------- --------------

        103
Arun Kumar
           1           1299              2

        104
Rahul Verma

CUSTOMER_ID
-----------
CUSTOMER_NAME
--------------------------------------------------------------------------------
TOTAL_ORDERS TOTAL_PURCHASE TOTAL_PRODUCTS
------------ -------------- --------------
           1            799              1

        102
Priya Sharma
           1            749              1

SQL> SELECT
  2  C.First_nAME,
  3  O.Order_ID,
  4  O.Order_Date,
  5  O.Total_Amount,
  6  PY.Payment_Mode,
  7  PY.Payment_Amount,
  8  PY.Payment_Status
  9  FROM Customer5 C
 10  INNER JOIN Orders O
 11      ON C.Customer_ID = O.Customer_ID
 12  INNER JOIN PAYMENT PY
 13      ON O.Order_ID = PY.Order_ID
 14  ORDER BY O.Order_Date DESC;

FIRST_NAME                                           ORDER_ID ORDER_DAT
-------------------------------------------------- ---------- ---------
TOTAL_AMOUNT PAYMENT_MODE         PAYMENT_AMOUNT PAYMENT_STATUS
------------ -------------------- -------------- --------------------
Sneha                                                     505 26-SEP-26
        1599 CARD                           1599 Successful

Rahul                                                     504 26-SEP-26
         799 UPI                             799 Successful

Arun                                                      503 26-SEP-26
        1299 COD                            1299 Successful


FIRST_NAME                                           ORDER_ID ORDER_DAT
-------------------------------------------------- ---------- ---------
TOTAL_AMOUNT PAYMENT_MODE         PAYMENT_AMOUNT PAYMENT_STATUS
------------ -------------------- -------------- --------------------
Priya                                                     502 26-SEP-26
         749 CARD                            749 Successful

Nikitha                                                   501 20-SEP-26
        1699 UPI                            1699 Successful
