const img = document.querySelector("img#img");
const msg = document.querySelector("p#msg");
const button = document.querySelector("input#btnVerif");
const anoAtual = new Date().getFullYear();
const anoNasc = document.querySelector("input#txtano");

anoNasc.max = anoAtual;
anoNasc.value = 0;


function verificar() {
    const mas = document.querySelector("input#mas");
    const fem = document.querySelector("input#fem");
    let pronome = "";
    let gen = "";
    let fase = "";
    
    if (anoNasc.value > anoAtual) {
        anoNasc.value = anoAtual;
    }
    
    let idade = anoAtual - anoNasc.value;

    if (mas.checked) {
        pronome = "o";
        gen = "Homem";
    } else if (fem.checked) {
        pronome = "a";
        gen = "Mulher";
    }

    if (idade < 12) {
        fase += "criança";
        pronome = "";
    } else if (idade < 24) {
        fase += "jovem";
        pronome = "";
    } else if (idade < 60) {
        fase += "adult";
    } else {
        fase += "idos";
    }

    img.src = `./imagens/redimensionadas/${gen.toLowerCase()}-${fase.replace("ç","c").toLowerCase() + pronome}.jpg`;
    msg.innerHTML = `${gen} ${fase}${pronome} de ${idade} anos de idade.`;
}

button.addEventListener("click", verificar)
