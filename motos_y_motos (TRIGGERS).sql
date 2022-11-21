USE motosymotos;
-- -------------------------------------------------------------------------------------------------------------------
DELIMiTER $$
CREATE TRIGGER add_new_quantity_of_products
AFTER INSERT ON compra_producto_has_producto
FOR EACH ROW
BEGIN 
    DECLARE valor_producto_compra DOUBLE ;
    DECLARE valor_compra DOUBLE;
    UPDATE producto SET producto.existencias_disponibles =producto.existencias_disponibles + new.cantidad_producto
    WHERE producto.id_producto= new.id_producto;
    SET valor_producto_compra = (SELECT producto.precio_compra FROM producto WHERE producto.id_producto=new.id_producto); 
    SET valor_compra = valor_producto_compra * new.cantidad_producto;
    
    UPDATE compra_producto SET compra_producto.valor_compra =  compra_producto.valor_compra + valor_compra
    WHERE compra_producto.id_compra_producto= new.id_compra_producto;
END
$$
--
-- Dumping data for table compra_producto
--
INSERT INTO compra_producto VALUES 
(1,126451960,1,'2022-10-02 00:00:00',255110),(2,976746128,2,'2022-02-17 00:00:00',148400),
(3,126451960,7,'2022-02-24 00:00:00',0),(4,731792636,8,'2022-10-18 00:00:00',0),
(5,976746128,8,'2022-01-26 00:00:00',0),(6,126451960,10,'2022-10-06 00:00:00',0),
(7,976746128,5,'2022-07-08 00:00:00',0),(8,731792636,4,'2021-12-20 00:00:00',0),
(9,126451960,2,'2021-12-28 00:00:00',0),(10,731792636,8,'2022-01-10 00:00:00',0);

--
-- Dumping data for table compra_producto_has_producto
--
INSERT INTO compra_producto_has_producto VALUES 
(1,3,5),(2,5,2),(2,8,3);

-- -------------------------------------------------------------------------------------------------------------------
DELIMiTER $$
CREATE TRIGGER delete_quantity_of_products
AFTER INSERT ON venta_producto_has_producto
FOR EACH ROW
BEGIN 
    DECLARE valor_producto_venta DOUBLE ;
    DECLARE valor_venta DOUBLE;
    UPDATE producto SET producto.existencias_disponibles =producto.existencias_disponibles - new.cantidad_producto
    WHERE producto.id_producto= new.id_producto;
    SET valor_producto_venta = (SELECT producto.precio_venta FROM producto WHERE producto.id_producto=new.id_producto); 
    SET valor_venta = valor_producto_venta * new.cantidad_producto;
    
    UPDATE venta_producto SET venta_producto.valor_venta =  venta_producto.valor_venta + valor_venta
    WHERE venta_producto.id_venta_producto= new.id_venta_producto;
END
$$

--
-- Dumping data for table venta_producto
--
INSERT INTO venta_producto VALUES 
(1,560381837,3,'2022-01-31 00:00:00',333121),(2,976746128,10,'2022-04-03 00:00:00',243760),
(3,993689202,10,'2022-09-27 00:00:00',0),(4,124067956,1,'2022-03-01 00:00:00',0),
(5,124067956,1,'2022-02-06 00:00:00',0),(6,560381837,5,'2022-01-13 00:00:00',0),
(7,993689202,7,'2022-07-02 00:00:00',0),(8,124067956,1,'2022-05-05 00:00:00',0),
(9,993689202,3,'2022-11-14 00:00:00',0),(10,560381837,8,'2021-12-09 00:00:00',0);


--
-- Dumping data for table venta_producto_has_producto
--
INSERT INTO venta_producto_has_producto VALUES 
(1,1,1),(1,2,6),(2,5,8);

-- -------------------------------------------------------------------------------------------------------------------
DELIMITER $$
CREATE TRIGGER actualizar_propietario_actual_moto
AFTER INSERT ON compra_venta_motocicleta
FOR EACH ROW
BEGIN
    UPDATE motocicleta SET motocicleta.propietario_actual = new.propietario_compra 
    WHERE motocicleta.placa_motocicleta= new.placa_motocicleta;
END
$$ 

--
-- Dumping data for table compra_venta_motocicleta
--
INSERT INTO compra_venta_motocicleta VALUES 
(1,1,'037G056',560381837,1,695114199,4000000),(2,2,'D713BCZ',858266285,798547024,1,7000000);

-- -------------------------------------------------------------------------------------------------------------------
DELIMITER $$
CREATE TRIGGER costo_ingreso
AFTER INSERT ON ingreso_has_servicio
FOR EACH ROW
BEGIN
    DECLARE valor_venta DOUBLE;
    DECLARE id_venta INT UNSIGNED;
    DECLARE costo_servicio DOUBLE;
    DECLARE valor DOUBLE;
    SET valor = (SELECT ingreso_motocicleta.valor_ingreso FROM ingreso_motocicleta WHERE ingreso_motocicleta.id_ingreso= new.id_ingreso);
    SET id_venta=(SELECT ingreso_motocicleta.id_venta_producto FROM ingreso_motocicleta WHERE ingreso_motocicleta.id_ingreso=new.id_ingreso); 
    SET valor_venta =(SELECT venta_producto.valor_venta FROM venta_producto WHERE id_venta_producto = id_venta) ;
    SET costo_servicio = (SELECT servicio.costo FROM servicio WHERE servicio.id_servicio= new.id_servicio);
    IF valor = 0 AND id_venta <> NULL THEN
	UPDATE ingreso_motocicleta SET ingreso_motocicleta.valor_ingreso = costo_servicio + valor_venta
	WHERE ingreso_motocicleta.id_ingreso= new.id_ingreso;
    ELSE
	UPDATE ingreso_motocicleta SET ingreso_motocicleta.valor_ingreso = ingreso_motocicleta.valor_ingreso + costo_servicio 
	WHERE ingreso_motocicleta.id_ingreso= new.id_ingreso;
    END IF;
END
$$

--
-- Dumping data for table ingreso_motocicleta
--
INSERT INTO ingreso_motocicleta VALUES 
(1,2,'03HM0DZ',354764066,'2022-12-04 00:00:00',310938),(2,NULL,'0BND7ZZ',731792636,'2022-12-04 00:00:00',50363);

--
-- Dumping data for table ingreso_has_servicio
--
INSERT INTO ingreso_has_servicio VALUES 
(1,2),(1,4),(2,5),(2,7);