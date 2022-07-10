--Creacion de DATE (Crear Date)

ALTER SESSION SET NLS_DATE_FORMAT= 'DD/MM/YYYY';

--Creacion de tablas

CREATE TABLE afiliados (
    id_afiliados                NUMBER NOT NULL,
    primer_nombre               VARCHAR2(250) NOT NULL,
    segundo_nombre              VARCHAR2(250) NULL,
    apellido_paterno            VARCHAR2(250) NOT NULL,
    apellido_materno            VARCHAR2(250) NULL,
    pasaporte                   VARCHAR2(20) NULL,
    rut                         NUMBER(8)  NULL,
    digito_verificador          VARCHAR2(1) NULL,
    correo_electronico          VARCHAR2(250) NOT NULL,
    fecha_nacimiento            DATE NOT NULL,
    direccion                   VARCHAR2(250) NOT NULL,
    comunas_id                  NUMBER NOT NULL,
    estado_de_solicitud_id      NUMBER NOT NULL,
    nacionalidad_id             NUMBER NOT NULL
);

CREATE TABLE nacionalidad (
    id_nacionalidad             NUMBER NOT NULL,
    pais                        VARCHAR(250) NOT NULL
);

CREATE TABLE carga (
    id_carga                    NUMBER NOT NULL,
    primer_nombre_carga         VARCHAR2(250) NOT NULL,
    segundo_nombre_carga        VARCHAR2(250) NULL,
    apellido_paterno_carga      VARCHAR2(250) NOT NULL,
    apellido_materno_carga      VARCHAR2(250) NULL,
    rut_carga                   NUMBER(8) NOT NULL,
    digito_verificador_carga    VARCHAR2(1) NOT NULL,
    fecha_nacimiento_carga      DATE NOT NULL,
    afiliados_carga_id          NUMBER NOT NULL,
    estado_civil_id             NUMBER NULL,
    parentesco_id               NUMBER NOT NULL
);

CREATE TABLE parentesco (
    id_parentesco               NUMBER NOT NULL,
    parentesco_con_la_carga     VARCHAR2(250) NOT NULL
);

CREATE TABLE estado_civil (
    id_estadocivil              NUMBER NOT NULL,
    acuerdo_civil               VARCHAR(250) NOT NULL
);

CREATE TABLE estado_de_solicitud (
    id_solicitud                NUMBER NOT NULL,
    fecha_registro_de_solicitud DATE NOT NULL,
    estado_solicitud            VARCHAR2(250)
);

CREATE TABLE telefonos (
    id_telefonos                NUMBER NOT NULL,
    numero_de_telefono          NUMBER(8) NOT NULL,
    afiliados_telefonos_id       NUMBER NOT NULL,
    tipos_de_telefonos_id       NUMBER NOT NULL
);

CREATE TABLE tipos_de_telefonos (
    id_tipodetelefono           NUMBER NOT NULL,
    tipo_de_telefono            VARCHAR2(250) NOT NULL
);

CREATE TABLE pagos (
    id_pagos                    NUMBER NOT NULL,
    fecha_de_pago               DATE NOT NULL,
    valor_a_pagar               NUMBER(38) NOT NULL,
    bancos_id                   NUMBER NOT NULL,
    cheques_id                  NUMBER NULL,
    formas_de_pago_id           NUMBER NULL,
    afiliados_pagos_id          NUMBER NOT NULL,
    tipopago_pagos_id           NUMBER NULL
);

CREATE TABLE formas_de_pagos (
    id_formasdepago             NUMBER NOT NULL,
    forma_de_pago               VARCHAR2(250) NOT NULL
);

CREATE TABLE cheques (
    id_cheque                   NUMBER NOT NULL,
    numero_de_cheque            NUMBER(9) NOT NULL
);

CREATE TABLE bancos (
    id_banco                    NUMBER NOT NULL,
    nombre_banco                VARCHAR2(250) NOT NULL
);

CREATE TABLE comunas (
    id_comuna                   NUMBER NOT NULL,
    nombre_comuna               VARCHAR2(250) NOT NULL,
    provincias_id               NUMBER NOT NULL
);

CREATE TABLE provincias (
    id_provincia                NUMBER NOT NULL,
    nombre_provincia            VARCHAR2(250) NOT NULL,
    regiones_id                 NUMBER NOT NULL
);

CREATE TABLE regiones (
    id_region                   NUMBER NOT NULL,
    nombre_region               VARCHAR2(250) NOT NULL
);

CREATE TABLE vehiculo (
    id_vehiculo                 NUMBER NOT NULL,
    patente                     VARCHAR2(20) NOT NULL,
    numero_chasis               NUMBER(20) NOT NULL,
    numero_motor                NUMBER(20) NOT NULL,
    afiliado_vehiculo_id        NUMBER NOT NULL,
    modelosveh_vehiculo_id      NUMBER NOT NULL,
    coloresveh_vehiculos_id     NUMBER NOT NULL,
    tiposveh_vehiculos_id       NUMBER NOT NULL
);

CREATE TABLE colores_de_vehiculos (
    id_color                    NUMBER NOT NULL,
    color_vehiculo              VARCHAR2(250) NOT NULL
);

CREATE TABLE marcas_de_vehiculos (
    id_marca                    NUMBER NOT NULL,
    marca_vehiculo              VARCHAR(250) NOT NULL
);

CREATE TABLE modelos_de_vehiculos (
    id_modelo                   NUMBER NOT NULL,
    modelo_vehiculo             VARCHAR2(250) NOT NULL,
    marca_modelo_id             NUMBER NOT NULL
);

CREATE TABLE tipos_de_vehiculos (
    id_tipovehiculo             NUMBER NOT NULL,
    tipo_vehiculo               VARCHAR2(250) NOT NULL
);

CREATE TABLE estado_de_vehiculo (
    id_estadodevehiculo         NUMBER NOT NULL,
    estado                      VARCHAR2(250) NOT NULL,
    descuento_vehiculo          VARCHAR2(250) NOT NULL,
    aseguradora_estado_id       NUMBER NOT NULL,
    vehiculo_id                 NUMBER NOT NULL
);

CREATE TABLE aseguradora_de_vehiculo (
    id_aseguradora              NUMBER NOT NULL,
    nombre_aseguradora          VARCHAR2(250) NOT NULL,
    direccion_aseguradora       VARCHAR2(250) NOT NULL,
    empresa_aseguradora_id      NUMBER NOT NULL
);

CREATE TABLE empresa (
    id_empresa                  NUMBER NOT NULL,
    nombre_empresa              VARCHAR2(250) NOT NULL,
    direccion_empresa           VARCHAR2(250) NOT NULL,
    comunas_empresa_id          NUMBER NOT NULL
);

CREATE TABLE sindicato (
    id_sindicato                NUMBER NOT NULL,
    nombre_de_sindicato         VARCHAR2(250) NOT NULL,
    empresa_sindicato_id        NUMBER NOT NULL
);

CREATE TABLE beneficio_transporte (
    id_beneficiotransporte      NUMBER NOT NULL,
    tipo_de_transporte          VARCHAR2(250) NOT NULL,
    descuento_transporte        VARCHAR2(250) NOT NULL,
    sindicato_beneficiotrans_id NUMBER NOT NULL
);

CREATE TABLE beneficios (
    id_beneficio                NUMBER NOT NULL,
    descuento_beneficio         VARCHAR2(250) NOT NULL,
    nombre_de_beneficio         VARCHAR2(250) NOT NULL,
    cantidad_maxima_de_usos     NUMBER(20) NOT NULL,
    afiliados_beneficios_id     NUMBER NOT NULL,
    sindicato_beneficios_id     NUMBER NOT NULL
);

CREATE TABLE discapacidad_afiliado (
    id_discapacidad             NUMBER NOT NULL,
    discapacitado               VARCHAR(250) NOT NULL,
    afiliados_id                NUMBER NOT NULL,
    tipo_de_discapacidad_id     NUMBER NULL
);

CREATE TABLE tipo_de_discapacidad (
    id_tipodediscapacidad       NUMBER NOT NULL,
    nombre_de_discapacidad      VARCHAR2(250) NULL
);

CREATE TABLE tipos_de_pago (
    id_tipopago                 NUMBER NOT NULL,
    tipo_pago                   VARCHAR2(250) NOT NULL
);

--Creacion de PK

ALTER TABLE tipos_de_pago ADD CONSTRAINT tipos_de_pago_PK PRIMARY KEY (id_tipopago);
ALTER TABLE marcas_de_vehiculos ADD CONSTRAINT marcas_de_vehiculos_PK PRIMARY KEY (id_marca);
ALTER TABLE modelos_de_vehiculos ADD CONSTRAINT modelos_de_vehiculos_PK PRIMARY KEY (id_modelo);
ALTER TABLE colores_de_vehiculos ADD CONSTRAINT colores_de_vehiculos_PK PRIMARY KEY (id_color);
ALTER TABLE tipos_de_vehiculos ADD CONSTRAINT tipos_de_vehiculos_PK PRIMARY KEY (id_tipovehiculo);
ALTER TABLE afiliados ADD CONSTRAINT afiliados_PK PRIMARY KEY (id_afiliados);
ALTER TABLE nacionalidad ADD CONSTRAINT nacionalidad_PK PRIMARY KEY (id_nacionalidad);
ALTER TABLE carga ADD CONSTRAINT carga_PK PRIMARY KEY (id_carga);
ALTER TABLE parentesco ADD CONSTRAINT parentesco_PK PRIMARY KEY (id_parentesco);
ALTER TABLE estado_civil ADD CONSTRAINT estado_civil_PK PRIMARY KEY (id_estadocivil);
ALTER TABLE estado_de_solicitud ADD CONSTRAINT estado_de_solicitud_PK PRIMARY KEY (id_solicitud);
ALTER TABLE telefonos ADD CONSTRAINT telefonos_PK PRIMARY KEY (id_telefonos);
ALTER TABLE tipos_de_telefonos ADD CONSTRAINT tipos_de_telefonos_PK PRIMARY KEY (id_tipodetelefono);
ALTER TABLE pagos ADD CONSTRAINT pagos_PK PRIMARY KEY (id_pagos);
ALTER TABLE formas_de_pagos ADD CONSTRAINT formas_de_pagos_PK PRIMARY KEY (id_formasdepago);
ALTER TABLE cheques ADD CONSTRAINT cheques_PK PRIMARY KEY (id_cheque);
ALTER TABLE bancos ADD CONSTRAINT bancos_PK PRIMARY KEY (id_banco);
ALTER TABLE comunas ADD CONSTRAINT comunas_PK PRIMARY KEY (id_comuna);
ALTER TABLE provincias ADD CONSTRAINT provincias_PK PRIMARY KEY (id_provincia);
ALTER TABLE regiones ADD CONSTRAINT regiones_PK PRIMARY KEY (id_region);
ALTER TABLE vehiculo ADD CONSTRAINT vehiculo_PK PRIMARY KEY (id_vehiculo);
ALTER TABLE estado_de_vehiculo ADD CONSTRAINT estado_de_vehiculo_PK PRIMARY KEY (id_estadodevehiculo);
ALTER TABLE aseguradora_de_vehiculo ADD CONSTRAINT aseguradora_de_vehiculo_PK PRIMARY KEY (id_aseguradora);
ALTER TABLE empresa ADD CONSTRAINT empresa_PK PRIMARY KEY (id_empresa);
ALTER TABLE sindicato ADD CONSTRAINT sindicato_PK PRIMARY KEY (id_sindicato);
ALTER TABLE beneficio_transporte ADD CONSTRAINT beneficio_transporte PRIMARY KEY (id_beneficiotransporte);
ALTER TABLE beneficios ADD CONSTRAINT beneficios_PK PRIMARY KEY (id_beneficio);
ALTER TABLE discapacidad_afiliado ADD CONSTRAINT discapacidad_afiliado_PK PRIMARY KEY (id_discapacidad);
ALTER TABLE tipo_de_discapacidad ADD CONSTRAINT tipo_de_discapacidad_PK PRIMARY KEY (id_tipodediscapacidad);

--Creacion de FK

ALTER TABLE afiliados ADD CONSTRAINT afiliados_comunas_FK FOREIGN KEY (comunas_id)
    REFERENCES comunas (id_comuna);
ALTER TABLE comunas ADD CONSTRAINT comunas_provincia_FK FOREIGN KEY (provincias_id)
    REFERENCES provincias (id_provincia);
ALTER TABLE provincias ADD CONSTRAINT provincias_region_FK FOREIGN KEY (regiones_id)
    REFERENCES regiones (id_region);
ALTER TABLE afiliados ADD CONSTRAINT afiliados_solicitud_FK FOREIGN KEY (estado_de_solicitud_id)
    REFERENCES estado_de_solicitud (id_solicitud);
ALTER TABLE afiliados ADD CONSTRAINT afiliados_nacionalidad_FK FOREIGN KEY (nacionalidad_id)
    REFERENCES nacionalidad (id_nacionalidad);
ALTER TABLE discapacidad_afiliado ADD CONSTRAINT discapacidad_afiliado_FK FOREIGN KEY (afiliados_id)
    REFERENCES afiliados (id_afiliados);
ALTER TABLE discapacidad_afiliado ADD CONSTRAINT discapacidad_tipodiscapacidad_FK FOREIGN KEY (tipo_de_discapacidad_id)
    REFERENCES tipo_de_discapacidad (id_tipodediscapacidad);
ALTER TABLE telefonos ADD CONSTRAINT telefonos_afiliados FOREIGN KEY (afiliados_telefonos_id)
    REFERENCES afiliados (id_afiliados);
ALTER TABLE telefonos ADD CONSTRAINT telefonos_tipotelefonos_FK FOREIGN KEY (tipos_de_telefonos_id)
    REFERENCES tipos_de_telefonos (id_tipodetelefono);
ALTER TABLE pagos ADD CONSTRAINT pagos_bancos_FK FOREIGN KEY (bancos_id)
    REFERENCES bancos (id_banco);
ALTER TABLE pagos ADD CONSTRAINT pagos_cheques_FK FOREIGN KEY (cheques_id)
    REFERENCES cheques (id_cheque);
ALTER TABLE pagos ADD CONSTRAINT pagos_formasdepago_FK FOREIGN KEY (formas_de_pago_id)
    REFERENCES formas_de_pagos (id_formasdepago);
ALTER TABLE pagos ADD CONSTRAINT pagos_afiliados_FK FOREIGN KEY (afiliados_pagos_id)
    REFERENCES afiliados (id_afiliados);
ALTER TABLE carga ADD CONSTRAINT carga_afiliados_FK FOREIGN KEY (afiliados_carga_id)
    REFERENCES afiliados (id_afiliados);
ALTER TABLE carga ADD CONSTRAINT carga_estadocivil_FK FOREIGN KEY (estado_civil_id)
    REFERENCES estado_civil (id_estadocivil);
ALTER TABLE carga ADD CONSTRAINT carga_parentesco_FK FOREIGN KEY (parentesco_id)
    REFERENCES parentesco (id_parentesco);
ALTER TABLE beneficios ADD CONSTRAINT beneficios_afiliados_FK FOREIGN KEY (afiliados_beneficios_id)
    REFERENCES afiliados (id_afiliados);
ALTER TABLE beneficios ADD CONSTRAINT beneficios_sindicato_FK FOREIGN KEY (sindicato_beneficios_id)
    REFERENCES sindicato (id_sindicato);
ALTER TABLE sindicato ADD CONSTRAINT sindicato_empresa_FK FOREIGN KEY (empresa_sindicato_id)
    REFERENCES empresa (id_empresa);
ALTER TABLE empresa ADD CONSTRAINT empresa_comunas_FK FOREIGN KEY (comunas_empresa_id)
    REFERENCES comunas (id_comuna);
ALTER TABLE aseguradora_de_vehiculo ADD CONSTRAINT aseguradora_empresa_FK FOREIGN KEY (empresa_aseguradora_id)
    REFERENCES empresa (id_empresa);
ALTER TABLE estado_de_vehiculo ADD CONSTRAINT estado_aseguradora_FK FOREIGN KEY (aseguradora_estado_id)
    REFERENCES aseguradora_de_vehiculo (id_aseguradora);
ALTER TABLE estado_de_vehiculo ADD CONSTRAINT estado_vehiculo_FK FOREIGN KEY (vehiculo_id)
    REFERENCES vehiculo (id_vehiculo);
ALTER TABLE vehiculo ADD CONSTRAINT vehiculo_afiliado_FK FOREIGN KEY (afiliado_vehiculo_id)
    REFERENCES afiliados (id_afiliados);
ALTER TABLE beneficio_transporte ADD CONSTRAINT beneficiotrans_sindicato_FK FOREIGN KEY (sindicato_beneficiotrans_id)
    REFERENCES sindicato (id_sindicato);
ALTER TABLE modelos_de_vehiculos ADD CONSTRAINT modelo_marca_FK FOREIGN KEY (marca_modelo_id)
    REFERENCES marcas_de_vehiculos (id_marca);
ALTER TABLE vehiculo ADD CONSTRAINT vehiculo_modelo_FK FOREIGN KEY (modelosveh_vehiculo_id)
    REFERENCES modelos_de_vehiculos (id_modelo);
ALTER TABLE vehiculo ADD CONSTRAINT vehiculo_color_FK FOREIGN KEY (coloresveh_vehiculos_id)
    REFERENCES colores_de_vehiculos (id_color);
ALTER TABLE vehiculo ADD CONSTRAINT vehiculo_tipoveh_FK FOREIGN KEY (tiposveh_vehiculos_id)
    REFERENCES tipos_de_vehiculos (id_tipovehiculo);
ALTER TABLE pagos ADD CONSTRAINT pagos_tipopago_FK FOREIGN KEY (tipopago_pagos_id)
    REFERENCES tipos_de_pago (id_tipopago);

--Creacion de INSERT (Crear uno por uno de manera vertical descendiente)

INSERT INTO marcas_de_vehiculos VALUES (1,'Chevrolet');
INSERT INTO marcas_de_vehiculos VALUES (2,'Suzuki');
INSERT INTO modelos_de_vehiculos VALUES (1,'Camaro',1);
INSERT INTO modelos_de_vehiculos VALUES (2,'Spresso',2);
INSERT INTO colores_de_vehiculos VALUES (1,'Amarillo');
INSERT INTO colores_de_vehiculos VALUES (2,'Naranja');
INSERT INTO tipos_de_vehiculos VALUES (1,'Deportivo');
INSERT INTO tipos_de_vehiculos VALUES (2,'Camioneta');
INSERT INTO tipos_de_pago VALUES (1,'Cuotas');
INSERT INTO estado_civil VALUES (2,'Casado');
INSERT INTO estado_civil VALUES (1,'Sin estado civil');
INSERT INTO parentesco VALUES (1,'Hijo');
INSERT INTO parentesco VALUES (2,'Conyuge');
INSERT INTO nacionalidad VALUES (1,'Chile');
INSERT INTO nacionalidad VALUES (2,'Venezuela');
INSERT INTO estado_de_solicitud VALUES (1,'22/01/2022','ACEPTADA'); 
INSERT INTO regiones VALUES (1,'Region Metropolitana');
INSERT INTO regiones VALUES (2,'Maule');
INSERT INTO provincias VALUES (1,'Santiago',1); 
INSERT INTO provincias VALUES (2,'Talca',2);
INSERT INTO comunas VALUES (1,'San joaquin',1);
INSERT INTO comunas VALUES (2,'Rio claro',2);
INSERT INTO afiliados VALUES (1,'Jordan','','Navarro','','',20940071,'5','jord.navarro@duocuc.cl','22/12/2001','central oriente 123',1,1,1);
INSERT INTO afiliados VALUES (2,'Jesus','Cristo','Delgado','','64826404','','','Yisus@duocuc.cl','01/01/2004','Su casita 123',2,1,2);
INSERT INTO carga VALUES (1,'JordanJr','Twentytree','Navarro','',22940071,'k','01/01/2018',1,1,1);
INSERT INTO carga VALUES (2,'Juanita','','Delgado','',12345678,'0','01/01/2003',2,2,2);
INSERT INTO tipos_de_telefonos VALUES (1,'Celular');
INSERT INTO tipos_de_telefonos VALUES (2,'Fijo');
INSERT INTO telefonos VALUES (1,'35378516',1,1);
INSERT INTO telefonos VALUES (2,'52345629',2,2);
INSERT INTO formas_de_pagos VALUES (1,'Transferencia');
INSERT INTO cheques VALUES (1,'123456789');
INSERT INTO bancos VALUES (1,'Banco Estado');
INSERT INTO bancos VALUES (2,'Banco de chile');
INSERT INTO vehiculo VALUES (1,'HDR1234','123456789','987654321',1,1,1,1);
INSERT INTO vehiculo VALUES (2,'AWD8596','276527435','987324984',2,2,2,2);
INSERT INTO empresa VALUES (1,'SINTAC','Yal 123',1);
INSERT INTO aseguradora_de_vehiculo VALUES (1,'TU VEHICULO EN BUENAS MANOS','Estacion central 123',1);
INSERT INTO estado_de_vehiculo VALUES (1,'ACEPTADO','50%',1,1);
INSERT INTO estado_de_vehiculo VALUES (2,'ACEPTADO','60%',1,2);
INSERT INTO sindicato VALUES (1,'SYAC',1);
INSERT INTO beneficio_transporte VALUES (1,'Terrestre','30%',1);
INSERT INTO beneficio_transporte VALUES (2,'Maritimo','23,25%',1);
INSERT INTO beneficios VALUES (1,'15%','Vida del deportista','4',1,1);
INSERT INTO beneficios VALUES (2,'50%','Clinica dental Santa Maria','1',2,1);
INSERT INTO tipo_de_discapacidad VALUES (1,'No tiene discapacidad');
INSERT INTO tipo_de_discapacidad VALUES (2,'Esquizofrenia');
INSERT INTO discapacidad_afiliado VALUES (1,'No',1,1);
INSERT INTO discapacidad_afiliado VALUES (2,'Si',2,2);
INSERT INTO pagos VALUES (1,'09/07/2022',6000,1,1,'',1,1);
INSERT INTO pagos VALUES (2,'09/06/2022',100000,2,'',1,2,1);

--Creacion de SELECT

--SELECT con info del afiliado
SELECT 
    af.id_afiliados AS "ID",
    af.primer_nombre AS "Primer nombre",
    af.segundo_nombre AS "Segundo nombre",
    af.apellido_paterno AS "Apellido paterno",
    af.apellido_materno AS "Apellido materno",
    nac.pais AS "Nacionalidad",
    af.pasaporte AS "Numero de pasaporte",
    af.rut AS "Rut",
    af.digito_verificador AS "DV",
    af.correo_electronico AS "Correo electronico",
    af.fecha_nacimiento AS "Fecha de nacimiento",
    af.direccion AS "Direccion",
    co.nombre_comuna AS "Comuna",
    prov.nombre_provincia AS "Provincia",
    reg.nombre_region AS "Region",
    tf.numero_de_telefono AS "Numero de telefono",
    tptf.tipo_de_telefono AS "Tipo de telefono",
    disaf.discapacitado AS "Discapacitado",
    tpdis.nombre_de_discapacidad AS "Discapacidad"    
FROM afiliados af
    JOIN comunas co ON (af.comunas_id = co.id_comuna)
    JOIN provincias prov ON (co.provincias_id = prov.id_provincia)
    JOIN regiones reg ON (prov.regiones_id = reg.id_region)
    JOIN discapacidad_afiliado disaf ON (disaf.afiliados_id = af.id_afiliados)
    JOIN tipo_de_discapacidad tpdis ON (disaf.tipo_de_discapacidad_id = tpdis.id_tipodediscapacidad)
    JOIN telefonos tf ON (tf.afiliados_telefonos_id = af.id_afiliados)
    JOIN tipos_de_telefonos tptf ON (tf.tipos_de_telefonos_id = tptf.id_tipodetelefono)
    JOIN nacionalidad nac ON (af.nacionalidad_id = nac.id_nacionalidad);

--SELECT con info de la carga

SELECT 
    af.id_afiliados AS "ID",
    af.primer_nombre AS "Representante de la carga",
    af.rut AS "Rut del representante",    
    af.digito_verificador AS "DV del representante",
    af.pasaporte AS "Numero de pasaporte",
    ca.primer_nombre_carga AS "Primer nombre de la carga",
    ca.segundo_nombre_carga AS "Segundo nombre de la carga",
    ca.apellido_paterno_carga AS "Apellido paterno de la carga",
    ca.apellido_materno_carga AS "Apelido materno de la carga",
    ca.rut_carga AS "Rut de la carga",
    ca.digito_verificador_carga AS "DV de la carga",
    ca.fecha_nacimiento_carga AS "Fecha de nacimiento de la carga",
    par.parentesco_con_la_carga AS "Parentesco",
    estciv.acuerdo_civil AS "Estado civil"
FROM afiliados af
    JOIN carga ca ON (ca.afiliados_carga_id = af.id_afiliados)  
    JOIN parentesco par ON (ca.parentesco_id = par.id_parentesco)
    JOIN estado_civil estciv ON (ca.estado_civil_id = estciv.id_estadocivil);

--SELECT con info del vehiculo
  
SELECT
    af.id_afiliados AS "ID",
    af.primer_nombre AS "Dueño del vehiculo",
    af.rut AS "Rut del dueño",    
    af.digito_verificador AS "DV del dueño",
    af.pasaporte AS "Numero de pasaporte del dueño",
    veh.patente AS "Patente",
    veh.numero_chasis AS "Numero del chasis",
    veh.numero_motor AS "Numero del motor",
    marc.marca_vehiculo AS "Marca del vehiculo",
    mod.modelo_vehiculo AS "Modelo del vehiculo",
    color.color_vehiculo AS "Color del vehiculo",
    tpveh.tipo_vehiculo AS "Tipo de vehiculo"
FROM afiliados af
    JOIN vehiculo veh ON (veh.afiliado_vehiculo_id = af.id_afiliados)
    JOIN modelos_de_vehiculos mod ON (veh.modelosveh_vehiculo_id = mod.id_modelo)
    JOIN colores_de_vehiculos color ON (veh.coloresveh_vehiculos_id = color.id_color)
    JOIN tipos_de_vehiculos tpveh ON (veh.tiposveh_vehiculos_id = tpveh.id_tipovehiculo)
    JOIN marcas_de_vehiculos marc ON (mod.marca_modelo_id = marc.id_marca);
    
    
--SELECT con info del estado del vehiculo

SELECT
    af.id_afiliados AS "ID",
    af.primer_nombre AS "Dueño del vehiculo",
    af.rut AS "Rut del dueño",    
    af.digito_verificador AS "DV del dueño",
    af.pasaporte AS "Numero de pasaporte del dueño",
    veh.patente AS "Patente",
    aseg.nombre_aseguradora AS "Nombre de la aseguradora",
    aseg.direccion_aseguradora AS "Direccion de la aseguradora",
    estveh.estado AS "Estado del vehiculo",
    estveh.descuento_vehiculo AS "Descuento aplicado al vehiculo"

FROM afiliados af
    JOIN vehiculo veh ON (veh.afiliado_vehiculo_id = af.id_afiliados)
    JOIN estado_de_vehiculo estveh ON (estveh.vehiculo_id = veh.id_vehiculo)
    JOIN aseguradora_de_vehiculo aseg ON (estveh.aseguradora_estado_id = aseg.id_aseguradora);
    
--SELECT con info de pagos (Cheque)

SELECT
    af.id_afiliados AS "ID",
    af.primer_nombre AS "Nombre del afiliado",
    af.rut AS "Rut del afiliado",    
    af.digito_verificador AS "DV del afiliado",
    af.pasaporte AS "Numero de pasaporte del afiliado",
    pagos.fecha_de_pago AS "Fecha de pago",
    pagos.valor_a_pagar AS "Valor a pagar",
    bank.nombre_banco AS "Banco",
    cheques.numero_de_cheque AS "Numero de cheque"
FROM afiliados af
    JOIN pagos ON (afiliados_pagos_id = af.id_afiliados)
    JOIN bancos bank ON (pagos.afiliados_pagos_id = bank.id_banco)
    JOIN cheques ON (cheques_id = id_cheque);

--SELECT con info de pagos (otras formas de pago)

SELECT
    af.id_afiliados AS "ID",
    af.primer_nombre AS "Nombre del afiliado",
    af.rut AS "Rut del afiliado",    
    af.digito_verificador AS "DV del afiliado",
    af.pasaporte AS "Numero de pasaporte del afiliado",
    pagos.fecha_de_pago AS "Fecha de pago",
    pagos.valor_a_pagar AS "Valor a pagar",
    bank.nombre_banco AS "Banco",
    form.forma_de_pago AS "Forma de pago",
    tppago.tipo_pago AS "Tipo de pago"
FROM afiliados af
    JOIN pagos ON (afiliados_pagos_id = af.id_afiliados)
    JOIN bancos bank ON (pagos.afiliados_pagos_id = bank.id_banco)
    JOIN formas_de_pagos form ON (formas_de_pago_id = form.id_formasdepago)
    JOIN tipos_de_pago tppago ON (tipopago_pagos_id = tppago.id_tipopago);

--SELECT con info de beneficios

SELECT
    ben.id_beneficio AS "ID",
    ben.descuento_beneficio AS "Descuento",
    ben.nombre_de_beneficio AS "Nombre del beneficio",
    ben.cantidad_maxima_de_usos AS "Cantidad maxima de usos",
    sind.nombre_de_sindicato AS "Nombre del sindicato"
FROM beneficios ben
    JOIN sindicato sind ON (sindicato_beneficios_id = id_sindicato);
    
--SELECT con info de beneficios de transporte

SELECT 
    bent.id_beneficiotransporte AS "ID",
    bent.tipo_de_transporte AS "Tipo de transporte",
    bent.descuento_transporte AS "Descuento",
    sind.nombre_de_sindicato AS "Nombre del sindicato"
FROM beneficio_transporte bent
    JOIN sindicato sind ON (sindicato_beneficiotrans_id = id_sindicato);
    
--SELECT sin uso del JOIN

SELECT * FROM afiliados;
SELECT * FROM nacionalidad;
SELECT * FROM carga;
SELECT * FROM parentesco;
SELECT * FROM estado_civil;
SELECT * FROM estado_de_solicitud;
SELECT * FROM telefonos;
SELECT * FROM tipos_de_telefonos;
SELECT * FROM pagos;
SELECT * FROM formas_de_pagos;
SELECT * FROM cheques;
SELECT * FROM bancos;
SELECT * FROM comunas;
SELECT * FROM provincias;
SELECT * FROM regiones;
SELECT * FROM vehiculo;
SELECT * FROM colores_de_vehiculos;
SELECT * FROM marcas_de_vehiculos;
SELECT * FROM modelos_de_vehiculos;
SELECT * FROM tipos_de_vehiculos;
SELECT * FROM estado_de_vehiculo;
SELECT * FROM aseguradora_de_vehiculo;
SELECT * FROM empresa;
SELECT * FROM sindicato;
SELECT * FROM beneficio_transporte;
SELECT * FROM beneficios;
SELECT * FROM discapacidad_afiliado;
SELECT * FROM tipo_de_discapacidad;
SELECT * FROM tipos_de_pago;