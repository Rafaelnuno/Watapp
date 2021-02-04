window.onload = function () {
    loadNews();
}

async function loadNews() {
    try {
        let news = await $.ajax({
            url: "/api/news/recentes",
            method: "get",
            dataType: "json"
        });
        showNews(news);

    } catch (err) {
        let elemMain = document.getElementById("main");
        console.log(err);
        elemMain.innerHTML = "<h1> Página não está disponível</h1>" +
            "<h2> Por favor tente mais tarde</h2>";
    }
}

function showNews(news) {
    let elemMain = document.getElementById("main");
    let html = "";
    for (let ns of news) {
        html += "<section onclick='showNew(" + ns.id + ")'>" +
            "<h3> Título:" + ns.titulo + "</h3>" +
            "<p> Categoria: " + ns.categoria + "</p>"+
            "<p> Autor: " + ns.utilizadores + "</p> </section>";
    }
    elemMain.innerHTML = html;
}

function showNew(Id_n) {
    sessionStorage.setItem("Id_n", Id_n);
    window.location = "Newsdetail.html";
}


async function filterCategory() {
    try {
        let ID_C = document.getElementById("categorias").value;
        let news = await $.ajax({
            url: "/api/news/"+ID_C +"/category" ,
            method: "get",
            dataType: "json"
        });
        showNews(news);
    } catch (err) {
        let elemMain = document.getElementById("categorias");
        console.log(err);
        elemMain.innerHTML = "<h1> Página não está disponível</h1>" +
            "<h2> Por favor tente mais tarde</h2>";
    }
}

/*async function filterText() {
    try {
        let text = document.getElementById("text").value;
        let news = await $.ajax({
            url: "/api/news/filter_text?text"= + text ,
            method: "get",
            dataType: "json"
        });
        showNews(news);
    } catch (err) {
        let elemMain = document.getElementById("text");
        console.log(err);
        elemMain.innerHTML = "<h1> Página não está disponível</h1>" +
            "<h2> Por favor tente mais tarde</h2>";
    }
}*/

