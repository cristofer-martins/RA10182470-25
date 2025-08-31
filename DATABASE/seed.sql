-- Inserindo categorias
INSERT INTO categoria (nome) VALUES
('Cartões'),
('Folders'),
('Banners'),
('Adesivos'),
('Brindes Personalizados');

-- Inserindo tipos de produto
INSERT INTO tipo_produto (nome) VALUES
('Papel Couchê'),
('Papel Offset'),
('Vinil'),
('Lona'),
('PVC');

-- Inserindo usuários (senha fictícia, você vai trocar depois)
INSERT INTO usuario (nome, email, senha, endereco, telefone, cpf) VALUES
('Administrador', 'admin@usinaartes.com', 'senha123', 'Rua das Artes, 123', '11999999999', '000.000.000-00'),
('Maria Souza', 'maria@gmail.com', 'senha123', 'Av. Central, 456', '11988888888', '111.111.111-11'),
('João Pereira', 'joao@gmail.com', 'senha123', 'Rua dos Impressos, 789', '11977777777', '222.222.222-22');

-- Inserindo produtos
INSERT INTO produto (nome, descricao, preco, sku, estoque, id_categoria, id_tipo) VALUES
('Cartão de Visita Simples', 'Cartão 9x5cm, papel couchê 250g, frente colorida', 49.90, 'CV001', 500, 1, 1),
('Cartão de Visita com Verniz', 'Cartão 9x5cm, papel couchê 300g, frente e verso coloridos com verniz localizado', 79.90, 'CV002', 300, 1, 1),
('Folder A4 Dobrado', 'Folder 21x29,7cm, papel couchê 150g, frente e verso coloridos', 199.90, 'FD001', 200, 2, 1),
('Banner 1x1m', 'Banner em lona 440g, impressão digital colorida, acabamento com ilhós', 89.90, 'BN001', 100, 3, 4),
('Adesivo Vinil Redondo', 'Adesivo vinil recorte especial, impressão colorida, resistente à água', 39.90, 'AD001', 1000, 4, 3),
('Copo Personalizado', 'Copo de plástico 500ml, impressão colorida UV', 12.50, 'BR001', 200, 5, 5);

-- Inserindo pedidos
INSERT INTO pedido (id_usuario, status, total) VALUES
(2, 'Concluído', 129.80),
(3, 'Pendente', 199.90);

-- Inserindo itens de pedidos
INSERT INTO item_pedido (id_pedido, id_produto, quantidade, preco_unitario) VALUES
(1, 1, 1, 49.90),
(1, 2, 1, 79.90),
(2, 3, 1, 199.90);
