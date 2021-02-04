window.onload = async function() {
    let Id_n = sessionStorage.getItem("Id_n");

    let news = await $.ajax({
        url: "/api/news/"+Id_n,
        method: "get",
        dataType: "json"
    });
    console.log(news);
    for (let historic of news.historic )
        if (historic.state.id == 1)
            document.getElementById('userid').innerHTML =historic.user.name;
    document.getElementById('titulo').innerHTML = news.title;
    document.getElementById('noticia').innerHTML = news.text;

}
