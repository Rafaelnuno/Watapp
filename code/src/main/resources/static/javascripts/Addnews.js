async function addNews() {
    try {
        let news = {
            data: new Date(),
            userId: document.getElementById("utilizadores").value,
            news: {
                number : 29,
                title: document.getElementById("not_titulo").value,
                text: document.getElementById("not_texto").value,
                category: {
                       id :document.getElementById("categorias").value, 
                }
        
        }
            
        }
        

        console.log(JSON.stringify(news));
        let result = await $.ajax({
            url: "/api/users/" + document.getElementById("utilizadores").value + "/news", 
            method: "post",
            dataType: "json",
            data:JSON.stringify(news),
            contentType: "application/json"
        });
        alert("A sua noticia foi enviada")
        window.location = "index.html";
    } catch(err) {
        console.log(err);
    }
}