const botaoIniciar = document.getElementById("bigbluebutton")
const inputNome = document.getElementById("inputNome")
const pokemonBtn = document.getElementById("miniButtonGlass1")
const cachorroBtn = document.getElementById("miniButtonGlass2");
const gatoBtn = document.getElementById("miniButtonGlass3");

botaoIniciar.addEventListener("click", () => {
    inputNome.focus();
});

pokemonBtn.addEventListener("click", () => {
    document.cookie="tipoProcura=pokemon";
    location.reload();
})

cachorroBtn.addEventListener("click", () => {
    document.cookie="tipoProcura=cachorro";
    location.reload();
})

gatoBtn.addEventListener("click", () => {
    document.cookie="tipoProcura=gato";
    location.reload();
})

// RESET COOKIES
document.addEventListener("keypress", (e) => {
    if(e.key == '?') {
        document.cookie="tipoProcura=";
        location.reload();
    }
})