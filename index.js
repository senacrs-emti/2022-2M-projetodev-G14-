const botaoIniciar = document.getElementById("bigbluebutton")
const inputPokemonNome = document.getElementById("inputPokemonNome")
const pokemonBtn = document.getElementById("pokemonBtn")
const cachorroBtn = document.getElementById("cachorroBtn");

botaoIniciar.addEventListener("click", () => {
    inputPokemonNome.focus()
});

pokemonBtn.addEventListener("click", () => {
    document.cookie="tipoProcura=pokemon";
    location.reload();
})

cachorroBtn.addEventListener("click", () => {
    document.cookie="tipoProcura=cachorro";
    location.reload();
})