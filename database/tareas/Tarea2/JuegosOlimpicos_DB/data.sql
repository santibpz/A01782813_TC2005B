-- Juegos Olimpicos Database 
-- Ejercicio de Modelación de Base de Datos

USE sakila;

--
-- Inserción de datos para la tabla Deportista
--

SET AUTOCOMMIT=0;
INSERT INTO DEPORTISTA VALUES (1, 3, 'Rodrigo', 'Perez', 'Juarez', 'masculino'),
(2, 2, 'Juan', 'Carlos', 'Soto', 'masculino'),
(3, 1, 'Ian', 'Vazquez', 'Perez', 'masculino'),
(4, 4, 'Santiago', 'Benitez', 'Lopez', 'masculino'),
(5, 1, 'Mateo', 'García', 'Rodríguez', 'masculino'),
(6, 6, 'Isabella', 'Fernández', 'López', 'femenino'),
(7, 7, 'Sebastián', 'López', 'Torres', 'masculino'),
(8, 5, 'Lucía', 'Torres', 'Sánchez', 'femenino'),
(9, 3, 'David', 'Hernández', 'García', 'masculino'),
(10, 9, 'Camila', 'González', 'Martínez', 'femenino'),
(11, 10, 'Javier', 'Sánchez', 'Rodríguez', 'masculino'),
(12, 11, 'Dulce', 'Munguia', 'Areas', 'femenino'),
(13, 15, 'Lucia', 'Martinez', 'Martinez', 'femenino'),
(14, 4, 'Carla', 'Vargas', 'Mendez', 'femenino'),
(15, 14, 'Mario', 'Lopez', 'Marciaga', 'masculino')

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
INSERT INTO PRUEBA (id_disciplina, fecha, lugar, numDeportistasInscritos, naturaleza)
VALUES
    (1, '2023-05-20', 'Estadio Olímpico', 100, 'Eliminatoria'),
    (2, '2023-05-21', 'Piscina Municipal', 50, 'Eliminatoria'),
    (3, '2023-05-22', 'Gimnasio Nacional', 80, 'Final'),
    (4, '2023-05-23', 'Pista de Atletismo', 120, 'Eliminatoria'),
    (5, '2023-05-24', 'Cancha de Tenis', 40, 'Final'),
    (6, '2023-05-25', 'Pista de Ciclismo', 60, 'Final'),
    (7, '2023-05-26', 'Polideportivo Municipal', 90, 'Eliminatoria'),
    (8, '2023-05-27', 'Campo de Golf', 70, 'Final'),
    (9, '2023-05-28', 'Cancha de Baloncesto', 110, 'Final'),
    (10, '2023-05-29', 'Cancha de Vóley', 80, 'Eliminatoria'),
    (11, '2023-05-30', 'Pista de Natación', 60, 'Final'),
    (12, '2023-05-31', 'Estadio de Fútbol', 150, 'Eliminatoria'),
    (13, '2023-06-01', 'Cancha de Béisbol', 40, 'Final'),
    (14, '2023-06-02', 'Gimnasio Olímpico', 100, 'Final'),
    (15, '2023-06-03', 'Pista de Patinaje', 80, 'Eliminatoria')
    
    
--
-- Inserción de datos para la tabla Disciplina
--

SET AUTOCOMMIT=0;
INSERT INTO DISCIPLINA (nombre, disciplina) VALUES
    ('100m sprint', 'atletismo'),
    ('200m mariposa', 'natación'),
    ('3 sets de tenis', 'tenis'),
    ('Salto largo', 'atletismo'),
    ('50m estilo libre', 'natación'),
    ('Ciclismo de montaña', 'ciclismo'),
    ('Gimnasia rítmica', 'gimnasia'),
    ('Salto alto', 'atletismo'),
    ('100m pecho', 'natación'),
    ('Partido de fútbol', 'fútbol'),
    ('Lanzamiento de disco', 'atletismo'),
    ('100m mariposa', 'natación'),
    ('Partido de baloncesto', 'baloncesto'),
    ('Salto con garrocha', 'atletismo'),
    ('Clase de yoga', 'yoga');