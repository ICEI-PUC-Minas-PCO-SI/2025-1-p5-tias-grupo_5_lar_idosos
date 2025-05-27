
CREATE TABLE Login (
    idLogin INT PRIMARY KEY,
    Password VARCHAR(60),
    Host VARCHAR(45),
    LastAccess DATETIME
);

CREATE TABLE Users (
    idUsers INT PRIMARY KEY,
    CPF VARCHAR(14),
    Name VARCHAR(100),
    ChangeDate DATETIME,
    Login_idLogin INT,
    FOREIGN KEY (Login_idLogin) REFERENCES Login(idLogin)
);

CREATE TABLE Roles (
    idRoles INT PRIMARY KEY,
    Name VARCHAR(45)
);

CREATE TABLE Users_has_Roles (
    Users_idUsers INT,
    Roles_idRoles INT,
    PRIMARY KEY (Users_idUsers, Roles_idRoles),
    FOREIGN KEY (Users_idUsers) REFERENCES Users(idUsers),
    FOREIGN KEY (Roles_idRoles) REFERENCES Roles(idRoles)
);

CREATE TABLE Locals (
    idLocals INT PRIMARY KEY,
    Name VARCHAR(30),
    Address VARCHAR(200),
    CNPJ VARCHAR(20)
);

CREATE TABLE Users_has_Locals (
    Users_idUsers INT,
    Locals_idLocals INT,
    PRIMARY KEY (Users_idUsers, Locals_idLocals),
    FOREIGN KEY (Users_idUsers) REFERENCES Users(idUsers),
    FOREIGN KEY (Locals_idLocals) REFERENCES Locals(idLocals)
);

CREATE TABLE Residents (
    idResidents INT PRIMARY KEY,
    Name VARCHAR(100),
    CPF VARCHAR(14),
    Birthdate DATE,
    Observation VARCHAR(120),
    Locals_idLocals INT,
    ChangeDate DATETIME,
    FOREIGN KEY (Locals_idLocals) REFERENCES Locals(idLocals)
);

CREATE TABLE Storage (
    idStorage INT PRIMARY KEY,
    Name VARCHAR(45),
    Quantity FLOAT,
    Category VARCHAR(45),
    Unit INT,
    Description VARCHAR(100),
    Creation_Date DATE,
    Locals_idLocals INT,
    Residents_idResidents INT,
    ChangeDate DATETIME,
    FOREIGN KEY (Locals_idLocals) REFERENCES Locals(idLocals),
    FOREIGN KEY (Residents_idResidents) REFERENCES Residents(idResidents)
);

CREATE TABLE Moviments (
    idMoviments INT PRIMARY KEY,
    Direct VARCHAR(1),
    Quantity FLOAT,
    Date DATETIME,
    Users_idUsers INT,
    Storage_idStorage INT,
    FOREIGN KEY (Users_idUsers) REFERENCES Users(idUsers),
    FOREIGN KEY (Storage_idStorage) REFERENCES Storage(idStorage)
);
