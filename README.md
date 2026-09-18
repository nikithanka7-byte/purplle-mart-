### 💄 Purplle Online Beauty Shopping Management System
The Purplle Online Beauty Shopping Management System is a Database Management System (DBMS) project that manages the online sale of beauty and personal care products. It stores and organizes customer details, product information, orders, payments, inventory, and delivery records in a database, making the shopping process efficient, secure, and easy to manage.



A **Database Management System (DBMS)** mini project that models the database design for an online beauty shopping platform similar to **Purplle**. The project focuses on requirement analysis, database design, entity identification, relationships, and relational database modeling for an e-commerce system.

---

## 📖 Project Description

The **Purplle Online Beauty Shopping Management System** is designed to manage the complete workflow of an online beauty store. It provides a structured database for managing customers, beauty products, categories, shopping carts, orders, payments, deliveries, and administrative operations.

This project demonstrates the application of **Database Management System (DBMS)** concepts in designing a real-world e-commerce database.

---

# 📅 Week 1 – Requirement Analysis

### 📌 Topics Covered

- Project Introduction
- Objectives
- Key Objectives
- Motive of the Project
- Problem Statement
- Business Requirements
- Functional Requirements
- Non-Functional Requirements
- Stakeholders
- Conclusion

### 📚 Learning Outcomes

- Understood business requirements of an online beauty shopping platform.
- Identified system requirements.
- Defined project objectives and scope.
- Analyzed stakeholders.
- Documented functional and non-functional requirements.

---

# 📅 Week 2 – Entity Analysis

### 📌 Topics Covered

- Entity Identification
- Attribute Identification
- Primary Keys (PK)
- Foreign Keys (FK)
- Entity Relationships
- Cardinality
- Database Design

### 📊 Entities Identified

- Customer
- Category
- Product
- Cart
- Orders
- Order Details
- Payment
- Delivery
- Admin

### 🔗 Relationships

- Customer → Orders
- Customer → Cart
- Category → Product
- Cart → Product
- Orders → Order Details
- Product → Order Details
- Orders → Payment
- Orders → Delivery
- Admin → Product

### 📚 Learning Outcomes

- Identified entities and attributes.
- Defined Primary Keys and Foreign Keys.
- Established relationships between entities.
- Designed a relational database structure.
- Prepared the foundation for ER Diagram and database implementation.


## 🎯 Project Objectives

- Design an efficient relational database.
- Manage customer and product information.
- Process orders and payments.
- Maintain inventory records.
- Track deliveries.
- Improve data consistency and integrity.

---

## ✨ Features

- Customer Management
- Product Management
- Category Management
- Shopping Cart
- Order Processing
- Payment Management
- Delivery Tracking
- Admin Management
- Inventory Management


---

# 📅 Week 3 – Entity Relationship (ER) Diagrams

## 📌 Objective

Design the Entity Relationship (ER) diagrams for the Purplle Online Beauty Shopping Management System by identifying entities, attributes, primary keys, foreign keys, and relationships.

### 📚 Topics Covered

- ER Diagram Design
- Entity Identification
- Attributes
- Primary Keys (PK)
- Foreign Keys (FK)
- Relationships
- Cardinality
- Overall ER Diagram

### 🗂 Entities

- Customer
- Category
- Brand
- Seller
- Product
- Product Variant
- Cart
- Cart Item
- Wishlist
- Wishlist Item
- Coupon
- Orders
- Order Details
- Payment
- Delivery
- Review
- Admin

### 🔗 Relationships

- Customer → Orders
- Customer → Cart
- Customer → Wishlist
- Customer → Review
- Category → Product
- Brand → Product
- Seller → Product
- Product → Product Variant
- Cart → Cart Item
- Wishlist → Wishlist Item
- Orders → Order Details
- Product Variant → Order Details
- Seller → Order Details
- Coupon → Orders
- Orders → Payment
- Orders → Delivery
- Product → Review
- Admin → Product

### 📚 Learning Outcomes

- Identified all entities and their attributes.
- Designed ER diagrams for each entity.
- Established relationships between entities.
- Applied cardinality constraints.
- Developed the overall ER diagram for the system.

---
# 📅 Week 4 – Functional Dependencies, Redundancy & Data Anomalies

## 📌 Objective

Analyze the functional dependencies of the Purplle Online Beauty Shopping Management System and identify data redundancy and database anomalies to improve the database design and maintain data integrity.

---

## 📚 Topics Covered

- Functional Dependencies
- Primary Keys
- Candidate Keys
- Unique Keys
- Data Redundancy Analysis
- Insertion Anomalies
- Update Anomalies
- Deletion Anomalies
- Database Consistency

---

## 📊 Tables Analyzed

- Customer
- Category
- Brand
- Seller
- Product
- Product Variant
- Cart
- Cart Item
- Wishlist
- Wishlist Item
- Coupon
- Orders
- Order Details
- Payment
- Delivery
- Review
- Admin

---

## 🎯 Learning Outcomes

- Identified functional dependencies for all database tables.
- Analyzed redundant data and methods to reduce duplication.
- Identified insertion, update, and deletion anomalies.
- Improved database consistency and integrity.
- Prepared the database for normalization and implementation.

---
# 📅 Week 5 – CRUD Operations
---

## 📌 Objective

To implement the basic **CRUD (Create, Read, Update, Delete)** operations using SQL on the Customer table of the Purplle Online Beauty Shopping Management System. This helps in managing customer information efficiently and demonstrates the core database operations.

---

## 📚 Topics Covered

- CREATE TABLE
- INSERT Records
- SELECT Queries
- UPDATE Queries
- DELETE Queries
- SQL Constraints
- COMMIT Transaction

---

## 🛠 CRUD Operations Performed

### ✅ Create (C)
- Created the **Customer** table.
- Applied constraints such as:
  - Primary Key
  - Unique Key
  - NOT NULL
  - CHECK Constraint

### ✅ Read (R)
- Displayed all customer records.
- Retrieved single and multiple customer records using SELECT queries.

### ✅ Update (U)
- Updated customer details such as:
  - Phone Number
  - City

### ✅ Delete (D)
- Deleted customer records using the DELETE statement.
- Removed records based on Customer ID.

---

## 🗄 Table Used

**Customer**

### Attributes
- Customer_ID
- First_Name
- Last_Name
- Gender
- Email
- Phone
- Address
- City
- State
- Pincode

---

## 🎯 Learning Outcomes

- Created a database table using SQL.
- Inserted multiple records into the table.
- Retrieved data using SELECT queries.
- Updated existing records using UPDATE.
- Deleted records using DELETE.
- Applied SQL constraints to maintain data integrity.
- Understood the implementation of CRUD operations in a relational database.

---

## 🛠 Technologies Used

- Oracle SQL Plus
- SQL
- DBMS
- Visual Studio Code

---

## 📂 Repository Structure

```
Week-5-CRUD-Operations/
│
├── README.md
├── Create_Table.sql
├── Insert_Records.sql
├── Select_Queries.sql
├── Update_Queries.sql
└── Delete_Queries.sql
```


## WEEK 6 – PRODUCT AND CATEGORY MANAGEMENT SYSTEM

The Purplle Online Beauty Shopping Database Management System is designed to efficiently manage product and category information.

The system uses two related tables, **Category** and **PurplleProduct**, to store and organize beauty product details. Primary Key and Foreign Key constraints are used to maintain data integrity.

SQL operations such as **INSERT, UPDATE, DELETE, and SELECT** are performed on the product data. Category-wise product reports are generated to analyze the products and stock available under each category.

---

## 2. Objectives

- Design tables for Product and Category.
- Define Primary Key and Foreign Key relationships.
- Store product name, category, price, and stock.
- Perform product insertion, updating, and deletion.
- Generate category-wise product reports.
- Maintain data integrity using constraints.

---

## 3. Table Design

### 3.1 Category Table

| Attribute | Data Type | Key | Description |
|-----------|-----------|-----|-------------|
| Category_ID | INT | PK | Unique category ID |
| Category_Name | VARCHAR2(100) | UNIQUE | Name of the category |
| Description | VARCHAR2(255) | - | Category description |

### 3.2 PurplleProduct Table

| Attribute | Data Type | Key | Description |
|-----------|-----------|-----|-------------|
| Product_ID | INT | PK | Unique product ID |
| Product_Name | VARCHAR2(100) | - | Name of the product |
| Category_ID | INT | FK | References Category |
| Brand_ID | INT | - | Brand identifier |
| Seller_ID | INT | - | Seller identifier |
| Admin_ID | INT | - | Admin identifier |
| Description | VARCHAR2(255) | - | Product description |
| Expiry_Date | DATE | - | Product expiry date |
| Price | NUMBER(10,2) | - | Product price |
| Stock | INT | - | Available stock |

---

## 4. Primary and Foreign Key Relationship

### Category → PurplleProduct

- `Category.Category_ID` → Primary Key
- `PurplleProduct.Product_ID` → Primary Key
- `PurplleProduct.Category_ID` → Foreign Key
- `PurplleProduct.Category_ID` references `Category.Category_ID`
- Relationship: **One-to-Many (1:M)**

### Relationship

```text
CATEGORY (1) ─────────── (M) PURPLLEPRODUCT

Category_ID (PK)  →  Category_ID (FK)


# **WEEK 7 – SELLER AND INVENTORY MANAGEMENT SYSTEM**

## **1. Introduction**

The **Purplle Online Beauty Shopping Database Management System** is designed to efficiently manage **seller, product, and inventory information**.

This week focuses on creating and managing the **Seller** and **Inventory** tables along with the existing **PurplleProduct** table. **Primary Key** and **Foreign Key** constraints are used to maintain data integrity and establish relationships between sellers, products, and inventory.

SQL operations such as **INSERT, UPDATE, and SELECT** are used to manage seller and inventory information. Inventory reports are generated to monitor **stock levels** and identify **available and unavailable products**.

---

## **2. Objectives**

* Create **Seller** and **Inventory** tables.
* Define **Primary Key** and **Foreign Key** constraints.
* Establish relationships between **sellers, products, and inventory**.
* Maintain **seller and product information**.
* Track **product stock quantities**.
* Identify **available and unavailable products**.
* Perform **INSERT, UPDATE, and SELECT** operations.
* Generate **inventory status reports**.
* Maintain **data integrity using constraints**.

---

## **3. Table Design**

### **3.1 Seller Table**

| **Attribute**         | **Data Type** | **Key**    | **Description**           |
| --------------------- | ------------- | ---------- | ------------------------- |
| **Seller_ID**         | NUMBER        | **PK**     | Unique seller ID          |
| **Seller_Name**       | VARCHAR2(100) | -          | Name of the seller        |
| **Email**             | VARCHAR2(100) | **UNIQUE** | Seller email address      |
| **Phone**             | VARCHAR2(15)  | -          | Seller contact number     |
| **GSTIN**             | VARCHAR2(20)  | **UNIQUE** | Seller GST identification |
| **Warehouse_Address** | VARCHAR2(255) | -          | Seller warehouse address  |
| **Rating**            | NUMBER(3,2)   | -          | Seller rating             |

### **3.2 Inventory Table**

| **Attribute**      | **Data Type** | **Key** | **Description**               |
| ------------------ | ------------- | ------- | ----------------------------- |
| **Inventory_ID**   | NUMBER        | **PK**  | Unique inventory ID           |
| **Product_ID**     | NUMBER        | **FK**  | References **PurplleProduct** |
| **Seller_ID**      | NUMBER        | **FK**  | References **Seller**         |
| **Stock_Quantity** | NUMBER        | -       | Available product quantity    |
| **Product_Status** | VARCHAR2(20)  | -       | Available or Unavailable      |
| **Last_Updated**   | DATE          | -       | Last inventory update date    |

---

## **4. Primary and Foreign Key Relationship**

### **Seller → Inventory**

* `Seller.Seller_ID` is the **Primary Key**.
* `Inventory.Inventory_ID` is the **Primary Key**.
* `Inventory.Seller_ID` is a **Foreign Key**.
* `Inventory.Seller_ID` references `Seller.Seller_ID`.
* Relationship: **One-to-Many (1:M)**.

### **PurplleProduct → Inventory**

* `PurplleProduct.Product_ID` is the **Primary Key**.
* `Inventory.Product_ID` is a **Foreign Key**.
* `Inventory.Product_ID` references `PurplleProduct.Product_ID`.

### **Relationship Diagram**

```text
SELLER (1)
     |
     | Seller_ID (PK)
     |
     ↓
INVENTORY (M)
     |
     | Product_ID (FK)
     |
     ↓
PURPLLEPRODUCT (1)
```

---

## **9. SQL Operations Covered**

| **Operation** | **Purpose**                                 |
| ------------- | ------------------------------------------- |
| **INSERT**    | Add seller and inventory records            |
| **UPDATE**    | Modify stock and product status             |
| **DELETE**    | Remove inventory records                    |
| **SELECT**    | Retrieve seller and inventory information   |
| **JOIN**      | Combine seller, product, and inventory data |
| **GROUP BY**  | Generate inventory summary reports          |
| **SUM()**     | Calculate total stock                       |
| **COUNT()**   | Count available/unavailable products        |

---

## **10. Result**

The **Seller and Inventory Management System** successfully maintains **seller-product information**, tracks **stock quantities**, identifies **available and unavailable products**, and generates **inventory status reports**.

---






