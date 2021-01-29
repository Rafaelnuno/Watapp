window.onload = async function() {
    let Id_n = sessionStorage.getItem("Id_n");

    let news = await $.ajax({
        url: "/api/news/"+Id_n,
        method: "get",
        dataType: "json"
    });
    console.log(news);

    document.getElementById('userid').innerHTML = news.historic[0].user.name;
    document.getElementById('titulo').innerHTML = news.title;
    document.getElementById('noticia').innerHTML = news.text;

}
