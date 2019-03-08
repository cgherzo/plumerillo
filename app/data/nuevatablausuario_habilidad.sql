USE mdm2;
/*se realizara una tabla compuesta para unir al usuario y las habilidades*/
CREATE TABLE usuario_habilidad (
	ID_usuario_habilidad INT,
	ID_usuario INT,
	ID_habilidad INT,
	PRIMARY KEY (ID_usuario,ID_habilidad)
    );
	