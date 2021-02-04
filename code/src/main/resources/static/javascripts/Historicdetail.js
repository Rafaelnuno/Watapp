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
    document.getElementById('estado').innerHTML = news.historic[0].state.state;

}


async function Accept() {
    try {   
        let historic  = {
            data: new Date(),
            news: {
                id: sessionStorage.getItem("Id_n")
            },
            state: {
                id: 2
            },

            user: {
                id: 1 
            }
        }

        console.log(JSON.stringify(historic))

        let news = await $.ajax({
            url: "/api/news/states" ,
            method: "post",
            dataType: "json",
            data:JSON.stringify(historic),
            contentType: "application/json"
        });
        alert("Aceite")
        window.location= "historic.html"
    } catch (err) {
        let elemMain = document.getElementById("accept");
        console.log(err);
        elemMain.innerHTML = "<h1> Página não está disponível</h1>" +
            "<h2> Por favor tente mais tarde</h2>";
    }
}


async function Reject() {
    try {
        let historic  = {
            data: new Date(),
            news: {
                id: sessionStorage.getItem("Id_n")
            },
            state: {
                id: 3
            },

            user: {
                id: 1 
            }

        }
        console.log(JSON.stringify(historic))
        
        let news = await $.ajax({
            url: "/api/news/states" ,
            method: "post",
            dataType: "json",
            data:JSON.stringify(historic),
            contentType: "application/json"
        });
        alert("Rejeitada")
        window.location= "historic.html"
    } catch (err) {
        let elemMain = document.getElementById("reject");
        console.log(err);
        elemMain.innerHTML = "<h1> Página não está disponível</h1>" +
            "<h2> Por favor tente mais tarde</h2>";
    }
}