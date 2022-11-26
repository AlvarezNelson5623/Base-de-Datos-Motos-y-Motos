USE motosymotos;
SET GLOBAL log_bin_trust_function_creators = 1; 

-- ---------------------------------------------------------------------------------------------------------------------------------

DELIMITER //
CREATE FUNCTION num_transacciones_entre_fecha( transaccion VARCHAR(10), fecha_uno VARCHAR(20), fecha_dos VARCHAR(20))
	RETURNS VARCHAR (100)
BEGIN
    DECLARE num INT UNSIGNED;
    DECLARE output VARCHAR(100);
    IF transaccion = 'Venta' THEN
		SET num = (SELECT COUNT(*) FROM venta_producto WHERE venta_producto.fecha_venta BETWEEN fecha_uno AND fecha_dos);
    ELSEIF transaccion='compra' THEN
		SET num = (SELECT COUNT(*) FROM compra_producto WHERE compra_producto.fecha_compra BETWEEN fecha_uno AND fecha_dos);
    END IF;
    SET output = (SELECT CONCAT('Numero de ' , transaccion,'s entre ', fecha_uno, ' y ', fecha_dos,': ',num));
    RETURN output;
END
//

SELECT num_transacciones_entre_fecha ('compra','2021-12-28 00:00:00','2022-10-18 00:00:00');

-- ---------------------------------------------------------------------------------------------------------------------------------

DELIMITER //
CREATE PROCEDURE listar_compra_venta_motocicleta(IN transaccion VARCHAR(10))
BEGIN
    IF transaccion = "COMPRA" THEN
	SELECT compra_venta_motocicleta.id_venta_motocicleta, tipo_transaccion.nombre, compra_venta_motocicleta.placa_motocicleta,
        empleado.nombres, propietario.nombre,compra_venta_motocicleta.propietario_compra , compra_venta_motocicleta.valor_transaccion 
	FROM compra_venta_motocicleta 
        INNER JOIN propietario ON propietario.id_propietario = compra_venta_motocicleta.propietario_compra
        INNER JOIN tipo_transaccion ON tipo_transaccion.id_tipo_transaccion=compra_venta_motocicleta.tipo_transaccion
        INNER JOIN empleado ON empleado.doc_empleado = compra_venta_motocicleta.doc_empleado
        WHERE compra_venta_motocicleta.tipo_transaccion = 2;
    ELSEIF transaccion = "VENTA" THEN
	SELECT compra_venta_motocicleta.id_venta_motocicleta, tipo_transaccion.nombre, compra_venta_motocicleta.placa_motocicleta,
	empleado.nombres,compra_venta_motocicleta.propietario_vende,propietario.nombre, compra_venta_motocicleta.valor_transaccion 
	FROM compra_venta_motocicleta 
        INNER JOIN propietario ON propietario.id_propietario = compra_venta_motocicleta.propietario_compra
        INNER JOIN tipo_transaccion ON tipo_transaccion.id_tipo_transaccion=compra_venta_motocicleta.tipo_transaccion
        INNER JOIN empleado ON empleado.doc_empleado = compra_venta_motocicleta.doc_empleado
        WHERE compra_venta_motocicleta.tipo_transaccion = 1;
    END IF;
END
//

CALL listar_compra_venta_motocicleta("COMPRA");
