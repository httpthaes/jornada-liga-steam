const titulo = document.querySelector('#titulo')
titulo.innerText = "Proz Educação"

const link = document.querySelector('a')
link.innerText = "Site da Proz"

const listaNaoOrdenada = document.querySelector('ul')

listaNaoOrdenada.innerHTML = `
<li>9 em 10 Alunos da Proz são empregados após o curso</li>
<li>R$ 3.250 É o piso salarial para um Técnico em Enfermagem</li>
<li>100% Dos alunos de Enfermagem garantem o 1° estágio</li>
`

const listaOrdenada = document.querySelector('#lista-ordenada')

listaOrdenada.innerHTML = `
<li><a href="https://www.youtube.com/@prozeducacaobr">Youtube</a></li>
<li><a href="https://www.instagram.com/prozeducacaobr/">Instagram</a></li>
<li><a href="https://www.linkedin.com/school/prozeducacao/">LinkedIn</a></li>
`