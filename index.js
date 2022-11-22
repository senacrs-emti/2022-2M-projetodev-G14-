const botaoIniciar = document.getElementById("bigbluebutton")
const inputPokemonNome = document.getElementById("inputPokemonNome")

botaoIniciar.addEventListener("click", () => {
    inputPokemonNome.focus()
})