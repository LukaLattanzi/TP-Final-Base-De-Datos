CREATE DATABASE FlashcookieDatabase;

USE FlashcookieDatabase;

-- Tabla Clientes
CREATE TABLE Clientes (
    id INT PRIMARY KEY AUTO_INCREMENT,
    correo_electronico VARCHAR(255) NOT NULL UNIQUE,
    nombre_cliente VARCHAR(255) NOT NULL,
    ultima_actividad TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Insertar Clientes
INSERT INTO Clientes (correo_electronico, nombre_cliente)
VALUES ('james@silenthill.com', 'James Sunderland');

INSERT INTO Clientes (correo_electronico, nombre_cliente)
VALUES ('heather@silenthill.com', 'Heather Mason');

INSERT INTO Clientes (correo_electronico, nombre_cliente)
VALUES ('atreus@godofwar.com', 'Atreus');

INSERT INTO Clientes (correo_electronico, nombre_cliente)
VALUES ('freya@godofwar.com', 'Freya');

INSERT INTO Clientes (correo_electronico, nombre_cliente)
VALUES ('otacon@metalgear.com', 'Hal Emmerich');

INSERT INTO Clientes (correo_electronico, nombre_cliente)
VALUES ('meryl@metalgear.com', 'Meryl Silverburgh');

INSERT INTO Clientes (correo_electronico, nombre_cliente)
VALUES ('chris@residentevil.com', 'Chris Redfield');

INSERT INTO Clientes (correo_electronico, nombre_cliente)
VALUES ('leon@residentevil.com', 'Leon S. Kennedy');

INSERT INTO Clientes (correo_electronico, nombre_cliente)
VALUES ('luigi@supermario.com', 'Luigi');

INSERT INTO Clientes (correo_electronico, nombre_cliente)
VALUES ('peach@supermario.com', 'Princess Peach');

-- Tabla Artistas
CREATE TABLE Artistas (
    id INT PRIMARY KEY AUTO_INCREMENT,
    correo_electronico VARCHAR(255) NOT NULL UNIQUE,
    nombre_artista VARCHAR(255) NOT NULL,
    nombre_tienda VARCHAR(255) NOT NULL UNIQUE 
);

-- Insertar Artistas
INSERT INTO 
    Artistas (correo_electronico, nombre_artista, nombre_tienda) 
VALUES 
    ('pyramidhead@silenthill.com', 'Pyramid Head', 'Silent Creations'),
    ('kratos@godofwar.com', 'Kratos', 'Olympus Artworks'),
    ('snake@metalgear.com', 'Solid Snake', 'Stealth Designs'),
    ('jill@residentevil.com', 'Jill Valentine', 'Raccoon Art'),
    ('mario@supermario.com', 'Mario', 'Mushroom Kingdom Crafts');
    
-- Tabla Redes Sociales
CREATE TABLE Redes_Sociales (
    id INT PRIMARY KEY AUTO_INCREMENT,
    plataforma VARCHAR(255) NOT NULL,
    url VARCHAR(255) NOT NULL
);

-- Insertar Redes Sociales
INSERT INTO 
    Redes_Sociales (plataforma, url) 
VALUES 
    ('Instagram', 'https://instagram.com/pyramidhead'),
    ('Twitter', 'https://twitter.com/pyramidhead'),
    ('Instagram', 'https://instagram.com/kratos'),
    ('Facebook', 'https://facebook.com/kratos'),
    ('Twitter', 'https://twitter.com/solidsnake'),
    ('YouTube', 'https://youtube.com/solidsnake'),
    ('Instagram', 'https://instagram.com/jillvalentine'),
    ('Twitter', 'https://twitter.com/jillvalentine'),
    ('Facebook', 'https://facebook.com/mario'),
    ('Instagram', 'https://instagram.com/mario');

-- Tabla Artistas - Redes Sociales
CREATE TABLE Artista_Redes_Sociales (
    artista_id INT NOT NULL,
    red_social_id INT NOT NULL,
    PRIMARY KEY (artista_id, red_social_id),
    FOREIGN KEY (artista_id) REFERENCES Artistas(id),
    FOREIGN KEY (red_social_id) REFERENCES Redes_Sociales(id)
);

-- Enlazar Artistas Con Sus Redes Sociales
INSERT INTO 
    Artista_Redes_Sociales (artista_id, red_social_id) 
VALUES
    (1, 1),  -- Pyramid Head - Instagram
    (1, 2),  -- Pyramid Head - Twitter
    (2, 3),  -- Kratos - Instagram
    (2, 4),  -- Kratos - Facebook
    (3, 5),  -- Solid Snake - Twitter
    (3, 6),  -- Solid Snake - YouTube
    (4, 7),  -- Jill Valentine - Instagram
    (4, 8),  -- Jill Valentine - Twitter
    (5, 9),  -- Mario - Facebook
    (5, 10); -- Mario - Instagram

-- Tabla Diseños
CREATE TABLE Diseños (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(255) NOT NULL,
    descripcion TEXT NOT NULL,
    fecha_publicacion DATETIME DEFAULT CURRENT_TIMESTAMP,
    artista_id INT NOT NULL,
    FOREIGN KEY (artista_id) REFERENCES Artistas(id)
);

-- Diseños De Pyramid Head (Artista ID: 1)
INSERT INTO Diseños (nombre, descripcion, artista_id)
VALUES ('Ecos del Horror', 'Una oscura visión desde las profundidades de Silent Hill.', 1);

INSERT INTO Diseños (nombre, descripcion, artista_id)
VALUES ('Nieblas de Desesperación', 'Captura la esencia de la desesperación en un mundo envuelto en niebla.', 1);

INSERT INTO Diseños (nombre, descripcion, artista_id)
VALUES ('La Sombra del Triángulo', 'La presencia imponente de Pyramid Head en su forma más aterradora.', 1);

-- Diseños De Kratos (Artista ID: 2)
INSERT INTO Diseños (nombre, descripcion, artista_id)
VALUES ('Furia de los Dioses', 'Kratos desata su furia contra los dioses del Olimpo.', 2);

INSERT INTO Diseños (nombre, descripcion, artista_id)
VALUES ('Espíritu de Esparta', 'La determinación inquebrantable de un guerrero espartano.', 2);

INSERT INTO Diseños (nombre, descripcion, artista_id)
VALUES ('Venganza Divina', 'El viaje de Kratos para vengar a su familia y desafiar a los dioses.', 2);

INSERT INTO Diseños (nombre, descripcion, artista_id)
VALUES ('Héroe Caído', 'La lucha interna de Kratos entre su humanidad y su destino.', 2);

-- Diseños De Solid Snake (Artista ID: 3)
INSERT INTO Diseños (nombre, descripcion, artista_id)
VALUES ('Operación Encubierta', 'Solid Snake en una misión de infiltración de alto riesgo.', 3);

INSERT INTO Diseños (nombre, descripcion, artista_id)
VALUES ('Sombra de la Leyenda', 'El sigiloso héroe en su lucha contra amenazas globales.', 3);

-- Diseños De Jill Valentine (Artista ID: 4)
INSERT INTO Diseños (nombre, descripcion, artista_id)
VALUES ('Rescate en Raccoon City', 'Jill Valentine enfrentando el horror zombi en Raccoon City.', 4);

INSERT INTO Diseños (nombre, descripcion, artista_id)
VALUES ('Superviviente del Apocalipsis', 'La valentía y determinación de Jill en un mundo devastado.', 4);

INSERT INTO Diseños (nombre, descripcion, artista_id)
VALUES ('Última Esperanza', 'Jill liderando la lucha por la supervivencia contra el virus T.', 4);

-- Diseños De Mario (Artista ID: 5)
INSERT INTO Diseños (nombre, descripcion, artista_id)
VALUES ('Aventuras en el Reino Champiñón', 'Mario explorando los coloridos paisajes del Reino Champiñón.', 5);

INSERT INTO Diseños (nombre, descripcion, artista_id)
VALUES ('Salto hacia la Aventura', 'Un dinámico retrato de Mario en plena acción.', 5);

INSERT INTO Diseños (nombre, descripcion, artista_id)
VALUES ('Rescate de la Princesa', 'La misión de Mario para salvar a la Princesa Peach de Bowser.', 5);

INSERT INTO Diseños (nombre, descripcion, artista_id)
VALUES ('Fiesta de Estrellas', 'Mario y sus amigos celebrando en una fiesta estelar.', 5);

INSERT INTO Diseños (nombre, descripcion, artista_id)
VALUES ('Carreras en Kart', 'La emoción de Mario y sus amigos en intensas carreras de karts.', 5);

INSERT INTO Diseños (nombre, descripcion, artista_id)
VALUES ('Salvando el Día', 'Mario derrotando a Bowser para restaurar la paz en el Reino Champiñón.', 5);

-- Tabla Tags
CREATE TABLE Tags (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(255) NOT NULL
);

-- Insertar Tags
INSERT INTO 
    Tags (nombre) 
VALUES 
    ('Terror'),
    ('Videojuego'),
    ('Arte Digital'),
    ('Acción'),
    ('Aventura'),
    ('Clásico'),
    ('Survival Horror'),
    ('Retro');

-- Tabla Diseños - Tags
CREATE TABLE DiseñosTags (
    diseño_id INT NOT NULL,
    tag_id INT NOT NULL,
    PRIMARY KEY (diseño_id, tag_id),
    FOREIGN KEY (diseño_id) REFERENCES Diseños(id),
    FOREIGN KEY (tag_id) REFERENCES Tags(id)
);

-- Asignar Tags A Los Diseños De Pyramid Head (Artista ID: 1)
INSERT INTO 
    DiseñosTags (diseño_id, tag_id) 
VALUES
    (1, 1), -- Ecos del Horror - Terror
    (1, 7), -- Ecos del Horror - Survival Horror
    (2, 1), -- Nieblas de Desesperación - Terror
    (2, 7), -- Nieblas de Desesperación - Survival Horror
    (3, 1), -- La Sombra del Triángulo - Terror
    (3, 7); -- La Sombra del Triángulo - Survival Horror

-- Asignar Tags A Los Diseños De Kratos (Artista ID: 2)
INSERT INTO 
    DiseñosTags (diseño_id, tag_id) 
VALUES
    (4, 2), -- Furia de los Dioses - Videojuego
    (4, 4), -- Furia de los Dioses - Acción
    (5, 2), -- Espíritu de Esparta - Videojuego
    (5, 4), -- Espíritu de Esparta - Acción
    (6, 2), -- Venganza Divina - Videojuego
    (6, 4), -- Venganza Divina - Acción
    (7, 2), -- Héroe Caído - Videojuego
    (7, 4); -- Héroe Caído - Acción

-- Asignar Tags A Los Diseños De Solid Snake (Artista ID: 3)
INSERT INTO 
    DiseñosTags (diseño_id, tag_id) 
VALUES
    (8, 2), -- Operación Encubierta - Videojuego
    (8, 4), -- Operación Encubierta - Acción
    (9, 2), -- Sombra de la Leyenda - Videojuego
    (9, 4); -- Sombra de la Leyenda - Acción

-- Asignar Tags A Los Diseños De Jill Valentine (Artista ID: 4)
INSERT INTO 
    DiseñosTags (diseño_id, tag_id) 
VALUES
    (10, 2), -- Rescate en Raccoon City - Videojuego
    (10, 4), -- Rescate en Raccoon City - Acción
    (10, 7), -- Rescate en Raccoon City - Survival Horror
    (11, 2), -- Superviviente del Apocalipsis - Videojuego
    (11, 4), -- Superviviente del Apocalipsis - Acción
    (11, 7), -- Superviviente del Apocalipsis - Survival Horror
    (12, 2), -- Última Esperanza - Videojuego
    (12, 4), -- Última Esperanza - Acción
    (12, 7); -- Última Esperanza - Survival Horror

-- Asignar Tags A Los Diseños De Mario (Artista ID: 5)
INSERT INTO 
    DiseñosTags (diseño_id, tag_id) 
VALUES
    (13, 2), -- Aventuras en el Reino Champiñón - Videojuego
    (13, 5), -- Aventuras en el Reino Champiñón - Aventura
    (13, 6), -- Aventuras en el Reino Champiñón - Clásico
    (14, 2), -- Salto hacia la Aventura - Videojuego
    (14, 5), -- Salto hacia la Aventura - Aventura
    (14, 6), -- Salto hacia la Aventura - Clásico
    (15, 2), -- Rescate de la Princesa - Videojuego
    (15, 5), -- Rescate de la Princesa - Aventura
    (15, 6), -- Rescate de la Princesa - Clásico
    (16, 2), -- Fiesta de Estrellas - Videojuego
    (16, 5), -- Fiesta de Estrellas - Aventura
    (16, 6), -- Fiesta de Estrellas - Clásico
    (17, 2), -- Carreras en Kart - Videojuego
    (17, 5), -- Carreras en Kart - Aventura
    (17, 6), -- Carreras en Kart - Clásico
    (18, 2), -- Salvando el Día - Videojuego
    (18, 5), -- Salvando el Día - Aventura
    (18, 6); -- Salvando el Día - Clásico

-- Tabla Productos
CREATE TABLE Productos (
	codigo VARCHAR(255) PRIMARY KEY
);

-- Insertar Productos
INSERT INTO 
	Productos (codigo) 
VALUES 
	('TB001'), 
	('BC001'), 
	('BC002'),
	('BC003'), 
	('RO001'), 
	('RO002'), 
	('RO003'), 
	('RU001'), 
	('RU002'), 
	('RU003'),
	('RU004'), 
	('RU005');

-- Tabla Tote Bag
CREATE TABLE ToteBag (
	codigo VARCHAR(255) PRIMARY KEY NOT NULL,
	ancho INT NOT NULL,
	largo INT NOT NULL,
	ancho_impresion INT NOT NULL,
	largo_impresion INT NOT NULL,
	precio INT NOT NULL,
	FOREIGN KEY (codigo) REFERENCES Productos(codigo)
);

-- Insertar Modelos Tote Bag
INSERT INTO 
	ToteBag (codigo, ancho, largo, ancho_impresion, largo_impresion, precio) 
VALUES
	('TB001', 36, 41, 27, 33, 18500);

-- Tabla Buzo Canguro
CREATE TABLE BuzoCanguro (
	codigo VARCHAR(255) PRIMARY KEY NOT NULL,
	referencia VARCHAR(255) NOT NULL,
	ancho INT NOT NULL,
	largo INT NOT NULL,
	manga INT NOT NULL,
	precio INT NOT NULL,
	FOREIGN KEY (codigo) REFERENCES Productos(codigo)
);

-- Insertar Buzo Canguro
INSERT INTO
	BuzoCanguro (codigo, referencia, ancho, largo, manga, precio) 
VALUES
	('BC001', 'S', 55, 65, 68, 37500),
	('BC002', 'M/L', 59, 69, 70, 37500),
	('BC003', 'XL/XXL', 63, 76, 72, 37500);

-- Tabla Remera Oversized
CREATE TABLE RemeraOversized (
	codigo VARCHAR(255) PRIMARY KEY NOT NULL,
	ancho INT NOT NULL,
	largo INT NOT NULL,
	manga INT NOT NULL,
	precio INT NOT NULL,
	FOREIGN KEY (codigo) REFERENCES Productos(codigo)
);

-- Insertar Remera Oversized
INSERT INTO 
	RemeraOversized (codigo, ancho, largo, manga, precio) 
VALUES 
	('RO001', 56, 78, 24, 34000),
	('RO002', 59, 81, 26, 34000),
	('RO003', 62, 84, 27, 34000);

-- Tabla Remera Unisex
CREATE TABLE RemeraUnisex (
	codigo VARCHAR(255) PRIMARY KEY NOT NULL,
	referencia VARCHAR(255) NOT NULL,
	ancho INT NOT NULL,
	largo INT NOT NULL,
	manga INT NOT NULL,
	precio INT NOT NULL,
	FOREIGN KEY (codigo) REFERENCES Productos(codigo)
);

-- Insertar Remera Unisex
INSERT INTO 
	RemeraUnisex (codigo, referencia, ancho, largo, manga, precio) 
VALUES 
	('RU001', 'S', 47, 67, 20, 28500),
	('RU002', 'M', 50, 70, 21, 28500),
	('RU003', 'L', 53, 73, 22, 28500),
	('RU004', 'XL', 56, 76, 24, 28500),
	('RU005', 'XXL', 59, 80, 25, 28500);
    
-- Tabla Colores
CREATE TABLE Colores (
	id INT PRIMARY KEY AUTO_INCREMENT,
	nombre VARCHAR(255) NOT NULL
);

-- Insertar Colores
INSERT INTO
	Colores (nombre) 
VALUES 
	('Rojo'), 
	('Azul'),   
	('Verde'),  
	('Amarillo'), 
	('Negro'),   
	('Blanco'), 
	('Naranja'), 
	('Rosa'),  
	('Morado'), 
	('Gris'); 

-- Tabla Compras
CREATE TABLE Compras (
	id INT PRIMARY KEY AUTO_INCREMENT,
	fecha_compra DATETIME DEFAULT CURRENT_TIMESTAMP,
	cantidad INT NOT NULL,
	producto_codigo VARCHAR(255) NOT NULL,
	cliente_id INT NOT NULL,
	diseño_id INT NOT NULL,
	color_id INT NOT NULL,
	FOREIGN KEY (cliente_id) REFERENCES Clientes(id),
	FOREIGN KEY (producto_codigo) REFERENCES Productos(codigo),
	FOREIGN KEY (diseño_id) REFERENCES Diseños(id),
	FOREIGN KEY (color_id) REFERENCES Colores(id)
);

-- TRIGGER para actualizar la última actividad del cliente
DELIMITER //

CREATE TRIGGER actualizar_ultima_actividad
AFTER INSERT ON Compras
FOR EACH ROW
BEGIN
    UPDATE Clientes
    SET ultima_actividad = NEW.fecha_compra
    WHERE id = NEW.cliente_id;
END //

DELIMITER ;

-- Insertar Compras

INSERT INTO Compras (cantidad, producto_codigo, cliente_id, diseño_id, color_id)
VALUES (5, 'TB001', 1, 1, 1); -- James Sunderland compra "Ecos del Horror" en rojo

INSERT INTO Compras (cantidad, producto_codigo, cliente_id, diseño_id, color_id)
VALUES (2, 'BC001', 2, 6, 3); -- Heather Mason compra "Venganza Divina" en verde

INSERT INTO Compras (cantidad, producto_codigo, cliente_id, diseño_id, color_id)
VALUES (1, 'RO002', 5, 9, 5); -- Hal Emmerich compra "Sombra de la Leyenda" en negro

INSERT INTO Compras (cantidad, producto_codigo, cliente_id, diseño_id, color_id)
VALUES (2, 'BC003', 2, 5, 2); -- Heather Mason compra "Espíritu de Esparta" en azul

INSERT INTO Compras (cantidad, producto_codigo, cliente_id, diseño_id, color_id)
VALUES (3, 'RU002', 8, 13, 8); -- Leon S. Kennedy compra "Aventuras en el Reino Champiñón" en rosa

INSERT INTO Compras (cantidad, producto_codigo, cliente_id, diseño_id, color_id)
VALUES (2, 'RU001', 7, 11, 7); -- Chris Redfield compra "Superviviente del Apocalipsis" en naranja

INSERT INTO Compras (cantidad, producto_codigo, cliente_id, diseño_id, color_id)
VALUES (1, 'RO001', 4, 8, 4); -- Freya compra "Operación Encubierta" en amarillo

INSERT INTO Compras (cantidad, producto_codigo, cliente_id, diseño_id, color_id)
VALUES (1, 'RO001', 7, 11, 7); -- Chris Redfield compra "Superviviente del Apocalipsis" en naranja

INSERT INTO Compras (cantidad, producto_codigo, cliente_id, diseño_id, color_id)
VALUES (2, 'RU003', 9, 16, 10); -- Luigi compra "Fiesta de Estrellas" en gris

INSERT INTO Compras (cantidad, producto_codigo, cliente_id, diseño_id, color_id)
VALUES (1, 'BC001', 2, 8, 4); -- Heather Mason compra "Operación Encubierta" en amarillo

INSERT INTO Compras (cantidad, producto_codigo, cliente_id, diseño_id, color_id)
VALUES (1, 'RO002', 5, 11, 6); -- Hal Emmerich compra "Superviviente del Apocalipsis" en blanco

INSERT INTO Compras (cantidad, producto_codigo, cliente_id, diseño_id, color_id)
VALUES (1, 'BC001', 2, 4, 2); -- Heather Mason compra "Furia de los Dioses" en azul

INSERT INTO Compras (cantidad, producto_codigo, cliente_id, diseño_id, color_id)
VALUES (4, 'BC002', 3, 5, 3); -- Atreus compra "Espíritu de Esparta" en verde

INSERT INTO Compras (cantidad, producto_codigo, cliente_id, diseño_id, color_id)
VALUES (2, 'RO002', 4, 8, 4); -- Freya compra "Operación Encubierta" en amarillo

INSERT INTO Compras (cantidad, producto_codigo, cliente_id, diseño_id, color_id)
VALUES (3, 'RO002', 5, 7, 5); -- Hal Emmerich compra "Héroe Caído" en negro

INSERT INTO Compras (cantidad, producto_codigo, cliente_id, diseño_id, color_id)
VALUES (3, 'TB001', 1, 2, 2); -- James Sunderland compra "Nieblas de Desesperación" en azul

INSERT INTO Compras (cantidad, producto_codigo, cliente_id, diseño_id, color_id)
VALUES (2, 'RU002', 9, 13, 9); -- Luigi compra "Aventuras en el Reino Champiñón" en morado

INSERT INTO Compras (cantidad, producto_codigo, cliente_id, diseño_id, color_id)
VALUES  (1, 'RO003', 6, 10, 6); -- Meryl Silverburgh compra "Rescate en Raccoon City" en blanco

INSERT INTO Compras (cantidad, producto_codigo, cliente_id, diseño_id, color_id)
VALUES  (3, 'RO001', 4, 10, 5); -- Freya compra "Rescate en Raccoon City" en negro