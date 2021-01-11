CREATE TABLE usuario(
email VARCHAR(50),
nombre VARCHAR(20),
password VARCHAR(255),
PRIMARY KEY (email));

CREATE TABLE proyecto(
id SERIAL,
nombre VARCHAR(50),
descripcion text,
PRIMARY KEY (id));

CREATE TABLE participacion(
usuario_email VARCHAR REFERENCES usuario (email),
proyecto_id INTEGER REFERENCES proyecto (id),
PRIMARY KEY(usuario_email, proyecto_id));

INSERT INTO usuario(email, nombre, password) VALUES ('usuario1@gmail.com',
'Juan', '12345678');
INSERT INTO usuario(email, nombre, password) VALUES ('usuario2@gmail.com',
'Francisca', 'asdfghi');
INSERT INTO proyecto(nombre, descripcion) VALUES ('Proyecto1', 'Proyecto
secreto');
INSERT INTO proyecto(nombre, descripcion) VALUES ('Proyecto2', 'Proyecto
público');
INSERT INTO participacion(usuario_email, proyecto_id) values
('usuario1@gmail.com', 1);
INSERT INTO participacion(usuario_email, proyecto_id) values
('usuario1@gmail.com', 2);
INSERT INTO participacion(usuario_email, proyecto_id) values
('usuario2@gmail.com', 1);

SELECT * FROM usuario
INNER JOIN participacion ON email = usuario_email
INNER JOIN proyecto ON proyecto.id = participacion.proyecto_id;