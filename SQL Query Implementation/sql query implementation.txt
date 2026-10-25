SQL> SELECT *
  2  FROM PurplleProduct;

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

SQL> SELECT Product_ID, Product_Name, Price
  2  FROM PurplleProduct;

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
     PRICE
----------
       101
Lakme Foundation
       699

       102
Maybelline Lipstick
       749

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
     PRICE
----------

       103
Mamaearth Face Wash
       349

       104
Minimalist Serum

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
     PRICE
----------
       699

       105
Loreal Shampoo
       399

       106

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
     PRICE
----------
Tresemme Conditioner
       449

       109
Dove Body Wash
       349


PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
     PRICE
----------
       107
Fogg Perfume
       599

       108
Nivea Body Lotion
       299

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
     PRICE
----------

       110
Lakme Kajal
       299


10 rows selected.


SQL> SELECT Product_ID, Product_Name, Price, Stock
  2  FROM PurplleProduct
  3  WHERE Price < 500;

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
     PRICE      STOCK
---------- ----------
       103
Mamaearth Face Wash
       349         60

       105
Loreal Shampoo
       399         45

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
     PRICE      STOCK
---------- ----------

       106
Tresemme Conditioner
       449         30

       109
Dove Body Wash

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
     PRICE      STOCK
---------- ----------
       349         40

       108
Nivea Body Lotion
       299         55

       110

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
     PRICE      STOCK
---------- ----------
Lakme Kajal
       299         70


6 rows selected.


SQL> SELECT Product_ID, Product_Name, Price, Stock
  2  FROM PurplleProduct
  3  WHERE Price > 500;

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
     PRICE      STOCK
---------- ----------
       101
Lakme Foundation
       699         50

       102
Maybelline Lipstick
       749         60

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
     PRICE      STOCK
---------- ----------

       104
Minimalist Serum
       699         35

       107
Fogg Perfume

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
     PRICE      STOCK
---------- ----------
       599         25


SQL> SELECT Product_ID, Product_Name, Price
  2  FROM PurplleProduct
  3  ORDER BY Price ASC;

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
     PRICE
----------
       108
Nivea Body Lotion
       299

       110
Lakme Kajal
       299

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
     PRICE
----------

       109
Dove Body Wash
       349

       103
Mamaearth Face Wash

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
     PRICE
----------
       349

       105
Loreal Shampoo
       399

       106

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
     PRICE
----------
Tresemme Conditioner
       449

       107
Fogg Perfume
       599


PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
     PRICE
----------
       101
Lakme Foundation
       699

       104
Minimalist Serum
       699

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
     PRICE
----------

       102
Maybelline Lipstick
       749


10 rows selected.

SQL> SELECT Product_ID, Product_Name, Price
  2  FROM PurplleProduct
  3  ORDER BY Price DESC;

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
     PRICE
----------
       102
Maybelline Lipstick
       749

       101
Lakme Foundation
       699

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
     PRICE
----------

       104
Minimalist Serum
       699

       107
Fogg Perfume

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
     PRICE
----------
       599

       106
Tresemme Conditioner
       449

       105

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
     PRICE
----------
Loreal Shampoo
       399

       109
Dove Body Wash
       349


PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
     PRICE
----------
       103
Mamaearth Face Wash
       349

       108
Nivea Body Lotion
       299

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
     PRICE
----------

       110
Lakme Kajal
       299


10 rows selected.

SQL> SELECT DISTINCT Product_ID, Product_Name, Price
  2  FROM PurplleProduct
  3  ;

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
     PRICE
----------
       101
Lakme Foundation
       699

       102
Maybelline Lipstick
       749

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
     PRICE
----------

       103
Mamaearth Face Wash
       349

       104
Minimalist Serum

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
     PRICE
----------
       699

       105
Loreal Shampoo
       399

       106

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
     PRICE
----------
Tresemme Conditioner
       449

       109
Dove Body Wash
       349


PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
     PRICE
----------
       107
Fogg Perfume
       599

       108
Nivea Body Lotion
       299

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
     PRICE
----------

       110
Lakme Kajal
       299


10 rows selected.


SQL> SELECT Product_ID, Product_Name, Price
  2  FROM PurplleProduct
  3  WHERE Price BETWEEN 100 AND 400;

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
     PRICE
----------
       103
Mamaearth Face Wash
       349

       105
Loreal Shampoo
       399

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
     PRICE
----------

       109
Dove Body Wash
       349

       108
Nivea Body Lotion

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
     PRICE
----------
       299

       110
Lakme Kajal
       299


SQL> SELECT Product_ID, Product_Name, Category_ID, Price
  2  FROM PurplleProduct
  3  WHERE Category_ID = 1;

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
CATEGORY_ID      PRICE
----------- ----------
       101
Lakme Foundation
          1        699

       102
Maybelline Lipstick
          1        749

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
CATEGORY_ID      PRICE
----------- ----------

       110
Lakme Kajal
          1        299


SQL> SELECT Customer_ID,First_Name, Email,Phone
  2  FROM Customer5;

CUSTOMER_ID FIRST_NAME
----------- --------------------------------------------------
EMAIL
--------------------------------------------------------------------------------
PHONE
---------------
        101 Nikitha
nikitha@gmail.com
9876543210

        102 Priya
priya@gmail.com
9876501234

CUSTOMER_ID FIRST_NAME
----------- --------------------------------------------------
EMAIL
--------------------------------------------------------------------------------
PHONE
---------------

        103 Arun
arun@gmail.com
9876512345

        104 Rahul
rahul.verma@gmail.com

CUSTOMER_ID FIRST_NAME
----------- --------------------------------------------------
EMAIL
--------------------------------------------------------------------------------
PHONE
---------------
9876523456

        105 Sneha
sneha@gmail.com
9876534567

        106 Anjali

CUSTOMER_ID FIRST_NAME
----------- --------------------------------------------------
EMAIL
--------------------------------------------------------------------------------
PHONE
---------------
anjali@gmail.com
9876545678

        107 Karthik
karthik@gmail.com
9876556789


CUSTOMER_ID FIRST_NAME
----------- --------------------------------------------------
EMAIL
--------------------------------------------------------------------------------
PHONE
---------------
        108 Divya
divya@gmail.com
9876567890


8 rows selected.


SQL> SELECT *
  2  FROM Customer5
  3  WHERE Customer_ID = 101;

CUSTOMER_ID FIRST_NAME
----------- --------------------------------------------------
LAST_NAME                                          GENDER
-------------------------------------------------- ----------
EMAIL
--------------------------------------------------------------------------------
PHONE
---------------
ADDRESS
--------------------------------------------------------------------------------
CITY
--------------------------------------------------
STATE                                                 PINCODE
-------------------------------------------------- ----------
        101 Nikitha

CUSTOMER_ID FIRST_NAME
----------- --------------------------------------------------
LAST_NAME                                          GENDER
-------------------------------------------------- ----------
EMAIL
--------------------------------------------------------------------------------
PHONE
---------------
ADDRESS
--------------------------------------------------------------------------------
CITY
--------------------------------------------------
STATE                                                 PINCODE
-------------------------------------------------- ----------
R                                                  Female

CUSTOMER_ID FIRST_NAME
----------- --------------------------------------------------
LAST_NAME                                          GENDER
-------------------------------------------------- ----------
EMAIL
--------------------------------------------------------------------------------
PHONE
---------------
ADDRESS
--------------------------------------------------------------------------------
CITY
--------------------------------------------------
STATE                                                 PINCODE
-------------------------------------------------- ----------
nikitha@gmail.com

CUSTOMER_ID FIRST_NAME
----------- --------------------------------------------------
LAST_NAME                                          GENDER
-------------------------------------------------- ----------
EMAIL
--------------------------------------------------------------------------------
PHONE
---------------
ADDRESS
--------------------------------------------------------------------------------
CITY
--------------------------------------------------
STATE                                                 PINCODE
-------------------------------------------------- ----------
9876543210

CUSTOMER_ID FIRST_NAME
----------- --------------------------------------------------
LAST_NAME                                          GENDER
-------------------------------------------------- ----------
EMAIL
--------------------------------------------------------------------------------
PHONE
---------------
ADDRESS
--------------------------------------------------------------------------------
CITY
--------------------------------------------------
STATE                                                 PINCODE
-------------------------------------------------- ----------
12 Anna Nagar

CUSTOMER_ID FIRST_NAME
----------- --------------------------------------------------
LAST_NAME                                          GENDER
-------------------------------------------------- ----------
EMAIL
--------------------------------------------------------------------------------
PHONE
---------------
ADDRESS
--------------------------------------------------------------------------------
CITY
--------------------------------------------------
STATE                                                 PINCODE
-------------------------------------------------- ----------
Chennai

CUSTOMER_ID FIRST_NAME
----------- --------------------------------------------------
LAST_NAME                                          GENDER
-------------------------------------------------- ----------
EMAIL
--------------------------------------------------------------------------------
PHONE
---------------
ADDRESS
--------------------------------------------------------------------------------
CITY
--------------------------------------------------
STATE                                                 PINCODE
-------------------------------------------------- ----------
Tamil Nadu                                             600040

CUSTOMER_ID FIRST_NAME
----------- --------------------------------------------------
LAST_NAME                                          GENDER
-------------------------------------------------- ----------
EMAIL
--------------------------------------------------------------------------------
PHONE
---------------
ADDRESS
--------------------------------------------------------------------------------
CITY
--------------------------------------------------
STATE                                                 PINCODE
-------------------------------------------------- ----------


SQL> SELECT Product_ID, Product_Name, Price, Category_ID
  2  FROM PurplleProduct
  3  WHERE price < 500
  4  AND Category_ID = 2;

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
     PRICE CATEGORY_ID
---------- -----------
       103
Mamaearth Face Wash
       349           2


SQL> SELECT Product_ID, Product_Name, Price
  2  FROM PurplleProduct
  3  WHERE Category_ID = 1
  4  OR Category_ID = 2;

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
     PRICE
----------
       101
Lakme Foundation
       699

       102
Maybelline Lipstick
       749

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
     PRICE
----------

       103
Mamaearth Face Wash
       349

       104
Minimalist Serum

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
     PRICE
----------
       699

       110
Lakme Kajal
       299


SQL> SELECT Product_ID, Product_Name, Price
  2  FROM PurplleProduct
  3  WHERE Category_ID IN (1,2,3);

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
     PRICE
----------
       101
Lakme Foundation
       699

       102
Maybelline Lipstick
       749

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
     PRICE
----------

       103
Mamaearth Face Wash
       349

       104
Minimalist Serum

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
     PRICE
----------
       699

       105
Loreal Shampoo
       399

       106

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
     PRICE
----------
Tresemme Conditioner
       449

       110
Lakme Kajal
       299


7 rows selected.


SQL> SELECT Product_ID, Product_Name, Price
  2  FROM PurplleProduct
  3  WHERE Price BETWEEN 100 AND 300;

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
     PRICE
----------
       108
Nivea Body Lotion
       299

       110
Lakme Kajal
       299

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
     PRICE
----------


SQL> SELECT
  2       Product_ID,
  3       Product_Name,
  4       Price
  5  FROM purplleProduct
  6  ORDER BY Price DESC;

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
     PRICE
----------
       102
Maybelline Lipstick
       749

       101
Lakme Foundation
       699

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
     PRICE
----------

       104
Minimalist Serum
       699

       107
Fogg Perfume

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
     PRICE
----------
       599

       106
Tresemme Conditioner
       449

       105

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
     PRICE
----------
Loreal Shampoo
       399

       109
Dove Body Wash
       349


PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
     PRICE
----------
       103
Mamaearth Face Wash
       349

       108
Nivea Body Lotion
       299

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
     PRICE
----------

       110
Lakme Kajal
       299


10 rows selected.

SQL> SELECT
  2      c.Customer_ID,
  3      c.First_Name,
  4      o.Order_ID,
  5      o.Order_Date,
  6      o.Total_Amount
  7  FROM Customer5 c
  8  JOIN Orders o
  9      ON c.Customer_ID = o.Customer_ID
 10  ORDER BY o.Order_Date DESC;

CUSTOMER_ID FIRST_NAME                                           ORDER_ID
----------- -------------------------------------------------- ----------
ORDER_DAT TOTAL_AMOUNT
--------- ------------
        105 Sneha                                                     505
26-SEP-26         1599

        104 Rahul                                                     504
26-SEP-26          799

        103 Arun                                                      503
26-SEP-26         1299


CUSTOMER_ID FIRST_NAME                                           ORDER_ID
----------- -------------------------------------------------- ----------
ORDER_DAT TOTAL_AMOUNT
--------- ------------
        102 Priya                                                     502
26-SEP-26          749

        101 Nikitha                                                   501
20-SEP-26         1699

SQL> SELECT
  2      od.Order_ID,
  3      od.Product_ID,
  4      od.Quantity,
  5      od.Unit_Price,
  6      (od.Quantity * od.Unit_Price) AS Subtotal
  7  FROM Order_Details od
  8  ORDER BY Subtotal DESC;

  ORDER_ID PRODUCT_ID   QUANTITY UNIT_PRICE   SUBTOTAL
---------- ---------- ---------- ---------- ----------
       501        101          3        799       2397
       505        105          2      799.5       1599
       503        103          2      649.5       1299
       504        104          1        799        799
       502        102          1        749        749

       SQL> SELECT
  2      c.Customer_ID,
  3      c.First_Name || ' ' || c.Last_Name AS Customer_Name,
  4      COUNT(o.Order_ID) AS Total_Orders
  5  FROM Customer5 c
  6  JOIN Orders o
  7      ON c.Customer_ID = o.Customer_ID
  8  GROUP BY c.Customer_ID, c.First_Name, c.Last_Name
  9  ORDER BY Total_Orders DESC;

CUSTOMER_ID
-----------
CUSTOMER_NAME
--------------------------------------------------------------------------------
TOTAL_ORDERS
------------
        101
Nikitha R
           1

        102
Priya Sharma
           1

CUSTOMER_ID
-----------
CUSTOMER_NAME
--------------------------------------------------------------------------------
TOTAL_ORDERS
------------

        105
Sneha Patel
           1

        104
Rahul Verma

CUSTOMER_ID
-----------
CUSTOMER_NAME
--------------------------------------------------------------------------------
TOTAL_ORDERS
------------
           1

        103
Arun Kumar
           1

SQL> SELECT
  2      c.Customer_ID,
  3      c.First_Name,
  4      SUM(o.Total_Amount) AS Total_Purchase
  5  FROM Customer5 c
  6  JOIN Orders o
  7      ON c.Customer_ID = o.Customer_ID
  8  GROUP BY c.Customer_ID, c.First_Name
  9  ORDER BY Total_Purchase DESC;

CUSTOMER_ID FIRST_NAME                                         TOTAL_PURCHASE
----------- -------------------------------------------------- --------------
        101 Nikitha                                                      1699
        105 Sneha                                                        1599
        103 Arun                                                         1299
        104 Rahul                                                         799
        102 Priya                                                         749

