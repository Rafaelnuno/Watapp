window.onload = function () {
    loadNews();
}

async function loadNews() {
    try {
        let news = await $.ajax({
            url: "/api/news",
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
            "<p> Autor: " + ns.utilizadores + "</p>"+
            "<p> Data da notícia enviada: " + ns.data+ "</p> </section>";
    }
    elemMain.innerHTML = html;
}

function showNew(Id_n) {
    sessionStorage.setItem("Id_n", Id_n);
    window.location = "Historicdetail.html";
}

async function filterUsers() {
    try {
        let users = document.getElementById("utilizadores").value;
        let news = await $.ajax({
            url: "/api/news/"+users+"/users" ,
            method: "get",
            dataType: "json"
        });
        showNews(news);
    } catch (err) {
        let elemMain = document.getElementById("utilizadores");
        console.log(err);
        elemMain.innerHTML = "<h1> Página não está disponível</h1>" +
            "<h2> Por favor tente mais tarde</h2>";
    }
}


async function filterCategory() {
    try {
        let ID_C = document.getElementById("categorias").value;
        let news = await $.ajax({
            url: "/api/categorias/"+ID_C ,
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
