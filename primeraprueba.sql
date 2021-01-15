DROP DATABASE IF EXISTS prueba;

CREATE DATABASE prueba;

\c prueba;

CREATE TABLE clientes(
    id SERIAL PRIMARY KEY,
    rut VARCHAR(10),
    nombre VARCHAR(25),
    direccion VARCHAR(50)
);

CREATE TABLE facturas(
    numero INT PRIMARY KEY,
    fecha DATE,
    subtotal INT,
    iva INT,
    total INT,
    cliente_id INT,
    FOREIGN KEY (cliente_id) REFERENCES clientes(id)
);

CREATE TABLE categoria(
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(25),
    descripcion VARCHAR(255)
);

CREATE TABLE productos(
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(25),
    precio_unitario INT,
    descripcion VARCHAR(255),
    categoria_id SERIAL,
    FOREIGN KEY (categoria_id) REFERENCES categoria(id)
);

CREATE TABLE facturas_producto(
    id SERIAL PRIMARY KEY,
    cantidad_producto INT,
    factura_numero INT,
    productos_id INT,
    FOREIGN KEY (facturas_numero) REFERENCES facturas(numero),
    FOREIGN KEY (productos_id) REFERENCES productos(id)
);

INSERT INTO clientes(id, rut, nombre, direccion)
VALUES  (26555203-5, 'Juan', 'Vicuña mackenna'),
        (26444203-4, 'Pedro', 'Vespucio 5478'),
        (26333203-3, 'Maria', 'San Miguel 1692'),
        (26222203-2, 'Tomas', 'Maipu 366'),
        (26111203-1, 'Veronica', 'Santiago centro 2224');

INSERT INTO facturas(numero, fecha, subtotal, iva, total, cliente_id)
VALUES  (210, '2021-03-02', 420, 80, 500, 1),
        (201, '2021-03-03', 1597, 303, 1900, 1),
        (202, '2021-03-04', 1597, 303, 1900, 2),
        (203, '2021-03-05', 420, 80, 500, 2),
        (204, '2021-03-06', 1597, 303, 1900, 2),
        (205, '2021-03-07', 672, 128, 800, 3),
        (206, '2021-03-08', 420, 80, 500, 5),
        (207, '2021-03-09', 1597, 303, 1900,5),
        (208, '2021-03-10', 1933, 367, 2300, 5),
        (209, '2021-03-11', 672, 128, 800, 5);

INSERT INTO productos(id, nombre, precio_unitario, descripcion, categoria_id)
VALUES  ('Tomate', 300, 'Para hacer ensalada'),
        ('Lechuga', 200, 'Base de ensalada'),
        ('Pepino', 500, 'Ensalada y cuidado de la piel'),
        ('Jamon', 800, 'Proteina'),
        ('Zanahoria', 600, 'En cubitos para cocinar'),
        ('Papa', 400, 'Cocinadas con sal'),
        ('Maiz', 700, 'Cocinado desgranado'),
        ('Mayonesa', 900, 'Aderezo de ensalada');

INSERT INTO categoria(id, nombre, descripcion)
VALUES  ('Frutas y Verduras', 'Verdurelia en general muy fresca'),
        ('Proteina', 'Charcuteria en general'),
        ('Aderezos', 'Todo tipo de aderezos y salsas');

--INSERT INTO facturas_producto(id, cantidad_producto, facturas_numero, productos_id)
--VALUES  (2, 200, 6),
  --      (3, 201, 8),
    --    (3, 202, 8),
      --  (2, 203, 6),
        --(3, 204, 8),
        --(1, 205, 9),
        --(2, 206, 6),
        --(3, 207, 8),
        --(4, 208, 11),
        --(1, 209, 9);


SELECT * FROM clientes;

SELECT * FROM facturas;

SELECT * FROM productos;

SELECT * FROM categoria;

SELECT * FROM facturas_producto;
