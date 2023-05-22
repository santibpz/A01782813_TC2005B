-- Juegos Olimpicos Database 
-- Ejercicio de Modelación de Base de Datos

USE juegosolimpicos;

--
-- Inserción de datos para la tabla Deportista
--

SET AUTOCOMMIT=0;
INSERT INTO DEPORTISTA (id_pais, nombre, apellidoPaterno, apellidoMaterno, sexo, numMedallasAcumuladas)  VALUES 
(3, 'Rodrigo', 'Perez', 'Juarez', 'masculino', 5),
(2, 'Juan', 'Carlos', 'Soto', 'masculino', 8),
(1, 'Ian', 'Vazquez', 'Perez', 'masculino', 2),
(4, 'Santiago', 'Benitez', 'Lopez', 'masculino', 12),
(1, 'Mateo', 'García', 'Rodríguez', 'masculino', 4),
(6, 'Isabella', 'Fernández', 'López', 'femenino', 11),
(7, 'Sebastián', 'López', 'Torres', 'masculino', 21),
(5, 'Lucía', 'Torres', 'Sánchez', 'femenino', 16),
(3, 'David', 'Hernández', 'García', 'masculino', 7),
(9, 'Camila', 'González', 'Martínez', 'femenino', 9),
(10, 'Javier', 'Sánchez', 'Rodríguez', 'masculino', 1),
(11, 'Dulce', 'Munguia', 'Areas', 'femenino', 2),
(15, 'Lucia', 'Martinez', 'Martinez', 'femenino', 10),
(4, 'Carla', 'Vargas', 'Mendez', 'femenino', 9),
(14, 'Mario', 'Lopez', 'Marciaga', 'masculino', 4);

--
-- Inserción de datos para la tabla Pais
--

SET AUTOCOMMIT=0;
INSERT INTO PAIS (nombre, numParticipantes, numMedallas)
VALUES
    ('México', 10, 5),
    ('Estados Unidos', 20, 20),
    ('China', 15, 15),
    ('Alemania', 18, 8),
    ('Francia', 9, 9),
    ('Japón', 12, 12),
    ('Australia', 17, 7),
    ('Canadá', 11, 11),
    ('Italia', 6, 6),
    ('Brasil', 14, 4),
    ('España', 25, 3),
    ('Argentina', 15, 5),
    ('Rusia', 16, 14),
    ('Reino Unido', 30, 9),
    ('Corea del Sur', 21, 7);
    

--
-- Inserción de datos para la tabla Prueba
--

SET AUTOCOMMIT=0;
INSERT INTO PRUEBA (id_disciplina, fecha, lugar, numDeportistasInscritos, naturaleza, puntos)
VALUES
    (1, '2023-05-20', 'Estadio Olímpico', 100, 'Eliminatoria', 200),
    (2, '2023-05-21', 'Alberca Olímpica', 50, 'Eliminatoria', 180),
    (3, '2023-05-22', 'Gimnasio Nacional', 80, 'Final', 190),
    (4, '2023-05-23', 'Pista de Atletismo', 120, 'Eliminatoria', 110),
    (5, '2023-05-24', 'Alberca Olímpica', 40, 'Final', 125),
    (6, '2023-05-25', 'Pista de Ciclismo', 60, 'Final', 115),
    (7, '2023-05-26', 'Polideportivo Municipal', 90, 'Eliminatoria', 100),
    (8, '2023-05-27', 'Campo de Golf', 70, 'Final', 50),
    (9, '2023-05-28', 'Cancha de Baloncesto', 110, 'Final', 90),
    (10, '2023-05-29', 'Cancha de Vóley', 80, 'Eliminatoria', 70),
    (11, '2023-05-30', 'Estadio  Olímpico', 60, 'Final', 45),
    (12, '2023-05-31', 'Estadio de Fútbol', 150, 'Eliminatoria', 100),
    (13, '2023-06-01', 'Campo de Golf', 40, 'Final', 215),
    (14, '2023-06-02', 'Estadio Olímpico', 100, 'Final', 60),
    (15, '2023-06-03', 'Pista de Patinaje', 80, 'Eliminatoria', 75);
    
    
--
-- Inserción de datos para la tabla Disciplina
--

SET AUTOCOMMIT=0;
INSERT INTO DISCIPLINA (nombre, disciplina) VALUES
    ('100m sprint', 'Atletismo'),
    ('200m mariposa', 'Natación'),
    ('3 sets de tenis', 'Tenis'),
    ('Salto largo', 'Atletismo'),
    ('50m estilo libre', 'Natación'),
    ('Ciclismo de montaña', 'Ciclismo'),
    ('Gimnasia rítmica', 'Gimnasia'),
    ('Juego por hoyos', 'Golf'),
    ('Partido Baloncesto', 'Bloncesto'),
    ('Partido de Volleyball', 'VolleyBall'),
    ('Lanzamiento de disco', 'Atletismo'),
    ('Partido Futbol', 'Futbol'),
    ('Juego a golpes', 'Golf'),
    ('Salto con garrocha', 'Atletismo'),
    ('500m pecho', 'Natación');
    

--
-- Inserción de datos para la tabla Clasificación
--

SET AUTOCOMMIT=0;
INSERT INTO CLASIFICACION (id_deportista, id_prueba, rango) VALUES
    (1, 3, 10),
    (2, 5, 12),
    (3, 7, 5),
    (4, 9, 3),
    (5, 11, 15),
    (6, 13, 11),
    (7, 15, 17),
    (8, 1, 9),
    (9, 2, 20),
    (10, 4, 2),
    (11, 6, 25),
    (12, 8, 13),
    (13, 10, 8),
    (14, 12, 24),
    (15, 14, 1);


--
-- Inserción de datos para la tabla Resultado
--


SET AUTOCOMMIT=0;
INSERT INTO RESULTADO (id_disciplina, id_deportista, medalla) VALUES
    (1, 4, 'oro'),
    (2, 8, 'plata'),
    (3, 12, 'oro'),
    (4, 1, 'bronce'),
    (5, 3, 'oro'),
    (6, 5, 'oro'),
    (7, 7, 'plata'),
    (8, 9, 'bronce'),
    (9, 11, 'bronce'),
    (10, 13, 'oro'),
    (11, 2, 'plata'),
    (12, 6, 'plata'),
    (13, 10, 'oro'),
    (14, 14, 'bronce'),
    (15, 15, 'plata')
