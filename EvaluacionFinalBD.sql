
CREATE TABLE alternativas (
    id_alter                VARCHAR2(50) NOT NULL,
    desc_alter              VARCHAR2(100),
    choice                  CHAR(1),
    preguntas_id_question  VARCHAR2(30) NOT NULL,
    puntaje                 NUMBER
);

ALTER TABLE alternativas ADD CONSTRAINT alternativas_pk PRIMARY KEY ( id_alter );

CREATE TABLE alumnos (
    id_alumno        INTEGER NOT NULL,
    name_alumno      VARCHAR2(50),
    cursos_id_curso  INTEGER NOT NULL
);

ALTER TABLE alumnos ADD CONSTRAINT alumnos_pk PRIMARY KEY ( id_alumno );

CREATE TABLE cursos (
    id_curso      INTEGER NOT NULL,
    nombre_curso  VARCHAR2(50)
);

ALTER TABLE cursos ADD CONSTRAINT cursos_pk PRIMARY KEY ( id_curso );

CREATE TABLE preguntas (
    id_question   VARCHAR2(30) NOT NULL,
    enunciado     VARCHAR2(200),
    test_id_test  INTEGER NOT NULL
);

ALTER TABLE preguntas ADD CONSTRAINT preguntas_pk PRIMARY KEY ( id_question );

CREATE TABLE resultados (
    id_resultados      INTEGER NOT NULL,
    puntaje            NUMBER,
    nota               NUMBER,
    test_id_test       INTEGER NOT NULL,
    alumnos_id_alumno  INTEGER NOT NULL
);

ALTER TABLE resultados ADD CONSTRAINT resultados_pk PRIMARY KEY ( id_resultados );

CREATE TABLE test (
    id_test          INTEGER NOT NULL,
    nombre           VARCHAR2(50),
    descripcion      VARCHAR2(60),
    programa         VARCHAR2(60),
    modulo           VARCHAR2(50),
    autor            VARCHAR2(50),
    fechacre         DATE,
    cursos_id_curso  INTEGER NOT NULL
);

ALTER TABLE test ADD CONSTRAINT test_pk PRIMARY KEY ( id_test );

ALTER TABLE alternativas
    ADD CONSTRAINT alternativas_preguntas_fk FOREIGN KEY ( preguntas_id_question )
        REFERENCES preguntas ( id_question );

ALTER TABLE alumnos
    ADD CONSTRAINT alumnos_cursos_fk FOREIGN KEY ( cursos_id_curso )
        REFERENCES cursos ( id_curso );

ALTER TABLE preguntas
    ADD CONSTRAINT preguntas_test_fk FOREIGN KEY ( test_id_test )
        REFERENCES test ( id_test );

ALTER TABLE resultados
    ADD CONSTRAINT resultados_alumnos_fk FOREIGN KEY ( alumnos_id_alumno )
        REFERENCES alumnos ( id_alumno );

ALTER TABLE resultados
    ADD CONSTRAINT resultados_test_fk FOREIGN KEY ( test_id_test )
        REFERENCES test ( id_test );

ALTER TABLE test
    ADD CONSTRAINT test_cursos_fk FOREIGN KEY ( cursos_id_curso )
        REFERENCES cursos ( id_curso );

INSERT INTO CURSOS VALUES (2, '2to Basico');
INSERT INTO CURSOS VALUES (3, '3to Basico');
INSERT INTO CURSOS VALUES (4, '4to Basico');
INSERT INTO CURSOS VALUES (5, '5to Basico');
INSERT INTO CURSOS VALUES (6, '6to Basico');
INSERT INTO CURSOS VALUES (7, '7mo Basico');
INSERT INTO CURSOS VALUES (8, '8vo Basico');
        
INSERT INTO ALUMNOS VALUES (10, 'Rodolfo',5);
INSERT INTO ALUMNOS VALUES (11, 'Carolina',5);        
INSERT INTO ALUMNOS VALUES (12, 'Doria',5);        
INSERT INTO ALUMNOS VALUES (13, 'Jhonatan',5);        
INSERT INTO ALUMNOS VALUES (14, 'Juri',5);        
INSERT INTO ALUMNOS VALUES (15, 'Giovana',5);        
INSERT INTO ALUMNOS VALUES (16, 'Elias',5);
INSERT INTO ALUMNOS VALUES (17, 'Sebastian',5);
INSERT INTO ALUMNOS VALUES (18, 'Gonzalo',5);
INSERT INTO ALUMNOS VALUES (19, 'Matias',5);

INSERT INTO ALUMNOS VALUES (20, 'Fernanda',6);
INSERT INTO ALUMNOS VALUES (21, 'Joaquin',6);        
INSERT INTO ALUMNOS VALUES (22, 'Catalina',6);        
INSERT INTO ALUMNOS VALUES (23, 'Juan',6);        
INSERT INTO ALUMNOS VALUES (24, 'Carla',6);        
INSERT INTO ALUMNOS VALUES (25, 'Hector',6);        
INSERT INTO ALUMNOS VALUES (26, 'Andres',6);
INSERT INTO ALUMNOS VALUES (27, 'Camila',6);
INSERT INTO ALUMNOS VALUES (28, 'Bastian',6);
INSERT INTO ALUMNOS VALUES (29, 'Jorge',6);
    
    
INSERT INTO EXAMEN VALUES (1,'Prueba Sistema Respiratorio', 'Prueba de Alternativas','Ciencias Naturales','Unidad 1','Rodolfo Fuentes','21/08/2020',5);
INSERT INTO EXAMEN VALUES (2,'Prueba de Sexualidad', 'Prueba de Alternativas','Ciencias Naturales','Unidad 2','Doria Lassalle','20/07/2020',6);
INSERT INTO EXAMEN VALUES (3,'Prueba de Sistema Circulatorio', 'Prueba de Alternativas','Ciencias Naturales','Unidad 3','Carolina Salort','29/07/2020',7);
INSERT INTO EXAMEN VALUES (4,'Prueba de Sistema Solar', 'Prueba de Alternativas','Ciencias Naturales','Unidad 4','Jhonatan Mejias','20/04/2020',8);
INSERT INTO EXAMEN VALUES (5,'Prueba de Electricidad', 'Prueba de Alternativas','Ciencias Naturales','Unidad 5','Mario Canedo','19/04/2020',8);
   
    
    

    
        
INSERT INTO PREGUNTAS VALUES ('P1','1.¿Qué es la sexualidad humana?',2);
INSERT INTO PREGUNTAS VALUES ('P2','2.¿Cuáles son características secundarias de la mujer?',2);
INSERT INTO PREGUNTAS VALUES ('P3','3.Los ovarios son estructura pares en formas de almendra, que liberan al ovocito II en:',2);
INSERT INTO PREGUNTAS VALUES ('P4','4.Las etapas de la vida de un ser humano en orden cronológico son:',2);
INSERT INTO PREGUNTAS VALUES ('P5','5.Aumento de la estatura, aparición del acné, crecimiento del bello axilar y pubis, crecimiento de órganos sexuales son de:',2);
INSERT INTO PREGUNTAS VALUES ('P6','6.¿Cuál de los siguientes órganos, no corresponde al sistema reproductor masculino?:',2);
INSERT INTO PREGUNTAS VALUES ('P7','7.Son células especializadas para la reproducción. En el hombre se llaman espermatozoide y en las mujeres se llaman ovocitos II… la anterior definición corresponde a:',2);
INSERT INTO PREGUNTAS VALUES ('P8','8.El órgano copulador femenino se llama:',2);
INSERT INTO PREGUNTAS VALUES ('P9','9.¿Qué son los caracteres sexuales primarios?',2);
INSERT INTO PREGUNTAS VALUES ('P10','10.Un Espermatozoide es:',2);


INSERT INTO ALTERNATIVAS VALUES ('A1', 'a) Comprende a los seres que se reproducen.', 'F', 'P1',0);
INSERT INTO ALTERNATIVAS VALUES ('A2', 'b) Es el contacto de los hijos con los padres.', 'F', 'P1',0);
INSERT INTO ALTERNATIVAS VALUES ('A3', 'c) Comprende a una conducta de cortejo.', 'F', 'P1',0);
INSERT INTO ALTERNATIVAS VALUES ('A4', 'd) Es el conjunto de fenómenos emocionales y de conducta relacionados con el sexo del individuo.', 'V', 'P1',1);
INSERT INTO ALTERNATIVAS VALUES ('A5', 'a) Desarrollo de los testículos.', 'F', 'P2',0);
INSERT INTO ALTERNATIVAS VALUES ('A6', 'b) Aumento de masa muscular.', 'F', 'P2',0);
INSERT INTO ALTERNATIVAS VALUES ('A7', 'c) Ensanchamiento de las caderas.  ', 'V', 'P2',0.5);
INSERT INTO ALTERNATIVAS VALUES ('A8', 'd) Menarquia.', 'V', 'P2',0.5);
INSERT INTO ALTERNATIVAS VALUES ('A9', 'a) Cuello uterino', 'F', 'P3', 0);
INSERT INTO ALTERNATIVAS VALUES ('A10', 'b) Las trompas de Falopio', 'V', 'P3', 1);
INSERT INTO ALTERNATIVAS VALUES ('A11', 'c) El útero', 'F', 'P3', 0);
INSERT INTO ALTERNATIVAS VALUES ('A12', 'd) la vagina', 'F', 'P3', 0);
INSERT INTO ALTERNATIVAS VALUES ('A13', 'a) Niñez – adultez – vejez – adolescencia.', 'F', 'P4', 0);
INSERT INTO ALTERNATIVAS VALUES ('A14', 'b) Niñez -  pubertad y adolescencia – vejez – adultez.', 'V', 'P4', 1);
INSERT INTO ALTERNATIVAS VALUES ('A15', 'c) Niñez – pubertad y adolescencia – adultez - vejez.', 'F', 'P4', 0);
INSERT INTO ALTERNATIVAS VALUES ('A16', 'd) Pubertad – niñez –adultez – vejez.', 'F', 'P4', 0);
INSERT INTO ALTERNATIVAS VALUES ('A17', 'a) hombres.', 'V', 'P5', 0.5);
INSERT INTO ALTERNATIVAS VALUES ('A18', 'b) únicamente mujeres.', 'F', 'P5', 0);
INSERT INTO ALTERNATIVAS VALUES ('A19', 'c) Son característico tanto en hombre como mujeres.', 'V', 'P5', 0.5);
INSERT INTO ALTERNATIVAS VALUES ('A20', 'd) Ninguna de las anteriores.', 'F', 'P5', 0);
INSERT INTO ALTERNATIVAS VALUES ('A21', 'a) Conductos deferentes.', 'F', 'P6', 0);
INSERT INTO ALTERNATIVAS VALUES ('A22', 'b) Oviductos', 'V', 'P6', 1);
INSERT INTO ALTERNATIVAS VALUES ('A23', 'c) Próstata. ', 'F', 'P6', 0);
INSERT INTO ALTERNATIVAS VALUES ('A24', 'd) Epidídimo. ', 'F', 'P6', 0);
INSERT INTO ALTERNATIVAS VALUES ('A25', 'a) Óvulos. ', 'F', 'P7', 0);
INSERT INTO ALTERNATIVAS VALUES ('A26', 'b) Gametos. ', 'V', 'P7', 1);
INSERT INTO ALTERNATIVAS VALUES ('A27', 'c) Embrión.', 'F', 'P7', 0);
INSERT INTO ALTERNATIVAS VALUES ('A28', 'd) epidídimo.', 'F', 'P7', 0);
INSERT INTO ALTERNATIVAS VALUES ('A29', 'a) Vagina', 'V', 'P8', 1);
INSERT INTO ALTERNATIVAS VALUES ('A30', 'b) Útero', 'F', 'P8', 0);
INSERT INTO ALTERNATIVAS VALUES ('A31', 'c) Ovario', 'F', 'P8', 0);
INSERT INTO ALTERNATIVAS VALUES ('A32', 'd) Oviducto', 'F', 'P8', 0);	
INSERT INTO ALTERNATIVAS VALUES ('A33', 'a) Los órganos sexuales masculinos y femeninos.', 'V', 'P9', 1);
INSERT INTO ALTERNATIVAS VALUES ('A34', 'b) Los cambios físicos que aparecen en la pubertad.', 'F', 'P9', 0);
INSERT INTO ALTERNATIVAS VALUES ('A35', 'c) Las glándulas encargadas de producir las hormonas sexuales.', 'F', 'P9', 0);
INSERT INTO ALTERNATIVAS VALUES ('A36', 'd) Las hormonas sexuales producidas por hombres y mujeres.', 'F', 'P9', 0);
INSERT INTO ALTERNATIVAS VALUES ('A37', 'a) Gameto femenino', 'F', 'P9', 0);
INSERT INTO ALTERNATIVAS VALUES ('A38', 'b) Órgano productor de hormonas', 'F', 'P9', 0);
INSERT INTO ALTERNATIVAS VALUES ('A39', 'c) Gameto masculino', 'V', 'P9', 1);
INSERT INTO ALTERNATIVAS VALUES ('A40', 'd) Ninguna de las anteriores', 'F', 'P9', 0);


INSERT INTO PREGUNTAS VALUES ('P11','1. El aire que acabas de inhalar es rico en: ',1);
INSERT INTO PREGUNTAS VALUES ('P12','2. El intercambio de dióxido de carbono por oxígeno se lleva a cabo en: ',1);
INSERT INTO PREGUNTAS VALUES ('P13','3. Que gas es principalmente necesario para las reacciones químicas en la célula:',1);
INSERT INTO PREGUNTAS VALUES ('P14','4. En relación al contenido del aire inspirado y espirado, es correcto que:',1);
INSERT INTO PREGUNTAS VALUES ('P15','5. Dentro del cuerpo, la tráquea se divide en dos: ',1);
INSERT INTO PREGUNTAS VALUES ('P16','6. ¿A qué se debe que durante la carrera, el atleta note que su pulso y frecuencia respiratoria aumenta?',1);
INSERT INTO PREGUNTAS VALUES ('P17','7. El sistema respiratorio está formado principalmente por:',1);
INSERT INTO PREGUNTAS VALUES ('P18','8. ¿Cuál es el principal órgano respiratorio?',1);
INSERT INTO PREGUNTAS VALUES ('P19','9. ¿Cuál es el componente del humo de tabaco con propiedades adictivas?',1);
INSERT INTO PREGUNTAS VALUES ('P20','10. Debido a una enfermedad un hombre ha perdido gran parte de sus alvéolos. ¿Qué función de su sistema respiratorio se vería afectada?',1);
        
        
INSERT INTO ALTERNATIVAS VALUES ('A41', 'a) dióxido de carbono. ', 'F', 'P11',0);
INSERT INTO ALTERNATIVAS VALUES ('A42', 'b) vapor de agua. ', 'F', 'P11',0);
INSERT INTO ALTERNATIVAS VALUES ('A43', 'c) oxígeno. ', 'V', 'P11',1);
INSERT INTO ALTERNATIVAS VALUES ('A44', 'd) hidrógeno.', 'F', 'P11',0);
INSERT INTO ALTERNATIVAS VALUES ('A45', 'a) Los alvéolos. ', 'V', 'P12',1);
INSERT INTO ALTERNATIVAS VALUES ('A46', 'b) la tráquea. ', 'F', 'P12',0);
INSERT INTO ALTERNATIVAS VALUES ('A47', 'c) las ventanillas. ', 'F', 'P12',0);
INSERT INTO ALTERNATIVAS VALUES ('A48', 'd) el diafragma.', 'F', 'P12',0);
INSERT INTO ALTERNATIVAS VALUES ('A49', 'a) Oxígeno', 'V', 'P13',1);
INSERT INTO ALTERNATIVAS VALUES ('A50', 'b) Nitrógeno', 'F', 'P13',0);
INSERT INTO ALTERNATIVAS VALUES ('A51', 'c) Dióxido de carbono', 'F', 'P13',0);
INSERT INTO ALTERNATIVAS VALUES ('A52', 'd) Hidrógeno', 'F', 'P13',0);
INSERT INTO ALTERNATIVAS VALUES ('A53', 'a) el aire inspirado contiene menos oxígeno', 'F', 'P14',0);
INSERT INTO ALTERNATIVAS VALUES ('A54', 'b) el aire espirado contiene menos oxígeno', 'V', 'P14',0.5);
INSERT INTO ALTERNATIVAS VALUES ('A55', 'c) el contenido de dióxido de carbono es mayor en el aire espirado', 'V', 'P14',0.5);
INSERT INTO ALTERNATIVAS VALUES ('A56', 'd) el aire espirado contiene más nitrógeno.', 'F', 'P14',0);
INSERT INTO ALTERNATIVAS VALUES ('A57', 'a) alvéolos. ', 'F', 'P15',0);
INSERT INTO ALTERNATIVAS VALUES ('A58', 'b) ventanillas. ', 'F', 'P15',0);
INSERT INTO ALTERNATIVAS VALUES ('A59', 'c) músculos. ', 'F', 'P15',0);
INSERT INTO ALTERNATIVAS VALUES ('A60', 'd) bronquios.', 'V', 'P15',1);            
INSERT INTO ALTERNATIVAS VALUES ('A61', 'a) Su preparación para la carrera no ha sido adecuada.', 'F', 'P16',0);
INSERT INTO ALTERNATIVAS VALUES ('A62', 'b) Su corazón se acelera para bombear más rápido la sangre', 'V', 'P16',0.5);
INSERT INTO ALTERNATIVAS VALUES ('A63', 'c) Requiere más oxígeno y este debe ser trasladado rápidamente a las células de su cuerpo', 'V', 'P16',0.5);
INSERT INTO ALTERNATIVAS VALUES ('A64', 'd) Sus pulmones necesitan más oxígeno y para ello el corazón aumenta sus latidos', 'F', 'P16',0);
INSERT INTO ALTERNATIVAS VALUES ('A65', 'a) las fosas nasales, el esófago, la tráquea, los bronquios y los pulmones.', 'F', 'P17',0);
INSERT INTO ALTERNATIVAS VALUES ('A66', 'b) las fosas nasales, la laringe los pulmones. ', 'V', 'P17',0.5);
INSERT INTO ALTERNATIVAS VALUES ('A67', 'c) las fosas nasales, los bronquios y los pulmones. ', 'V', 'P17',0.5);
INSERT INTO ALTERNATIVAS VALUES ('A68', 'd) las fosas nasales, las cuerdas vocales, estomago, los bronquios y los pulmones.', 'F', 'P17',0);
INSERT INTO ALTERNATIVAS VALUES ('A69', 'a) Laringe.', 'F', 'P18',0);
INSERT INTO ALTERNATIVAS VALUES ('A70', 'b) Faringe.', 'F', 'P18',0);
INSERT INTO ALTERNATIVAS VALUES ('A71', 'c) El corazón.', 'F', 'P18',0);
INSERT INTO ALTERNATIVAS VALUES ('A72', 'd) Los pulmones.', 'V', 'P18',1);
INSERT INTO ALTERNATIVAS VALUES ('A73', 'a) Nicotina.', 'V', 'P19',1);
INSERT INTO ALTERNATIVAS VALUES ('A74', 'b) Tolueno.', 'F', 'P19',0);
INSERT INTO ALTERNATIVAS VALUES ('A75', 'c) Alquitrán.', 'F', 'P19',0);
INSERT INTO ALTERNATIVAS VALUES ('A76', 'd) Amoniaco.', 'F', 'P19',0);
INSERT INTO ALTERNATIVAS VALUES ('A77', 'a) Inspiración. ', 'F', 'P20',0);
INSERT INTO ALTERNATIVAS VALUES ('A78', 'b) Intercambio gaseoso. ', 'V', 'P20',1);
INSERT INTO ALTERNATIVAS VALUES ('A79', 'c) Transporte de oxígeno.', 'F', 'P20',0);
INSERT INTO ALTERNATIVAS VALUES ('A80', 'd) Transporte de dióxido de carbono.', 'F', 'P20',0);        
        
  

        
INSERT INTO RESULTADOS VALUES (1,10,7,1,10);        
INSERT INTO RESULTADOS VALUES (2,4,3,1,11); 
INSERT INTO RESULTADOS VALUES (3,5,4,1,12); 
INSERT INTO RESULTADOS VALUES (4,3,2,1,13);   
INSERT INTO RESULTADOS VALUES (5,9,6,1,14);   
INSERT INTO RESULTADOS VALUES (6,10,7,2,20);   
INSERT INTO RESULTADOS VALUES (7,8,6,2,21);   
INSERT INTO RESULTADOS VALUES (8,2,1,2,22);   
INSERT INTO RESULTADOS VALUES (9,6,5,2,23);   
INSERT INTO RESULTADOS VALUES (10,8,6,2,24);   
        
        
-CONSULTAS
SELECT * FROM EXAMEN E
 INNER JOIN PREGUNTAS P
ON E.ID_TEST= P.TEST_ID_TEST 






-1
SELECT cursos_id_curso AS curso,COUNT (id_test) AS numero_de_examenes FROM examen e
JOIN cursos c
ON e.cursos_id_curso=c.id_curso
WHERE id_test IN (1,2,3,4,5)
GROUP BY cursos_id_curso
ORDER BY cursos_id_curso ASC;


-2
SELECT nombre_curso FROM examen e
RIGHT JOIN cursos c
ON e.cursos_id_curso=c.id_curso
WHERE id_test is null;



---3
/*SI NO TIENE PREGUNTAS*/

SELECT nombre,descripcion,programa,modulo,autor FROM examen e
FULL JOIN preguntas p
ON e.id_test=p.test_id_test
WHERE test_id_test is null;


/*SI HAY PREGUNTAS CON 2 O MENOS ALTERNATIVAS*/


SELECT nombre AS prueba_deficiente,descripcion,programa,modulo,autor,id_question AS alternativa_erronea
FROM preguntas p
JOIN examen e
ON p.test_id_test=e.id_test
JOIN alternativas a
ON p.id_question=a.preguntas_id_question
GROUP BY nombre,descripcion,programa,modulo,autor,id_question
HAVING COUNT (preguntas_id_question)<=2;


/*SI TODAS LAS ALTERNATIVAS SON CORRETAS O SON TODAS INCORRECTAS*/

SELECT nombre,preguntas_id_question AS todasVoF,choice FROM preguntas p
JOIN examen e
ON p.test_id_test=e.id_test
JOIN alternativas a
ON p.id_question=a.preguntas_id_question
GROUP BY nombre,preguntas_id_question,choice
HAVING COUNT (choice)=4;

---4

SELECT COUNT (name_alumno) AS numero_alumnos,nombre_curso FROM alumnos a
JOIN cursos c
ON a.cursos_id_curso=c.id_curso
GROUP BY nombre_curso;

---5
---Obtener el puntaje no normalizado de cada evaluación.

---TABLA AGREGADA DESPUES

CREATE TABLE respuestas (id_respuesta integer);

ALTER TABLE respuestas ADD CONSTRAINT respuestas_pk PRIMARY KEY (id_respuesta);

 

SELECT SUM (puntaje)-(SELECT COUNT (choice)/(4) FROM alternativas a
JOIN respuestas r
ON a.id_alter=r.a_id_alter
WHERE choice='F') AS puntaje_no_normalizado,name_alumno AS nombre_alumno
FROM alternativas a
JOIN respuestas r
ON a.id_alter=r.a_id_alter
JOIN alumnos m
ON r.alumnos_id_alumno=m.id_alumno
GROUP BY name_alumno;
        
-6
---Obtener el puntaje normalizado, o sea, de 1,0 a 7,0.


SELECT PUNTAJE, NOTA AS NOTA_EVAL, NAME_ALUMNO AS NOMBRE_ALUMNO, CURSOS_ID_CURSO AS CURSO 
FROM ALUMNOS A
JOIN RESULTADOS R ON A.ID_ALUMNO=R.ALUMNOS_ID_ALUMNO
GROUP BY CURSOS_ID_CURSO, PUNTAJE, NOTA, NAME_ALUMNO
ORDER BY CURSOS_ID_CURSO;
       
        
        ---Nombre de estudiantes de un curso determinado que aprueban
---una evaluación determinada

SELECT name_alumno AS nombre_aprobados,nota,nombre AS nombre_prueba FROM alumnos a
JOIN resultados r
ON a.id_alumno=r.alumnos_id_alumno
JOIN examen e
ON e.id_test=r.test_id_test
WHERE nota>=4;


---8
---Nota promedio de los estudiantes de un curso determinado
---para una evaluación de terminada.


SELECT AVG (nota) AS promedio_curso,nombre FROM examen e
JOIN resultados r
ON e.id_test=r.test_id_test
WHERE cursos_id_curso=5
GROUP BY nombre;
     
        