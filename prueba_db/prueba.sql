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

CREATE TABLE facturas_total(
    id SERIAL PRIMARY KEY,
    subtotal INT,
    facturas_numero INT,
    FOREIGN KEY (facturas_numero) REFERENCES facturas(numero)
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
    categoria_id INT,
    FOREIGN KEY (categoria_id) REFERENCES categoria(id)
);

CREATE TABLE facturas_producto(
    id SERIAL PRIMARY KEY,
    cantidad_producto INT,
    facturas_numero INT,
    productos_id INT,
    FOREIGN KEY (facturas_numero) REFERENCES facturas(numero),
    FOREIGN KEY (productos_id) REFERENCES productos(id)
);

INSERT INTO usuario(id, rut, nombre, direccion)
VALUES  (1, 26555203-5, 'Juan', 'Vicuña mackenna'),
        (2, 26444203-4, 'Pedro', 'Vespucio 5478'),
        (3, 26333203-3, 'Maria', 'San Miguel 1692'),
        (4, 26222203-2, 'Tomas', 'Maipu 366'),
        (5, 26111203-1, 'Veronica', 'Santiago centro 2224');

