/*window.onload = async function() {
    try {
        let users = await $.ajax({
            url: "/api/users",
            method: "get",
            dataType: "json"
        });
        let html="";
        for (let user of users) {
            html+= "<option value="+user.name+">"+user.name+
                "</option>";
        }
        document.getElementById("users").innerHTML = html;
    } catch (err) {
        console.log(err);
        // mensagem de erro para o utilizador      
    }
}*/

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
        window.location = "historicuser.html";
    } catch(err) {
        console.log(err);
    }
}