CREATE DATABASE sqlbasics1;
USE sqlbasics;
CREATE TABLE product1(
 p_code varchar(45) NOT NULL,
 p_name varchar(45) NOT NULL,
 stock varchar(45) NOT NULL,
 price INT NOT NULL,
 category varchar(45) NOT NULL,
 PRIMARY KEY(p_code));