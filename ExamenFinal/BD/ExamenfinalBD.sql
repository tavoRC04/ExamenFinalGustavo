
CREATE DATABASE examenfinal;
GO

USE examenfinal;
GO

CREATE TABLE Agentes (
    ID INT IDENTITY PRIMARY KEY,
    Nombre VARCHAR(50),
    Email VARCHAR(100),
    Telefono VARCHAR(20),
	Contrasena varchar(50)
);
GO


CREATE TABLE Clientes (
    ID INT IDENTITY PRIMARY KEY,
    Nombre VARCHAR(50),
    Email VARCHAR(100),
    Telefono VARCHAR(20)
);
GO

CREATE TABLE Casas (
    ID INT IDENTITY PRIMARY KEY,
    Direccion VARCHAR(100),
    Ciudad VARCHAR(50),
    Precio DECIMAL(10, 2)
);
GO

CREATE TABLE Ventas (
    ID INT IDENTITY PRIMARY KEY,
    ID_Agente INT,
    ID_Cliente INT,
    ID_Casa INT,
    Fecha DATE,
    FOREIGN KEY (ID_Agente) REFERENCES Agentes(ID),
    FOREIGN KEY (ID_Cliente) REFERENCES Clientes(ID),
    FOREIGN KEY (ID_Casa) REFERENCES Casas(ID)
);
GO

INSERT INTO Agentes (Nombre, Email, Telefono, Contrasena) VALUES
('Juan Pérez', 'juan@example.com', '123-456-7890','123'),
('María López', 'maria@example.com', '987-654-3210','123'),
('Carlos González', 'carlos@example.com', '456-789-0123','123');
GO

INSERT INTO Clientes (Nombre, Email, Telefono) VALUES
('Laura Martínez', 'laura@example.com', '111-222-3333'),
('Pedro Rodríguez', 'pedro@example.com', '444-555-6666'),
('Ana García', 'ana@example.com', '777-888-9999');
GO

INSERT INTO Casas (Direccion, Ciudad, Precio) VALUES
('Calle 123', 'Madrid', 250000.00),
('Avenida 456', 'Barcelona', 300000.00),
('Calle 789', 'Valencia', 200000.00);
GO

INSERT INTO Ventas (ID_Agente, ID_Cliente, ID_Casa, Fecha) VALUES
(1, 2, 1, '2024-04-01'),
(2, 3, 2, '2024-04-03'),
(3, 1, 3, '2024-04-05');
GO

CREATE PROCEDURE GestionarAgentes
    @accion NVARCHAR(10),
    @agente_id INT = NULL,
    @agente_nombre NVARCHAR(50) = NULL,
    @agente_email NVARCHAR(100) = NULL,
    @agente_telefono NVARCHAR(20) = NULL,
	@agente_contrasena NVARCHAR(50) = NULL
	

AS
BEGIN
    IF @accion = 'agregar'
    BEGIN
        INSERT INTO Agentes (Nombre, Email, Telefono, Contrasena) VALUES (@agente_nombre, @agente_email, @agente_telefono ,@agente_contrasena);
    END
    ELSE IF @accion = 'borrar'
    BEGIN
        DELETE FROM Agentes WHERE ID = @agente_id;
    END
    ELSE IF @accion = 'modificar'
    BEGIN
        UPDATE Agentes SET 
            Nombre = @agente_nombre,
            Email = @agente_email,
            Telefono = @agente_telefono,
			Contrasena = @agente_contrasena
        WHERE ID = @agente_id;
    END
    ELSE IF @accion = 'consultar'
    BEGIN
        SELECT DISTINCT ID,Nombre, Email, Telefono, Contrasena FROM Agentes;
    END
    ELSE
    BEGIN
        SELECT 'Acción no válida';
    END
END;
GO

CREATE PROCEDURE GestionarClientes
    @accion NVARCHAR(10),
    @cliente_id INT = NULL,
    @cliente_nombre NVARCHAR(50) = NULL,
    @cliente_email NVARCHAR(100) = NULL,
    @cliente_telefono NVARCHAR(20) = NULL
	

AS
BEGIN
    IF @accion = 'agregar'
    BEGIN
        INSERT INTO Clientes (Nombre, Email, Telefono) VALUES (@cliente_nombre, @cliente_email, @cliente_telefono );
    END
    ELSE IF @accion = 'borrar'
    BEGIN
        DELETE FROM Clientes WHERE ID = @cliente_id;
    END
    ELSE IF @accion = 'modificar'
    BEGIN
        UPDATE Agentes SET 
            Nombre = @cliente_nombre,
            Email = @cliente_email,
            Telefono = @cliente_telefono
        WHERE ID = @cliente_id;
    END
    ELSE IF @accion = 'consultar'
    BEGIN
        SELECT DISTINCT ID,Nombre, Email, Telefono FROM Clientes;
    END
    ELSE
    BEGIN
        SELECT 'Acción no válida';
    END
END;
GO

EXEC GestionarAgentes 'agregar', @agente_nombre = 'Nuevo Agente', @agente_email = 'nuevo@example.com', @agente_telefono = '123-456-4660',@agente_contrasena = '1234';

EXEC GestionarAgentes 'consultar';

