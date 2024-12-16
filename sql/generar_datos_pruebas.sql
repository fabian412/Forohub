-- ForoHub
-- Datos para pruebas


INSERT INTO curso (nombre, categoria) VALUES ('Multijugos','POCIONES');
INSERT INTO curso (nombre, categoria) VALUES ('Amortentia','POCIONES');
INSERT INTO curso (nombre, categoria) VALUES ('Expecto patronum','ENCANTAMIENTOS');
INSERT INTO curso (nombre, categoria) VALUES ('Finite incantatem','ENCANTAMIENTOS');
INSERT INTO curso (nombre, categoria) VALUES ('Unicornios','CRIATURAS');
INSERT INTO curso (nombre, categoria) VALUES ('Dragones','CRIATURAS');


INSERT INTO perfil (nombre) VALUES ('Director');
INSERT INTO perfil (nombre) VALUES ('Profesor');
INSERT INTO perfil (nombre) VALUES ('Alumno');
INSERT INTO perfil (nombre) VALUES ('Invitado');


-- https://www.browserling.com/tools/bcrypt
INSERT INTO usuario (nombre, correoelectronico, contrasena) 
    VALUES ('Albus Percival Wulfric Brian Dumbledore','adumbledore@hogwarts.edu','$2a$10$ObrpWT3djudz805A4EKUFO/7xv2iGUo7M04tMP8q6pkiMlead2rGO');
    -- contrasena = magia1
INSERT INTO usuario (nombre, correoelectronico, contrasena) 
    VALUES ('Minerva McGonagall','mmcgonagall@hogwarts.edu','$2a$10$1kxl9v3XkTz0DihQuBNbFuWsrDX3L9ydteQ/tdRtjhyKN4qShBgDG');
    -- contrasena = magia2
INSERT INTO usuario (nombre, correoelectronico, contrasena) 
    VALUES ('Severus Snape','ssnape@hogwarts.edu','$2a$10$3Ui30HZWQ2JTCYqgI3RXoOkWa8FqmX/CmQEhScNyXBYUKNoURcy7y');
    -- contrasena = magia3
INSERT INTO usuario (nombre, correoelectronico, contrasena) 
    VALUES ('Harry James Potter','hpotter@hogwarts.edu','$2a$10$DGYAXnsH3aHZT1XVWPWhVedUJHwjhumo/UiQMpUGuAtrcdYbzelcu');
    -- contrasena = magia4
INSERT INTO usuario (nombre, correoelectronico, contrasena) 
    VALUES ('Hermione Jean Granger','hgranger@hogwarts.edu','$2a$10$8ShkHudvb6JgGBl07ahrUefmNOECWJaiOXT7Sh3j5eQfJT7PLWX0.');
    -- contrasena = magia5
INSERT INTO usuario (nombre, correoelectronico, contrasena) 
    VALUES ('Ronald Bilius Weasley','rweasley@hogwarts.edu','$2a$10$EJ8o3FszfGHXjapf2.DD5u0LOF2tlGl1HfxKayqRWYrh5A4CorFpm');
    -- contrasena = magia6

    
INSERT INTO perfil_usuario (perfil_id, usuario_id)
VALUES (
    (SELECT id FROM perfil WHERE nombre = 'Director'),
    (SELECT id FROM usuario WHERE correoelectronico = 'adumbledore@hogwarts.edu')
);
INSERT INTO perfil_usuario (perfil_id, usuario_id)
VALUES (
    (SELECT id FROM perfil WHERE nombre = 'Profesor'),
    (SELECT id FROM usuario WHERE correoelectronico = 'mmcgonagall@hogwarts.edu')
);
INSERT INTO perfil_usuario (perfil_id, usuario_id)
VALUES (
    (SELECT id FROM perfil WHERE nombre = 'Profesor'),
    (SELECT id FROM usuario WHERE correoelectronico = 'ssnape@hogwarts.edu')
);
INSERT INTO perfil_usuario (perfil_id, usuario_id)
VALUES (
    (SELECT id FROM perfil WHERE nombre = 'Alumno'),
    (SELECT id FROM usuario WHERE correoelectronico = 'hpotter@hogwarts.edu')
);
INSERT INTO perfil_usuario (perfil_id, usuario_id)
VALUES (
    (SELECT id FROM perfil WHERE nombre = 'Alumno'),
    (SELECT id FROM usuario WHERE correoelectronico = 'hgranger@hogwarts.edu')
);
INSERT INTO perfil_usuario (perfil_id, usuario_id)
VALUES (
    (SELECT id FROM perfil WHERE nombre = 'Alumno'),
    (SELECT id FROM usuario WHERE correoelectronico = 'rweasley@hogwarts.edu')
);


INSERT INTO topico (titulo, mensaje, fechacreacion, estado, curso_id, usuario_id)
VALUES ('Cómo ejecutar Finite incantatem', 'Este singular encantamiento...', '2019-03-01 09:55:00', 'CERRADO',
    (SELECT id FROM curso WHERE nombre = 'Finite incantatem'),
    (SELECT id FROM usuario WHERE correoelectronico = 'adumbledore@hogwarts.edu')
);
INSERT INTO topico (titulo, mensaje, fechacreacion, estado, curso_id, usuario_id)
VALUES ('Patronum y los mortífagos', 'Mi experiencia sobre este encantamiento...', '2024-11-08 15:15:00', 'ABIERTO',
    (SELECT id FROM curso WHERE nombre = 'Expecto patronum'),
    (SELECT id FROM usuario WHERE correoelectronico = 'hpotter@hogwarts.edu')
);
INSERT INTO topico (titulo, mensaje, fechacreacion, estado, curso_id, usuario_id)
VALUES ('Unicornios Blancos', 'Los unicornios blancos son...', '2023-07-23 21:45:00', 'ABIERTO',
    (SELECT id FROM curso WHERE nombre = 'Unicornios'),
    (SELECT id FROM usuario WHERE correoelectronico = 'hpotter@hogwarts.edu')
);
INSERT INTO topico (titulo, mensaje, fechacreacion, estado, curso_id, usuario_id)
VALUES ('Añadido potenciador para poción Multijugos', 'La mandrágora albina es tan rara como efectiva para...', '2024-09-09 17:15:00', 'ABIERTO',
    (SELECT id FROM curso WHERE nombre = 'Multijugos'),
    (SELECT id FROM usuario WHERE correoelectronico = 'hgranger@hogwarts.edu')
);
INSERT INTO topico (titulo, mensaje, fechacreacion, estado, curso_id, usuario_id)
VALUES ('Amortentia en el té', 'Desde épocas ancestrales...', '2020-02-14 11:00:00', 'CERRADO',
    (SELECT id FROM curso WHERE nombre = 'Amortentia'),
    (SELECT id FROM usuario WHERE correoelectronico = 'hgranger@hogwarts.edu')
);
INSERT INTO topico (titulo, mensaje, fechacreacion, estado, curso_id, usuario_id)
VALUES ('Dragones y su alimentación', 'Los dragones, aunque no te lo creas, también comen...', '2024-11-08 15:15:15', 'ABIERTO',
    (SELECT id FROM curso WHERE nombre = 'Dragones'),
    (SELECT id FROM usuario WHERE correoelectronico = 'rweasley@hogwarts.edu')
);
