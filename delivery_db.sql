CREATE DATABASE delivery_db;
USE delivery_db;

CREATE table user(
id INT primary key auto_increment,
name VARCHAR(100) NOT NULL,
email VARCHAR(100) UNIQUE NOT NULL,
phone VARCHAR(20),
address VARCHAR(255) NOT NULL
);

CREATE TABLE restaurats(
id INT primary KEY auto_increment,
nombre VARCHAR(100) NOT NULL,
direccion VARCHAR(255) NOT NULL unique,
telefono VARCHAR(28) NOT NULL

);

CREATE TABLE products(
id INT PRIMARY KEY auto_increment,
restaurants_id INT,
nombre VARCHAR(100) NOT NULL,
descripcion text(100),
precio decimal(10.2) NOT NULL,
foreign key(restaurants_id) references restaurats (id)
);

CREATE TABLE pedidos(
id INT PRIMARY KEY auto_increment,
user_id INT NOT NULL,
restaurants_id INT NOT NULL,
fecha timestamp default current_timestamp,
estado varchar(50) default 'Pendiente',
foreign key(user_id) references user(id),
foreign key(restaurants_id) references restaurats (id)
);

CREATE TABLE detalles_Pedido(
id INT PRIMARY KEY AUTO_INCREMENT,
pedidos_id INT NOT NULL,
products_id INT NOT NULL,
cantidad INT NOT NULL,
precio_Unitario DECIMAL(10,2)NOT NULL,
foreign key(pedidos_id) references pedidos (id),
foreign key(products_id) references products (id)
);



