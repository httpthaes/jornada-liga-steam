//MÉTODO SIMPLES

const body = document.querySelector("body");

// Criando um elemento para o título
const titulo = document.createElement("h1");
// Manipulando o elemento
titulo.innerText = "Produtos";
titulo.id = "titulo";
// Adicionando o elemento 'titulo' no DOM
body.appendChild(titulo);

const nome = document.createElement("h2");
nome.innerText = "Fone de Ouvido";

const descricao = document.createElement("p");
descricao.innerText = "Lorem ipsum dolor sit amet";

const preco = document.createElement("h3");
preco.innerText = "R$ 300.00";

const imagem = document.createElement("img");
imagem.src = "img/fone.jpg";

const divProduto = document.createElement("div");
divProduto.className = "card-produto";
divProduto.appendChild(imagem);
divProduto.appendChild(nome);
divProduto.appendChild(descricao);
divProduto.appendChild(preco);

body.appendChild(divProduto);

//MÉTODO COMPLEXO

// Criando um elemento para o produto
const card = document.createElement("div");
card.className = "card-produto";

// Manipulando o elemento
card.innerHTML = `
<img src="img/notebook.png" alt="Notebook">
<h2 class="nome">Notebook Lenovo</h2>
<p class="descricao">${descricao.innerText}</p>
<h3 class="preco">R$ 2500.00</h3>
`

// Adicionando o elemento no dom
body.appendChild(card);