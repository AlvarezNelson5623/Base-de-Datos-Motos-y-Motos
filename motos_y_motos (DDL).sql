CREATE DATABASE motosymotos;
USE motosymotos;

-- -----------------------------------------------------
-- Table cliente
-- -----------------------------------------------------
CREATE TABLE cliente (
  id_cliente INT NOT NULL AUTO_INCREMENT,
  nombres VARCHAR(45) NOT NULL,
  num_telefono VARCHAR(45) NOT NULL,
  fecha_nacimiento DATE NOT NULL,
  direccion VARCHAR(45) NOT NULL,
  PRIMARY KEY (id_cliente)
  );

-- -----------------------------------------------------
-- Table tipo_sistema
-- -----------------------------------------------------
CREATE TABLE tipo_sistema (
  id_tipo_sistema INT NOT NULL AUTO_INCREMENT,
  nombre VARCHAR(45) NOT NULL,
  PRIMARY KEY (id_tipo_sistema)
  );

-- -----------------------------------------------------
-- Table sistema_social_empleado
-- -----------------------------------------------------
CREATE TABLE sistema_social_empleado (
  nit_sistema_social VARCHAR(45) NOT NULL,
  nombre VARCHAR(45) NOT NULL,
  num_telefono VARCHAR(45) NOT NULL,
  direccion VARCHAR(45) NOT NULL,
  tipo_sistema INT NOT NULL,
  PRIMARY KEY (nit_sistema_social),
  CONSTRAINT sistema_social_tipo_sistema_fk
    FOREIGN KEY (tipo_sistema)
    REFERENCES tipo_sistema (id_tipo_sistema)
);

-- -----------------------------------------------------
-- Table empleado
-- -----------------------------------------------------
CREATE TABLE empleado (
  doc_empleado INT NOT NULL,
  nombres VARCHAR(45) NOT NULL,
  apellidos VARCHAR(45) NOT NULL,
  num_telefono VARCHAR(45) NOT NULL,
  direccion VARCHAR(45) NOT NULL,
  fecha_nacimiento DATE NOT NULL,
  email VARCHAR(45) NOT NULL,
  porcentaje_pago VARCHAR(45) NOT NULL,
  id_sistema_social_eps VARCHAR(45) NOT NULL,
  id_sistema_social_fondo_pension VARCHAR(45) NOT NULL,
  id_sistema_social_arl VARCHAR(45) NOT NULL,
  PRIMARY KEY (doc_empleado),
  CONSTRAINT empleado_arl_sistema_social_fk
    FOREIGN KEY (id_sistema_social_arl)
    REFERENCES sistema_social_empleado (nit_sistema_social),
  CONSTRAINT empleado_eps_sistema_social_fk
    FOREIGN KEY (id_sistema_social_eps)
    REFERENCES sistema_social_empleado (nit_sistema_social),
  CONSTRAINT empleado_pension_sistema_social_fk
    FOREIGN KEY (id_sistema_social_fondo_pension)
    REFERENCES sistema_social_empleado (nit_sistema_social)
);

-- -----------------------------------------------------
-- Table proveedor
-- -----------------------------------------------------
CREATE TABLE proveedor (
  id_proveedor INT NOT NULL AUTO_INCREMENT,
  nombre VARCHAR(45) NOT NULL,
  num_telefono VARCHAR(45) NOT NULL,
  email VARCHAR(45) NOT NULL,
  PRIMARY KEY (id_proveedor)
);

-- -----------------------------------------------------
-- Table compra_producto
-- -----------------------------------------------------
CREATE TABLE compra_producto (
  id_compra_producto INT NOT NULL AUTO_INCREMENT,
  doc_empleado INT NOT NULL,
  id_proveedor INT NOT NULL,
  fecha_compra DATETIME NOT NULL,
  valor_compra DOUBLE NOT NULL,
  PRIMARY KEY (id_compra_producto),
  CONSTRAINT compra_producto_empleado_fk
    FOREIGN KEY (doc_empleado)
    REFERENCES empleado (doc_empleado),
  CONSTRAINT compra_producto_proveedor_fk
    FOREIGN KEY (id_proveedor)
    REFERENCES proveedor (id_proveedor)
);

-- -----------------------------------------------------
-- Table producto
-- -----------------------------------------------------
CREATE TABLE producto (
  id_producto INT NOT NULL AUTO_INCREMENT,
  nombre VARCHAR(45) NOT NULL,
  marca VARCHAR(45) NOT NULL,
  precio_venta DOUBLE NOT NULL,
  precio_compra DOUBLE NOT NULL,
  existencias_disponibles INT NOT NULL,
  inventario_minimo INT NOT NULL,
  ubicacion_bodega VARCHAR(100) NOT NULL,
  PRIMARY KEY (id_producto)
);

-- -----------------------------------------------------
-- Table compra_producto_has_producto
-- -----------------------------------------------------
CREATE TABLE compra_producto_has_producto (
  id_compra_producto INT NOT NULL,
  id_producto INT NOT NULL,
  cantidad_producto INT NOT NULL,
  PRIMARY KEY (id_compra_producto, id_producto),
  CONSTRAINT many_compra_producto_fk
    FOREIGN KEY (id_compra_producto)
    REFERENCES compra_producto (id_compra_producto),
  CONSTRAINT many_producto_fk
    FOREIGN KEY (id_producto)
    REFERENCES producto (id_producto)
);

-- -----------------------------------------------------
-- Table propietario
-- -----------------------------------------------------
CREATE TABLE propietario (
  id_propietario INT NOT NULL,
  nombre VARCHAR(45) NOT NULL,
  num_telefono VARCHAR(45) NOT NULL,
  email VARCHAR(45) NOT NULL,
  PRIMARY KEY (id_propietario)
);

-- -----------------------------------------------------
-- Table motocicleta
-- -----------------------------------------------------
CREATE TABLE motocicleta (
  placa_motocicleta VARCHAR(10) NOT NULL,
  numero_chasis BIGINT NOT NULL,
  numero_motor BIGINT NOT NULL,
  marca VARCHAR(45) NOT NULL,
  cilindarje INT NOT NULL,
  comentario_adicional VARCHAR(100) NULL,
  fecha_soat DATE NOT NULL,
  fechat_tecnomecanica DATE NOT NULL,
  num_tarjeta_propiedad BIGINT NOT NULL,
  valor_motocicleta DOUBLE NOT NULL,
  propietario_actual INT NOT NULL,
  PRIMARY KEY (placa_motocicleta),
  CONSTRAINT FK_moto_propi
    FOREIGN KEY (propietario_actual)
    REFERENCES propietario (id_propietario)
);

-- -----------------------------------------------------
-- Table tipo_transaccion
-- -----------------------------------------------------
CREATE TABLE tipo_transaccion (
  id_tipo_transaccion INT NOT NULL AUTO_INCREMENT,
  nombre VARCHAR(45) NOT NULL,
  PRIMARY KEY (id_tipo_transaccion)
  );

-- -----------------------------------------------------
-- Table compra_venta_motocicleta
-- -----------------------------------------------------
CREATE TABLE compra_venta_motocicleta (
  id_venta_motocicleta INT NOT NULL AUTO_INCREMENT,
  tipo_transaccion INT NOT NULL,
  placa_motocicleta VARCHAR(10) NOT NULL,
  doc_empleado INT NOT NULL,
  propietario_vende INT NOT NULL,
  propietario_compra INT NOT NULL,
  valor_transaccion DOUBLE NOT NULL,
  PRIMARY KEY (id_venta_motocicleta),
  CONSTRAINT FK_compra_venta_propi_vende
    FOREIGN KEY (propietario_vende)
    REFERENCES propietario (id_propietario),
  CONSTRAINT FK_compra_venta_propi_compra
    FOREIGN KEY (propietario_compra)
    REFERENCES propietario (id_propietario),
  CONSTRAINT venta_moto_empleado_fk
    FOREIGN KEY (doc_empleado)
    REFERENCES empleado (doc_empleado),
  CONSTRAINT venta_moto_placa_moto_fk
    FOREIGN KEY (placa_motocicleta)
    REFERENCES motocicleta (placa_motocicleta),
  CONSTRAINT venta_moto_tipo_transaccion
    FOREIGN KEY (tipo_transaccion)
    REFERENCES tipo_transaccion (id_tipo_transaccion)
);

-- -----------------------------------------------------
-- Table motocicleta_cliente
-- -----------------------------------------------------
CREATE TABLE motocicleta_cliente (
  placa_motocicleta VARCHAR(10) NOT NULL,
  id_cliente INT NOT NULL,
  marca VARCHAR(45) NOT NULL,
  PRIMARY KEY (placa_motocicleta),
  CONSTRAINT motocicleta_cliente_cliente_fk
    FOREIGN KEY (id_cliente)
    REFERENCES cliente (id_cliente)
);

-- -----------------------------------------------------
-- Table venta_producto
-- -----------------------------------------------------
CREATE TABLE venta_producto (
  id_venta_producto INT NOT NULL AUTO_INCREMENT,
  doc_empleado INT NOT NULL,
  id_cliente INT NOT NULL,
  fecha_venta DATETIME NOT NULL,
  valor_venta DOUBLE NOT NULL,
  PRIMARY KEY (id_venta_producto),
  CONSTRAINT venta_producto_cliente_fk
    FOREIGN KEY (id_cliente)
    REFERENCES cliente (id_cliente),
  CONSTRAINT venta_producto_empelado_fk
    FOREIGN KEY (doc_empleado)
    REFERENCES empleado (doc_empleado)
);

-- -----------------------------------------------------
-- Table ingreso_motocicleta
-- -----------------------------------------------------
CREATE TABLE ingreso_motocicleta (
  id_ingreso INT NOT NULL AUTO_INCREMENT,
  id_venta_producto INT NULL,
  placa_motocicleta_cliente VARCHAR(10) NOT NULL,
  doc_empleado INT NOT NULL,
  fecha_ingreso DATETIME NOT NULL,
  valor_ingreso DOUBLE NOT NULL,
  PRIMARY KEY (id_ingreso),
  CONSTRAINT ingreso_moto_empleado_fk
    FOREIGN KEY (doc_empleado)
    REFERENCES empleado (doc_empleado),
  CONSTRAINT ingreso_moto_placa_moto_cliente_fk
    FOREIGN KEY (placa_motocicleta_cliente)
    REFERENCES motocicleta_cliente (placa_motocicleta),
  CONSTRAINT ingreso_moto_venta_producto_fk
    FOREIGN KEY (id_venta_producto)
    REFERENCES venta_producto (id_venta_producto)
);

-- -----------------------------------------------------
-- Table servicio
-- -----------------------------------------------------
CREATE TABLE servicio (
  id_servicio INT NOT NULL AUTO_INCREMENT,
  descripcion VARCHAR(100) NOT NULL,
  costo DOUBLE NOT NULL,
  PRIMARY KEY (id_servicio)
);

-- -----------------------------------------------------
-- Table ingreso_has_servicio
-- -----------------------------------------------------
CREATE TABLE ingreso_has_servicio (
  id_ingreso INT NOT NULL,
  id_servicio INT NOT NULL,
  PRIMARY KEY (id_ingreso, id_servicio),
  CONSTRAINT much_ingreso_fk
    FOREIGN KEY (id_ingreso)
    REFERENCES ingreso_motocicleta (id_ingreso),
  CONSTRAINT much_servicio_fk
    FOREIGN KEY (id_servicio)
    REFERENCES servicio (id_servicio)
);

-- -----------------------------------------------------
-- Table venta_producto_has_producto
-- -----------------------------------------------------
CREATE TABLE venta_producto_has_producto (
  id_venta_producto INT NOT NULL,
  id_producto INT NOT NULL,
  cantidad_producto INT NOT NULL,
  PRIMARY KEY (id_venta_producto, id_producto),
  CONSTRAINT much_producto_fk
    FOREIGN KEY (id_producto)
    REFERENCES producto (id_producto),
  CONSTRAINT much_venta_producto_fk
    FOREIGN KEY (id_venta_producto)
    REFERENCES venta_producto (id_venta_producto)
);

