const botaoIniciar = document.getElementById("bigbluebutton")
const inputNome = document.getElementById("inputNome")
const pokemonBtn = document.getElementById("barbutton3")
const cachorroBtn = document.getElementById("barbutton4");

botaoIniciar.addEventListener("click", () => {
    inputNome.focus()
});

pokemonBtn.addEventListener("click", () => {
    document.cookie="tipoProcura=pokemon";
    location.reload();
})

cachorroBtn.addEventListener("click", () => {
    document.cookie="tipoProcura=cachorro";
    location.reload();
})