/* Sempre que o client.lua envia um SendNUIMessage esse evento é chamado */
window.addEventListener("message", function(event) {

    /* Estamos pegando os valores do client e atribuindo eles nas variaveis vida e colete*/
    let vida = event.data.vida
    let colete = event.data.colete

    /* Atribuindo o valor da vida e do colete nas classes vida e colete */
    $(".vida").text("vida: " + vida)
    $(".colete").text("colete: " + colete)
})

