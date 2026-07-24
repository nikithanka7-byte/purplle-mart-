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

