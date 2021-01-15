CREATE TABLE clientes(
    id SERIAL PRIMARY KEY,
    nombre_cliente VARCHAR(25),
    rut VARCHAR(10),
    direccion VARCHAR(50)
);

CREATE TABLE categoria(
    id SERIAL PRIMARY KEY,
    nombre_categoria VARCHAR(25),
    descripcion VARCHAR(50)
);

CREATE TABLE productos(
    id SERIAL PRIMARY KEY,
    nombre_productos VARCHAR(25),
    descripcion VARCHAR(50),
    valor_unitario INT,
    id_categoria SERIAL,
    FOREIGN KEY (id_categoria) REFERENCES categoria(id)
);

CREATE TABLE facturas(
    numero_factura INT PRIMARY KEY,
    fecha DATE,
    cantidad_productos INT,
    subtotal INT,
    iva INT,
    total INT,
    cliente_id SERIAL,
    FOREIGN KEY (cliente_id) REFERENCES clientes(id)
);

INSERT INTO clientes(id, nombre_cliente, rut, direccion)
VALUES  (1, 'Juan', 26555203-5, 'Vicuña mackenna'),
        (2, 'Pedro', 26444203-4, 'Vespucio 5478'),
        (3, 'Maria', 26333203-3, 'San Miguel 1692'),
        (4, 'Tomas', 26222203-2, 'Maipu 366'),
        (5, 'Veronica', 26111203-1, 'Santiago centro 2224');

INSERT INTO categoria(id, nombre_categoria, descripcion)
VALUES  (10, 'Frutas y Verduras', 'Verdurelia en general muy fresca'),
        (20, 'Proteina', 'Charcuteria en general'),
        (30, 'Aderezos', 'Todo tipo de aderezos y salsas');

INSERT INTO productos(id, nombre_productos, descripcion, valor_unitario, id_categoria)
VALUES  (11, 'Tomate', 'Para hacer ensalada', 300, 10),
        (12, 'Lechuga', 'Base de ensalada', 200, 10),
        (13, 'Pepino', 'Ensalada y cuidado de la piel', 500, 10),
        (21, 'Jamon', 'Proteina', 800, 20),
        (14, 'Zanahoria', 'En cubitos para cocinar', 600, 10),
        (15, 'Papa', 'Cocinadas con sal', 400, 10),
        (16, 'Maiz', 'Cocinado desgranado', 700, 10),
        (31, 'Mayonesa', 'Aderezo de ensalada', 900, 30);

INSERT INTO facturas(numero_factura, fecha, cantidad_productos, subtotal, iva, total, cliente_id)
VALUES  (210, '2021-03-02', 2, 420, 80, 500, 1),
        (201, '2021-03-03', 3, 1597, 303, 1900, 1),
        (202, '2021-03-04', 3, 1597, 303, 1900, 2),
        (203, '2021-03-05', 2, 420, 80, 500, 2),
        (204, '2021-03-06', 3, 1597, 303, 1900, 2),
        (205, '2021-03-07', 1, 672, 128, 800, 3),
        (206, '2021-03-08', 2, 420, 80, 500, 4),
        (207, '2021-03-09', 3, 1597, 303, 1900, 4),
        (208, '2021-03-10', 4, 1933, 367, 2300, 4),
        (209, '2021-03-11', 1, 672, 128, 800, 4);

SELECT * FROM clientes;

SELECT * FROM categoria;

SELECT * FROM productos;

SELECT * FROM facturas;
