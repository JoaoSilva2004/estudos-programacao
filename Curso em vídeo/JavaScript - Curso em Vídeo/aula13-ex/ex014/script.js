function carregar() {
    let date = new Date();
    let hora = date.getHours();
    let mins = date.getMinutes()
    let fundo = document.querySelector("body#body");
    let msg = document.querySelector("div#msg");
    let img = document.querySelector("img#imagem");
    let corFundo;

    msg.innerHTML = `Agora são ${hora} horas e ${mins} minuto${mins > 1 ? "s" : ""}.`;

    if (hora < 12) {
        img.src = "imagens/foto_bomdia.png";
        img.alt = "Bom dia!";
        corFundo = "#e7af5a";
    } else if (hora < 18) {
        img.src = "imagens/foto_boatarde.png";
        img.alt = "Boa tarde!";
        corFundo = "#ffc31f";
    } else {
        img.src = "imagens/foto_boanoite.png";
        img.alt = "Boa noite!"
        corFundo = "#111121";
    }

    fundo.style["background-color"] = corFundo;
}
