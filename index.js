const botaoIniciar = document.getElementById("bigbluebutton")
const inputPokemonNome = document.getElementById("inputPokemonNome")

botaoIniciar.addEventListener("click", () => {
    inputPokemonNome.focus()
});


$(document).ready(function() {

    $('#bigbluebutton').click(function(){
        
            success: function(results){
                $(".tela").html(results);
            }
        });
    });

});
