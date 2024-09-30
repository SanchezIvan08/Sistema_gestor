

CREATE TABLE colaboradores (
    id_colaborador INTEGER PRIMARY KEY AUTOINCREMENT,
    nombre TEXT NOT NULL,
    correo TEXT NOT NULL,
    telefono TEXT NOT NULL,
    departamento TEXT NOT NULL,
    puesto TEXT NOT NULL,
    fecha_ingreso DATE NOT NULL,
    estado TEXT NOT NULL CHECK(estado IN ('activo', 'inactivo'))
)



CREATE TABLE equipos (
    id_equipo INTEGER PRIMARY KEY AUTOINCREMENT,
    tipo_equipo TEXT NOT NULL,
    marca TEXT NOT NULL,
    modelo TEXT NOT NULL,
    numero_serie TEXT NOT NULL UNIQUE,
    fecha_compra DATE NOT NULL,
    proveedor TEXT NOT NULL,
    garantia TEXT NOT NULL,
    estado TEXT NOT NULL CHECK(estado IN ('disponible', 'asignado')),
    cargador_incluido BOOLEAN DEFAULT 0,
    funda_incluida BOOLEAN DEFAULT 0
)



CREATE TABLE historial_equipos (
    id_historial INTEGER PRIMARY KEY AUTOINCREMENT,
    id_colaborador INTEGER NOT NULL,
    id_equipo INTEGER NOT NULL,
    fecha_asignacion DATE NOT NULL,
    fecha_devolucion DATE,
    comentarios TEXT,
    FOREIGN KEY(id_colaborador) REFERENCES colaboradores(id_colaborador),
    FOREIGN KEY(id_equipo) REFERENCES equipos(id_equipo)
)



CREATE TABLE historial_yubikeys (
    id_historial INTEGER PRIMARY KEY AUTOINCREMENT,
    id_colaborador INTEGER NOT NULL,
    id_yubikey INTEGER NOT NULL,
    fecha_asignacion DATE NOT NULL,
    fecha_devolucion DATE,
    comentarios TEXT,
    FOREIGN KEY(id_colaborador) REFERENCES colaboradores(id_colaborador),
    FOREIGN KEY(id_yubikey) REFERENCES yubikeys(id_yubikey)
)



CREATE TABLE yubikeys (
    id_yubikey INTEGER PRIMARY KEY AUTOINCREMENT,
    yubikey TEXT NOT NULL UNIQUE,
    pin TEXT NOT NULL UNIQUE,
    estado TEXT NOT NULL CHECK(estado IN ('disponible', 'asignada'))
)