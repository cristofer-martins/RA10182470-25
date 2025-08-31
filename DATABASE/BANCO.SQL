CREATE TABLE usuario (
    id_usuario SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    senha VARCHAR(255) NOT NULL,
    endereco TEXT,
    telefone VARCHAR(20),
    cpf VARCHAR(14) UNIQUE
);

CREATE TABLE categoria (
    id_categoria SERIAL PRIMARY KEY,
    nome VARCHAR(50) NOT NULL
);

CREATE TABLE tipo_produto (
    id_tipo SERIAL PRIMARY KEY,
    nome VARCHAR(50) NOT NULL
);

CREATE TABLE produto (
    id_produto SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    descricao TEXT,
    preco DECIMAL(10,2) NOT NULL,
    sku VARCHAR(50) UNIQUE,
    estoque INT DEFAULT 0,
    id_categoria INT REFERENCES categoria(id_categoria),
    id_tipo INT REFERENCES tipo_produto(id_tipo)
);

CREATE TABLE pedido (
    id_pedido SERIAL PRIMARY KEY,
    id_usuario INT REFERENCES usuario(id_usuario),
    data TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    status VARCHAR(20) DEFAULT 'Pendente',
    total DECIMAL(10,2) DEFAULT 0.00
);

CREATE TABLE item_pedido (
    id_item SERIAL PRIMARY KEY,
    id_pedido INT REFERENCES pedido(id_pedido),
    id_produto INT REFERENCES produto(id_produto),
    quantidade INT NOT NULL,
    preco_unitario DECIMAL(10,2) NOT NULL
);
