CREATE TABLE curso (
  id BIGINT NOT NULL AUTO_INCREMENT,
  nombre VARCHAR(100) NOT NULL,
  categoria VARCHAR(50) NOT NULL,
  PRIMARY KEY (id),
  UNIQUE INDEX ui_curso_nombre (nombre ASC) VISIBLE
);