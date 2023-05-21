-- Juegos Olimpicos Database 
-- Ejercicio de Modelación de Base de Datos
CREATE SCHEMA JuegosOlimpicos;
USE JuegosOlimpicos;

--
-- Estructura de la tabla Deportista
--

CREATE TABLE DEPORTISTA(
    id_deportista TINYINT UNSIGNED NOT NULL AUTO_INCREMENT,
    id_pais TINYINT UNSIGNED NOT NULL,
    nombre VARCHAR(45) NOT NULL,
    apellidoPaterno VARCHAR(45) NOT NULL,
    apellidoMaterno VARCHAR(45) NOT NULL,
    sexo VARCHAR(45) NOT NULL,
	PRIMARY KEY  (id_deportista),
    CONSTRAINT `fk_id_pais` FOREIGN KEY (id_pais) REFERENCES PAIS (id_pais) ON DELETE RESTRICT ON UPDATE CASCADE
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
    
    
--
-- Estructura de la tabla Pais
--
CREATE TABLE PAIS(
    id_pais TINYINT UNSIGNED NOT NULL AUTO_INCREMENT,
    nombre VARCHAR(45) NOT NULL,
    numParticipantes SMALLINT NOT NULL,
    numMedallas SMALLINT NOT NULL,
	PRIMARY KEY  (id_pais)
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
    

--
-- Estructura de la tabla Prueba
--

CREATE TABLE PRUEBA(
    id_prueba TINYINT UNSIGNED NOT NULL AUTO_INCREMENT,
    id_disciplina TINYINT UNSIGNED NOT NULL,
    fecha VARCHAR(45) NOT NULL,
    lugar VARCHAR(45) NOT NULL,
    numDeportistasInscritos SMALLINT NOT NULL,
    naturaleza VARCHAR(45) NOT NULL,
	PRIMARY KEY  (id_prueba),
	CONSTRAINT `fk_id_disciplina` FOREIGN KEY (id_disciplina) REFERENCES DISCIPLINA (id_disciplina) ON DELETE RESTRICT ON UPDATE CASCADE
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


--
-- Estructura de la tabla Disciplina
--

CREATE TABLE DISCIPLINA(
    id_disciplina TINYINT UNSIGNED NOT NULL AUTO_INCREMENT,
    nombre VARCHAR(45) NOT NULL,
    disciplina VARCHAR(45) NOT NULL,
	PRIMARY KEY  (id_disciplina)
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
    

--
-- Estructura de la tabla Clasificación
--

CREATE TABLE CLASIFICACION(
    id_deportista TINYINT UNSIGNED NOT NULL,
    id_prueba TINYINT UNSIGNED NOT NULL,
    rango SMALLINT NOT NULL,
	CONSTRAINT `fk_id_deportista` FOREIGN KEY (id_deportista) REFERENCES DEPORTISTA (id_deportista) ON DELETE RESTRICT ON UPDATE CASCADE,
	CONSTRAINT `fk_id_prueba` FOREIGN KEY (id_prueba) REFERENCES PRUEBA (id_prueba) ON DELETE RESTRICT ON UPDATE CASCADE
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


--
-- Estructura de la tabla Resultado
--

CREATE TABLE CLASIFICACION(
    id_resultado TINYINT UNSIGNED NOT NULL AUTO_INCREMENT,
    id_disciplina TINYINT UNSIGNED NOT NULL,
    id_deportista TINYINT UNSIGNED NOT NULL,
    medalla VARCHAR(15) NOT NULL,
	CONSTRAINT `fk_id_disciplina` FOREIGN KEY (id_disciplina) REFERENCES DISCIPLINA (id_disciplina) ON DELETE RESTRICT ON UPDATE CASCADE,
    CONSTRAINT `fk_id_deportista` FOREIGN KEY (id_deportista) REFERENCES DEPORTISTA (id_deportista) ON DELETE RESTRICT ON UPDATE CASCADE
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

