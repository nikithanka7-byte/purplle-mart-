SQL> CREATE TABLE Inventory (
  2      Inventory_ID NUMBER PRIMARY KEY,
  3      Product_ID NUMBER NOT NULL,
  4      Seller_ID NUMBER NOT NULL,
  5      Stock_Quantity NUMBER NOT NULL CHECK (Stock_Quantity >= 0),
  6      Product_Status VARCHAR2(20),
  7      Last_Updated DATE,
  8      FOREIGN KEY (Product_ID) REFERENCES PurplleProduct(Product_ID),
  9      FOREIGN KEY (Seller_ID) REFERENCES Seller(Seller_ID)
 10  );

Table created.

SQL> INSERT INTO Inventory VALUES (1, 101, 301, 50, 'Available', SYSDATE);

1 row created.

SQL> INSERT INTO Inventory VALUES (2, 102, 302, 75, 'Available', SYSDATE);

1 row created.

SQL> INSERT INTO Inventory VALUES (3, 103, 303, 60, 'Available', SYSDATE);

1 row created.

SQL> INSERT INTO Inventory VALUES (4, 104, 304, 40, 'Available', SYSDATE);

1 row created.

SQL> INSERT INTO Inventory VALUES (5, 105, 305, 80, 'Available', SYSDATE);

1 row created.

SQL> INSERT INTO Inventory VALUES (6, 106, 306, 55, 'Available', SYSDATE);

1 row created.

SQL> INSERT INTO Inventory VALUES (7, 107, 307, 35, 'Available', SYSDATE);

1 row created.

SQL> INSERT INTO Inventory VALUES (8, 108, 308, 30, 'Available', SYSDATE);

1 row created.

SQL> INSERT INTO Inventory VALUES (9, 109, 309, 90, 'Available', SYSDATE);

1 row created.

SQL> INSERT INTO Inventory VALUES (10, 110, 310, 65, 'Available', SYSDATE);

1 row created.

SQL> COMMIT;

Commit complete.

SQL> SELECT * FROM Inventory;

INVENTORY_ID PRODUCT_ID  SELLER_ID STOCK_QUANTITY PRODUCT_STATUS       LAST_UPDA
------------ ---------- ---------- -------------- -------------------- ---------
           1        101        301             50 Available            17-SEP-26
           2        102        302             75 Available            17-SEP-26
           3        103        303             60 Available            17-SEP-26
           4        104        304             40 Available            17-SEP-26
           5        105        305             80 Available            17-SEP-26
           6        106        306             55 Available            17-SEP-26
           7        107        307             35 Available            17-SEP-26
           8        108        308             30 Available            17-SEP-26
           9        109        309             90 Available            17-SEP-26
          10        110        310             65 Available            17-SEP-26

10 rows selected.
SQL> UPDATE Inventory
  2  SET Stock_Quantity = 25,
  3      Product_Status = 'Available',
  4      Last_Updated = SYSDATE
  5  WHERE Inventory_ID = 1;

1 row updated.

SQL>
SQL> COMMIT;

Commit complete.

SQL> UPDATE Inventory
  2  SET Stock_Quantity = Stock_Quantity + 20,
  3      Last_Updated = SYSDATE
  4  WHERE Inventory_ID = 3;

1 row updated.

SQL>
SQL> COMMIT;

Commit complete.

SQL> SELECT * FROM Inventory;

INVENTORY_ID PRODUCT_ID  SELLER_ID STOCK_QUANTITY PRODUCT_STATUS       LAST_UPDA
------------ ---------- ---------- -------------- -------------------- ---------
           1        101        301             25 Available            17-SEP-26
           2        102        302             75 Available            17-SEP-26
           3        103        303             80 Available            17-SEP-26
           4        104        304             40 Available            17-SEP-26
           5        105        305             80 Available            17-SEP-26
           6        106        306             55 Available            17-SEP-26
           7        107        307             35 Available            17-SEP-26
           8        108        308             30 Available            17-SEP-26
           9        109        309             90 Available            17-SEP-26
          10        110        310             65 Available            17-SEP-26

10 rows selected.
