-- SQL queries de la base de datos juegos olimpicos

-- 1. Apellidos y nombre de los participantes de nacionalidad mexicana.

SELECT deportista.nombre, apellidoPaterno, apellidoMaterno 
from DEPORTISTA INNER JOIN PAIS 
ON DEPORTISTA.id_pais = PAIS.id_pais 
where pais.nombre LIKE 'México';

-- 2. Apellidos, nombre y numero de medallas obtenidas de los participantes de USA.

SELECT deportista.nombre, apellidoPaterno, apellidoMaterno, numMedallasAcumuladas
from DEPORTISTA INNER JOIN PAIS 
ON DEPORTISTA.id_pais = PAIS.id_pais 
where pais.nombre LIKE 'Estados Unidos';

-- 3. Apellidos y nombre de los participantes que se clasificaron en primer rango en al menos una competencia.

SELECT nombre, apellidoPaterno, apellidoMaterno
from DEPORTISTA INNER JOIN CLASIFICACION
ON DEPORTISTA.id_deportista = CLASIFICACION.id_deportista
WHERE rango = 1;

-- 4. Nombre de las competencias en las que intervinieron los participantes mexicanos.

SELECT disciplina 
from DISCIPLINA INNER JOIN (
SELECT id_disciplina
FROM PRUEBA INNER JOIN (
SELECT id_prueba FROM 
CLASIFICACION INNER JOIN (
SELECT id_deportista 
FROM DEPORTISTA INNER JOIN PAIS
AS ID_DEPORTISTAS_MEXICANOS
USING (id_pais)
WHERE ID_DEPORTISTAS_MEXICANOS.nombre LIKE "México"
)
AS PRUEBAS
ON CLASIFICACION.id_deportista = PRUEBAS.id_deportista
)
AS DISCIPLINA_ID
USING (id_prueba)
)
AS NOMBRE_COMPETENCIAS
USING (id_disciplina);


-- 5. Apellidos y nombre de los deportistas que nunca se clasificaron en primer rango en alguna competencia.


SELECT nombre, apellidoPaterno, apellidoMaterno 
FROM DEPORTISTA INNER JOIN CLASIFICACION 
USING (id_deportista)
WHERE rango > 1;

-- 6. Apellidos y nombre de los deportistas que siempre se clasificaron en alguna competencia.

SELECT nombre, apellidoPaterno, apellidoMaterno  
FROM DEPORTISTA INNER JOIN CLASIFICACION 
USING (id_deportista);

-- 7. Nombre de la competencia que aporta el máximo de puntos. 

SELECT nombre FROM
DISCIPLINA INNER JOIN 
(
SELECT id_disciplina FROM
PRUEBA INNER JOIN (SELECT MAX(puntos) AS puntos FROM PRUEBA AS PUNTOS_MAXIMOS)
AS MAX_PUNTOS
using (puntos)
)
as DISCIPLINA_MAX_PUNTOS
USING (id_disciplina);

-- 8. Países (nacionalidades) que participaron en todas las competencias.



SELECT PRODUCTO_CARTESIANO.nombre, id_disciplina FROM DISCIPLINA CROSS JOIN (
SELECT DISTINCT nombre FROM (
SELECT nombre, id_disciplina FROM PRUEBA INNER JOIN (
SELECT nombre, id_prueba FROM CLASIFICACION INNER JOIN 
(SELECT pais.nombre, id_deportista FROM DEPORTISTA INNER JOIN PAIS USING (id_pais)) -- seleccionamos paises y id de deportistas
AS PRUEBAS_PAISES
USING (id_deportista))
AS PAISES_DISCIPLINAS
USING (id_prueba))
AS PAISES_DIFERENTES)
AS PRODUCTO_CARTESIANO WHERE NOT EXISTS
(SELECT nombre, id_disciplina FROM PRUEBA INNER JOIN (
SELECT nombre, id_prueba FROM CLASIFICACION INNER JOIN 
(SELECT pais.nombre, id_deportista FROM DEPORTISTA INNER JOIN PAIS USING (id_pais)) -- seleccionamos paises y id de deportistas
AS PRUEBAS_PAISES
USING (id_deportista))
AS PAISES_DISCIPLINAS
USING (id_prueba));

-- 9. Propongan una consulta que involucre una sola tabla con  alguna funcion como MIN, AVG --- Nueva consulta

-- La prueba que aporta el minimo de puntos
SELECT nombre FROM
DISCIPLINA INNER JOIN 
(
SELECT id_disciplina FROM
PRUEBA INNER JOIN (SELECT MIN(puntos) AS puntos FROM PRUEBA AS PUNTOS_MAXIMOS)
AS MIN_PUNTOS
using (puntos)
)
as DISCIPLINA_MIN_PUNTOS
USING (id_disciplina);


-- 10. Porpongan una consulta que involucre dos tabla con GROUP BY --- Nueva consulta

-- La cantidad de atletas por pais
SELECT PAIS.nombre AS nombre_pais, COUNT(DEPORTISTA.id_deportista) AS conteo_atletas
FROM PAIS
JOIN DEPORTISTA USING (id_pais)
GROUP BY PAIS.nombre;

-- 11. Porpongan una consulta que involucre tres tablas con las sentencias LEFT JOIN, ORDER BY, GROUP BY Y LIMIT--- Nueva consulta

-- La cantidad de pruebas en las que han participando los atletas
SELECT DEPORTISTA.nombre, COUNT(CLASIFICACION.id_prueba) AS cantidad_de_pruebas
FROM DEPORTISTA
LEFT JOIN CLASIFICACION ON DEPORTISTA.id_deportista = CLASIFICACION.id_deportista
LEFT JOIN PRUEBA ON CLASIFICACION.id_prueba = PRUEBA.id_prueba
GROUP BY DEPORTISTA.id_deportista
ORDER BY cantidad_de_pruebas DESC
LIMIT 10;

-- 12. Propongan una consulta que involucre tres tablas con las sentencias INNER JOIN y LIKE

-- Seleccionamos los nombres de los atletas que contengan en su nombre la palabra 'john' y su rango sea mayor a uno
SELECT nombre
FROM DEPORTISTA
INNER JOIN CLASIFICACION USING(id_deportista)
WHERE nombre LIKE '%John%' AND rango > 1;
