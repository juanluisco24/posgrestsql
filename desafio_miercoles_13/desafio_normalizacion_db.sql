DROP DATABASE IF EXISTS normalizacion;

CREATE DATABASE normalizacion;

\c normalizacion;

CREATE  TABLE books(
    code INT PRIMARY KEY NOT NULL,
    title VARCHAR(255)
);

CREATE TABLE authors(
    id SERIAL PRIMARY KEY,
    name VARCHAR(50)
);

CREATE TABLE books_authors(
    id SERIAL PRIMARY KEY,
    book_code INT,
    author_id INT,
    FOREIGN KEY (book_code) REFERENCES books(code),
    FOREIGN KEY (author_id) REFERENCES authors(id)
);

CREATE TABLE publishers(
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(50)
);

CREATE TABLE books_publishers(
    id SERIAL PRIMARY KEY,
    book_code INT,
    publisher_id INT,
    FOREIGN KEY (book_code) REFERENCES books(code),
    FOREIGN KEY (publisher_id) REFERENCES publishers(id)
);

CREATE TABLE readers(
    rut VARCHAR(10) NOT NULL PRIMARY KEY,
    first_name VARCHAR(50),
    last_name1 VARCHAR(50),
    last_name2 VARCHAR(50)
);

CREATE TABLE loans(
    id SERIAL PRIMARY KEY,
    returning_date DATE,
    reader_rut VARCHAR(10),
    book_code INT,
    FOREIGN KEY (book_code) REFERENCES books(code),
    FOREIGN KEY (reader_rut) REFERENCES readers(rut)
);