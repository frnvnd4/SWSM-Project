
/* ARDUINO 1 */

CREATE TABLE PARAMETROS (ID SERIAL NOT NULL, NOMBRE VARCHAR(50), MINIMO FLOAT, MAXIMO FLOAT);

INSERT INTO PARAMETROS (NOMBRE, MINIMO, MAXIMO) VALUES ('Temperatura', 8, 38);
INSERT INTO PARAMETROS (NOMBRE, MINIMO, MAXIMO) VALUES ('Sonido', 20, 200);
INSERT INTO PARAMETROS (NOMBRE, MINIMO, MAXIMO) VALUES ('Dioxido de carbono (CO2)', 100, 1200);
INSERT INTO PARAMETROS (NOMBRE, MINIMO, MAXIMO) VALUES ('Monoxido de carbono (CO)', 250, 1500);
INSERT INTO PARAMETROS (NOMBRE, MINIMO, MAXIMO) VALUES ('Tolueno (C7H8)', 320, 1400);
INSERT INTO PARAMETROS (NOMBRE, MINIMO, MAXIMO) VALUES ('Amoniaco (NH3)', 170, 1340);

CREATE TABLE TIEMPO_REAL (PARAMETRO VARCHAR(50) NOT NULL, VALOR FLOAT NOT NULL);

INSERT INTO TIEMPO_REAL (PARAMETRO, VALOR) VALUES ('Temperatura', 23);
INSERT INTO TIEMPO_REAL (PARAMETRO, VALOR) VALUES ('Sonido', 220);
INSERT INTO TIEMPO_REAL (PARAMETRO, VALOR) VALUES ('Dioxido de carbono (CO2)', 540);
INSERT INTO TIEMPO_REAL (PARAMETRO, VALOR) VALUES ('Monoxido de carbono (CO)', 410);
INSERT INTO TIEMPO_REAL (PARAMETRO, VALOR) VALUES ('Tolueno (C7H8)', 620);
INSERT INTO TIEMPO_REAL (PARAMETRO, VALOR) VALUES ('Amoniaco (NH3)', 340);

CREATE TABLE CONTADORES_INCIDENCIAS (PARAMETRO VARCHAR(50) NOT NULL,VALOR NUMERIC NOT NULL);

INSERT INTO CONTADORES_INCIDENCIAS (PARAMETRO, VALOR) VALUES ('Temperatura', 4);
INSERT INTO CONTADORES_INCIDENCIAS (PARAMETRO, VALOR) VALUES ('Sonido', 3);
INSERT INTO CONTADORES_INCIDENCIAS (PARAMETRO, VALOR) VALUES ('Dioxido de carbono (CO2)', 4);
INSERT INTO CONTADORES_INCIDENCIAS (PARAMETRO, VALOR) VALUES ('Monoxido de carbono (CO)', 3);
INSERT INTO CONTADORES_INCIDENCIAS (PARAMETRO, VALOR) VALUES ('Tolueno (C7H8)', 2);
INSERT INTO CONTADORES_INCIDENCIAS (PARAMETRO, VALOR) VALUES ('Amoniaco (NH3)', 1);

CREATE TABLE INCIDENCIAS_TEMPERATURA (ID SERIAL NOT NULL,FECHA_Y_HORA VARCHAR(50),VALOR NUMERIC NOT NULL);

INSERT INTO INCIDENCIAS_TEMPERATURA (FECHA_Y_HORA, VALOR) VALUES ('01/06/2022 10:02:16 pm', 51.6);
INSERT INTO INCIDENCIAS_TEMPERATURA (FECHA_Y_HORA, VALOR) VALUES ('01/06/2022 11:07:34 pm', 53.5);
INSERT INTO INCIDENCIAS_TEMPERATURA (FECHA_Y_HORA, VALOR) VALUES ('01/06/2022 09:03:45 pm', 43.5);
INSERT INTO INCIDENCIAS_TEMPERATURA (FECHA_Y_HORA, VALOR) VALUES ('01/06/2022 03:35:41 pm', 41.3);
INSERT INTO INCIDENCIAS_TEMPERATURA (FECHA_Y_HORA, VALOR) VALUES ('02/06/2022 10:02:16 pm', 51.6);
INSERT INTO INCIDENCIAS_TEMPERATURA (FECHA_Y_HORA, VALOR) VALUES ('04/06/2022 11:07:34 pm', 53.5);
INSERT INTO INCIDENCIAS_TEMPERATURA (FECHA_Y_HORA, VALOR) VALUES ('05/06/2022 09:03:45 pm', 43.5);
INSERT INTO INCIDENCIAS_TEMPERATURA (FECHA_Y_HORA, VALOR) VALUES ('05/06/2022 03:35:41 pm', 41.3);

CREATE TABLE INCIDENCIAS_SONIDO (ID SERIAL NOT NULL, FECHA_Y_HORA VARCHAR(50), VALOR NUMERIC NOT NULL);

INSERT INTO INCIDENCIAS_SONIDO (FECHA_Y_HORA, VALOR) VALUES ('01/06/2022 10:02:16 pm', 207.4);
INSERT INTO INCIDENCIAS_SONIDO (FECHA_Y_HORA, VALOR) VALUES ('01/06/2022 11:34:06 pm', 211.6);
INSERT INTO INCIDENCIAS_SONIDO (FECHA_Y_HORA, VALOR) VALUES ('01/06/2022 08:23:47 am', 209.3);

CREATE TABLE INCIDENCIAS_DIOXIDO(ID SERIAL NOT NULL,FECHA_Y_HORA VARCHAR(50),VALOR NUMERIC NOT NULL);

INSERT INTO INCIDENCIAS_DIOXIDO (FECHA_Y_HORA, VALOR) VALUES ('01/06/2022 10:02:16 pm', 84.3);
INSERT INTO INCIDENCIAS_DIOXIDO (FECHA_Y_HORA, VALOR) VALUES ('01/06/2022 02:34:06 pm', 82.1);
INSERT INTO INCIDENCIAS_DIOXIDO (FECHA_Y_HORA, VALOR) VALUES ('01/06/2022 07:25:41 pm', 81.5);

CREATE TABLE INCIDENCIAS_MONOXIDO(ID SERIAL NOT NULL,FECHA_Y_HORA VARCHAR(50),VALOR NUMERIC NOT NULL);

INSERT INTO INCIDENCIAS_MONOXIDO (FECHA_Y_HORA, VALOR) VALUES ('04/06/2022 10:40:16 am', 85.3);
INSERT INTO INCIDENCIAS_MONOXIDO (FECHA_Y_HORA, VALOR) VALUES ('04/06/2022 02:30:06 pm', 90.1);
INSERT INTO INCIDENCIAS_MONOXIDO (FECHA_Y_HORA, VALOR) VALUES ('04/06/2022 06:25:41 pm', 144.5);

CREATE TABLE INCIDENCIAS_TOLUENO(ID SERIAL NOT NULL,FECHA_Y_HORA VARCHAR(50),VALOR NUMERIC NOT NULL);

INSERT INTO INCIDENCIAS_TOLUENO (FECHA_Y_HORA, VALOR) VALUES ('05/06/2022 10:34:16 am', 89.3);
INSERT INTO INCIDENCIAS_TOLUENO (FECHA_Y_HORA, VALOR) VALUES ('05/06/2022 02:31:06 pm', 100.1);
INSERT INTO INCIDENCIAS_TOLUENO (FECHA_Y_HORA, VALOR) VALUES ('05/06/2022 06:55:41 pm', 156.5);

CREATE TABLE INCIDENCIAS_AMONIACO(ID SERIAL NOT NULL,FECHA_Y_HORA VARCHAR(50),VALOR NUMERIC NOT NULL);

INSERT INTO INCIDENCIAS_AMONIACO (FECHA_Y_HORA, VALOR) VALUES ('07/06/2022 10:12:16 am', 120.3);
INSERT INTO INCIDENCIAS_AMONIACO (FECHA_Y_HORA, VALOR) VALUES ('07/06/2022 02:50:06 pm', 130.1);
INSERT INTO INCIDENCIAS_AMONIACO (FECHA_Y_HORA, VALOR) VALUES ('07/06/2022 05:55:41 pm', 116.5);

/* ARDUINO 2 */

CREATE TABLE PARAMETROS (
    ID SERIAL NOT NULL,
    NOMBRE VARCHAR(50),
    MINIMO FLOAT,
    MAXIMO FLOAT
);

INSERT INTO PARAMETROS (NOMBRE, MINIMO, MAXIMO) VALUES ('Temperatura', 8, 34);
INSERT INTO PARAMETROS (NOMBRE, MINIMO, MAXIMO) VALUES ('Sonido', 20, 250);
INSERT INTO PARAMETROS (NOMBRE, MINIMO, MAXIMO) VALUES ('Dioxido de carbono (CO2)', 100, 1450);
INSERT INTO PARAMETROS (NOMBRE, MINIMO, MAXIMO) VALUES ('Monoxido de carbono (CO)', 200, 1400);
INSERT INTO PARAMETROS (NOMBRE, MINIMO, MAXIMO) VALUES ('Tolueno (C7H8)', 300, 1460);
INSERT INTO PARAMETROS (NOMBRE, MINIMO, MAXIMO) VALUES ('Amoniaco (NH3)', 140, 1350);

CREATE TABLE TIEMPO_REAL (
    PARAMETRO VARCHAR(50) NOT NULL,
    VALOR FLOAT NOT NULL
);

INSERT INTO TIEMPO_REAL (PARAMETRO, VALOR) VALUES ('Temperatura', 25);
INSERT INTO TIEMPO_REAL (PARAMETRO, VALOR) VALUES ('Sonido', 214);
INSERT INTO TIEMPO_REAL (PARAMETRO, VALOR) VALUES ('Dioxido de carbono (CO2)', 1223);
INSERT INTO TIEMPO_REAL (PARAMETRO, VALOR) VALUES ('Monoxido de carbono (CO)', 1442);
INSERT INTO TIEMPO_REAL (PARAMETRO, VALOR) VALUES ('Tolueno (C7H8)', 755);
INSERT INTO TIEMPO_REAL (PARAMETRO, VALOR) VALUES ('Amoniaco (NH3)', 370);

CREATE TABLE CONTADORES_INCIDENCIAS (
    PARAMETRO VARCHAR(50) NOT NULL,
    VALOR NUMERIC NOT NULL
);

INSERT INTO CONTADORES_INCIDENCIAS (PARAMETRO, VALOR) VALUES ('Temperatura', 2);
INSERT INTO CONTADORES_INCIDENCIAS (PARAMETRO, VALOR) VALUES ('Sonido', 3);
INSERT INTO CONTADORES_INCIDENCIAS (PARAMETRO, VALOR) VALUES ('Dioxido de carbono (CO2)', 4);
INSERT INTO CONTADORES_INCIDENCIAS (PARAMETRO, VALOR) VALUES ('Monoxido de carbono (CO)', 2);
INSERT INTO CONTADORES_INCIDENCIAS (PARAMETRO, VALOR) VALUES ('Tolueno (C7H8)', 5);
INSERT INTO CONTADORES_INCIDENCIAS (PARAMETRO, VALOR) VALUES ('Amoniaco (NH3)', 1);




CREATE TABLE INCIDENCIAS_TEMPERATURA (
    ID SERIAL NOT NULL,
    FECHA_Y_HORA VARCHAR(50),
    VALOR NUMERIC NOT NULL
);

INSERT INTO INCIDENCIAS_TEMPERATURA (FECHA_Y_HORA, VALOR) VALUES ('01/06/2022 10:02:16 pm', 45.3);
INSERT INTO INCIDENCIAS_TEMPERATURA (FECHA_Y_HORA, VALOR) VALUES ('01/06/2022 11:07:34 pm', 51.5);
INSERT INTO INCIDENCIAS_TEMPERATURA (FECHA_Y_HORA, VALOR) VALUES ('01/06/2022 09:03:45 pm', 36.5);
INSERT INTO INCIDENCIAS_TEMPERATURA (FECHA_Y_HORA, VALOR) VALUES ('01/06/2022 03:35:41 pm', 65.3);
INSERT INTO INCIDENCIAS_TEMPERATURA (FECHA_Y_HORA, VALOR) VALUES ('02/06/2022 10:02:16 pm', 47.6);
INSERT INTO INCIDENCIAS_TEMPERATURA (FECHA_Y_HORA, VALOR) VALUES ('04/06/2022 11:07:34 pm', 51.3);
INSERT INTO INCIDENCIAS_TEMPERATURA (FECHA_Y_HORA, VALOR) VALUES ('05/06/2022 09:03:45 pm', 42.5);
INSERT INTO INCIDENCIAS_TEMPERATURA (FECHA_Y_HORA, VALOR) VALUES ('05/06/2022 03:35:41 pm', 41.3);

CREATE TABLE INCIDENCIAS_SONIDO (
    ID SERIAL NOT NULL,
    FECHA_Y_HORA VARCHAR(50),
    VALOR NUMERIC NOT NULL
);

INSERT INTO INCIDENCIAS_SONIDO (FECHA_Y_HORA, VALOR) VALUES ('01/06/2022 10:02:16 pm', 223.4);
INSERT INTO INCIDENCIAS_SONIDO (FECHA_Y_HORA, VALOR) VALUES ('01/06/2022 11:34:06 pm', 251.6);
INSERT INTO INCIDENCIAS_SONIDO (FECHA_Y_HORA, VALOR) VALUES ('01/06/2022 08:23:47 am', 239.1);

CREATE TABLE INCIDENCIAS_DIOXIDO(
    ID SERIAL NOT NULL,
    FECHA_Y_HORA VARCHAR(50),
    VALOR NUMERIC NOT NULL
);

INSERT INTO INCIDENCIAS_DIOXIDO (FECHA_Y_HORA, VALOR) VALUES ('01/06/2022 10:02:16 pm', 83.3);
INSERT INTO INCIDENCIAS_DIOXIDO (FECHA_Y_HORA, VALOR) VALUES ('01/06/2022 02:34:06 pm', 70.1);
INSERT INTO INCIDENCIAS_DIOXIDO (FECHA_Y_HORA, VALOR) VALUES ('01/06/2022 07:25:41 pm', 76.5);

CREATE TABLE INCIDENCIAS_MONOXIDO(
    ID SERIAL NOT NULL,
    FECHA_Y_HORA VARCHAR(50),
    VALOR NUMERIC NOT NULL
);

INSERT INTO INCIDENCIAS_MONOXIDO (FECHA_Y_HORA, VALOR) VALUES ('04/06/2022 10:40:16 am', 82.3);
INSERT INTO INCIDENCIAS_MONOXIDO (FECHA_Y_HORA, VALOR) VALUES ('04/06/2022 02:30:06 pm', 93.8);
INSERT INTO INCIDENCIAS_MONOXIDO (FECHA_Y_HORA, VALOR) VALUES ('04/06/2022 06:25:41 pm', 124.5);

CREATE TABLE INCIDENCIAS_TOLUENO(
    ID SERIAL NOT NULL,
    FECHA_Y_HORA VARCHAR(50),
    VALOR NUMERIC NOT NULL
);

INSERT INTO INCIDENCIAS_TOLUENO (FECHA_Y_HORA, VALOR) VALUES ('05/06/2022 10:34:16 am', 453.3);
INSERT INTO INCIDENCIAS_TOLUENO (FECHA_Y_HORA, VALOR) VALUES ('05/06/2022 02:31:06 pm', 120.1);
INSERT INTO INCIDENCIAS_TOLUENO (FECHA_Y_HORA, VALOR) VALUES ('05/06/2022 06:55:41 pm', 176.5);

CREATE TABLE INCIDENCIAS_AMONIACO(
    ID SERIAL NOT NULL,
    FECHA_Y_HORA VARCHAR(50),
    VALOR NUMERIC NOT NULL
);

INSERT INTO INCIDENCIAS_AMONIACO (FECHA_Y_HORA, VALOR) VALUES ('07/06/2022 10:12:16 am', 140.1);
INSERT INTO INCIDENCIAS_AMONIACO (FECHA_Y_HORA, VALOR) VALUES ('07/06/2022 02:50:06 pm', 129.7);
INSERT INTO INCIDENCIAS_AMONIACO (FECHA_Y_HORA, VALOR) VALUES ('07/06/2022 05:55:41 pm', 156.5);