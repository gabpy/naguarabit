--revisar transacciones guardadas que no tienen los datos completos
SELECT * FROM `transacciones` WHERE id_formapago_origen IS NULL
delete FROM `transacciones` WHERE id_formapago_origen IS NULL
