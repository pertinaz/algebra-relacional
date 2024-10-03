
------------------------------------------------------------
CREATE TABLE Clientes (
    ID_CLIENTE INT PRIMARY KEY AUTO_INCREMENT,
    nombre_cliente VARCHAR(50) NOT NULL,
    direccion_cliente VARCHAR(50),
    telefono_cliente INT NOT NULL,
    ciudad_cliente VARCHAR(50) NOT NULL
    ON DELETE CASCADE
    ON UPDATE CASCADE
);

CREATE TABLE Ventas (
    ID INT PRIMARY KEY AUTO_INCREMENT,
    cantidad INT NOT NULL,
    FOREIGN KEY (clientes) REFERENCES Clientes(ID_CLIENTE),
    FOREIGN KEY (productos) REFERENCES Productos(COD_PRODUCTO)
    ON DELETE CASCADE
    ON UPDATE CASCADE
);

CREATE TABLE Productos (
    COD_PRODUCTO INT PRIMARY KEY AUTO_INCREMENT,
    descripcion_producto VARCHAR(100) NOT NULL,
    precio_producto varchar(50) NOT NULL,
    ON DELETE CASCADE
    ON UPDATE CASCADE
);

SELECT precios FROM productos;
SELECT nombre_cliente FROM clientes WHERE ciudad_cliente := "Pereira"
SELECT cod_producto, descripcion_producto FROM productos WHERE descripcion_producto LIKE CONCAT('%',cod_producto,'%')
SELECT clientes.nombre_cliente FROM clientes LEFT JOIN ventas ON clientes.id_cliente = ventas.id_cliente WHERE ventas.id_cliente IS NULL
