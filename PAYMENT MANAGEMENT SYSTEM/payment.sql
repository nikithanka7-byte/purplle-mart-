SQL> CREATE TABLE Payment (
  2      Payment_ID NUMBER PRIMARY KEY,
  3      Order_ID NUMBER NOT NULL,
  4      Payment_Mode VARCHAR2(20) NOT NULL,
  5      Payment_Date DATE NOT NULL,
  6      Payment_Amount NUMBER(10,2) NOT NULL,
  7      Payment_Status VARCHAR2(20) NOT NULL,
  8      FOREIGN KEY (Order_ID) REFERENCES Orders(Order_ID)
  9  );

Table created.

SQL> INSERT INTO Payment VALUES (701, 501, 'UPI', TO_DATE('20-09-2026','DD-MM-YYYY'), 1699.00, 'Successful');

1 row created.

SQL> INSERT INTO Payment VALUES (702, 502, 'CARD', TO_DATE('21-09-2026','DD-MM-YYYY'), 749.00, 'Successful');

1 row created.

SQL> INSERT INTO Payment VALUES (703, 503, 'COD', TO_DATE('22-09-2026','DD-MM-YYYY'), 1299.00, 'Successful');

1 row created.

SQL> INSERT INTO Payment VALUES (704, 504, 'UPI', TO_DATE('23-09-2026','DD-MM-YYYY'), 799.00, 'Failed');

1 row created.

SQL> INSERT INTO Payment VALUES (705, 505, 'CARD', TO_DATE('24-09-2026','DD-MM-YYYY'), 1599.00, 'Successful');

1 row created.

SQL> COMMIT;

Commit complete.

SQL> SELECT * FROM Payment;

PAYMENT_ID   ORDER_ID PAYMENT_MODE         PAYMENT_D PAYMENT_AMOUNT
---------- ---------- -------------------- --------- --------------
PAYMENT_STATUS
--------------------
       701        501 UPI                  20-SEP-26           1699
Successful

       702        502 CARD                 21-SEP-26            749
Successful

       703        503 COD                  22-SEP-26           1299
Successful


PAYMENT_ID   ORDER_ID PAYMENT_MODE         PAYMENT_D PAYMENT_AMOUNT
---------- ---------- -------------------- --------- --------------
PAYMENT_STATUS
--------------------
       704        504 UPI                  23-SEP-26            799
Failed

       705        505 CARD                 24-SEP-26           1599
Successful


SQL> SELECT * FROM Payment WHERE Payment_Status = 'Successful';

PAYMENT_ID   ORDER_ID PAYMENT_MODE         PAYMENT_D PAYMENT_AMOUNT
---------- ---------- -------------------- --------- --------------
PAYMENT_STATUS
--------------------
       701        501 UPI                  20-SEP-26           1699
Successful

       702        502 CARD                 21-SEP-26            749
Successful

       703        503 COD                  22-SEP-26           1299
Successful


PAYMENT_ID   ORDER_ID PAYMENT_MODE         PAYMENT_D PAYMENT_AMOUNT
---------- ---------- -------------------- --------- --------------
PAYMENT_STATUS
--------------------
       705        505 CARD                 24-SEP-26           1599
Successful


SQL> SELECT * FROM Payment WHERE Payment_Status = 'Failed';

PAYMENT_ID   ORDER_ID PAYMENT_MODE         PAYMENT_D PAYMENT_AMOUNT
---------- ---------- -------------------- --------- --------------
PAYMENT_STATUS
--------------------
       704        504 UPI                  23-SEP-26            799
Failed


SQL> UPDATE Payment SET Payment_Status = 'Successful' WHERE Payment_ID = 704;

1 row updated.

SQL> SELECT * FROM Payment WHERE Payment_ID = 704;

PAYMENT_ID   ORDER_ID PAYMENT_MODE         PAYMENT_D PAYMENT_AMOUNT
---------- ---------- -------------------- --------- --------------
PAYMENT_STATUS
--------------------
       704        504 UPI                  23-SEP-26            799
Successful


SQL> COMMIT;

Commit complete.

SQL> SELECT
  2       Payment_Mode,
  3       COUNT(*) AS Total_Transactions
  4  FROM Payment
  5  GROUP BY Payment_Mode;

PAYMENT_MODE         TOTAL_TRANSACTIONS
-------------------- ------------------
UPI                                   2
CARD                                  2
COD                                   1


SQL> SELECT
  2      Payment_Mode,
  3      SUM(Payment_Amount) AS Total_Amount
  4  FROM Payment
  5  WHERE Payment_Status = 'Successful'
  6  GROUP BY Payment_Mode;

PAYMENT_MODE         TOTAL_AMOUNT
-------------------- ------------
UPI                          2498
CARD                         2348
COD                          1299

SQL> SELECT
  2      P.Payment_ID,
  3      O.Order_ID,
  4      C.Customer_ID,
  5      C.First_Name || ' ' || C.Last_Name AS Customer_Name,
  6      P.Payment_Mode,
  7      P.Payment_Date,
  8      P.Payment_Amount,
  9      P.Payment_Status
 10  FROM Payment P
 11  JOIN Orders O
 12      ON P.Order_ID = O.Order_ID
 13  JOIN Customer5 C
 14      ON O.Customer_ID = C.Customer_ID
 15  ORDER BY P.Payment_Date DESC;

PAYMENT_ID   ORDER_ID CUSTOMER_ID
---------- ---------- -----------
CUSTOMER_NAME
--------------------------------------------------------------------------------
PAYMENT_MODE         PAYMENT_D PAYMENT_AMOUNT PAYMENT_STATUS
-------------------- --------- -------------- --------------------
       705        505         105
Sneha Patel
CARD                 24-SEP-26           1599 Successful

       704        504         104
Rahul Verma
UPI                  23-SEP-26            799 Successful

PAYMENT_ID   ORDER_ID CUSTOMER_ID
---------- ---------- -----------
CUSTOMER_NAME
--------------------------------------------------------------------------------
PAYMENT_MODE         PAYMENT_D PAYMENT_AMOUNT PAYMENT_STATUS
-------------------- --------- -------------- --------------------

       703        503         103
Arun Kumar
COD                  22-SEP-26           1299 Successful

       702        502         102
Priya Sharma

PAYMENT_ID   ORDER_ID CUSTOMER_ID
---------- ---------- -----------
CUSTOMER_NAME
--------------------------------------------------------------------------------
PAYMENT_MODE         PAYMENT_D PAYMENT_AMOUNT PAYMENT_STATUS
-------------------- --------- -------------- --------------------
CARD                 21-SEP-26            749 Successful

       701        501         101
Nikitha R
UPI                  20-SEP-26           1699 Successful