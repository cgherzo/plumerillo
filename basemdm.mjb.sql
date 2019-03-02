USE mdm;
CREATE TABLE habilidad (
	ID_habilidad INT PRIMARY KEY ,
	nombre VARCHAR (50) 
);
CREATE TABLE zona (
	ID_zona INT PRIMARY KEY,
    departamento VARCHAR(50),
    ciudad VARCHAR (50),
    barrio VARCHAR (50)
);
CREATE TABLE usuario (
	ID_usuario INT PRIMARY KEY ,
	ci INT(20),
    nombre VARCHAR (50),
    apellido VARCHAR(50),
    email VARCHAR(50),
    telefono INT (20),
    calle VARCHAR (100),
    numero_puerta VARCHAR (20),
    esquina_1 VARCHAR (50),
    esquina_2 VARCHAR (50),
    ID_zona INT,
    INDEX ix_usuario_zona (ID_zona),
    FOREIGN KEY (ID_zona) REFERENCES zona (ID_zona)
    );

CREATE TABLE necesidad (
	ID_necesidad INT PRIMARY KEY,
    ID_habilidad INT,
    ID_usuario INT, 
    descripcion_necesidad TEXT,
    fecha_creado date,
    INDEX ix_necesidad_habilidad (ID_habilidad),
    INDEX ix_necesidad_usuario (ID_usuario),
    FOREIGN KEY (ID_habilidad) REFERENCES habilidad (ID_habilidad),
    FOREIGN KEY (ID_usuario) REFERENCES usuario (ID_usuario)
      
);
CREATE TABLE propuesta (
	ID_propuesta INT PRIMARY KEY,
	ID_necesidad_1 INT, 
    ID_necesidad_2 INT,
    INDEX ix_propuesta_necesidad_1 (ID_necesidad_1),
    INDEX ix_propuesta_necesidad_2 (ID_necesidad_2),
    FOREIGN KEY (ID_necesidad_1) REFERENCES necesidad (ID_necesidad),
    FOREIGN KEY (ID_necesidad_2) REFERENCES necesidad (ID_necesidad)   
    );
    
        
