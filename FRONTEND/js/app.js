fetch('http://localhost:3000/produtos')
  .then(res => res.json())
  .then(produtos => {
    const container = document.getElementById('produtos');
    produtos.forEach(p => {
      const item = document.createElement('div');
      item.innerHTML = `<h2>${p.nome}</h2><p>R$ ${p.preco}</p>`;
      container.appendChild(item);
    });
  });
