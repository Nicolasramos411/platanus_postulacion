Platanus Tournament ⛵

<!-- Logotipo del proyecto -->
<br />
<p align="center">  
<a href="https://www.qries.com/">
    <img alt="Platanus" src="https://res-4.cloudinary.com/ha0mfd5dh/image/upload/q_auto/v1/ghost-blog-images/logo.png" width="320" height="320">
  </a>
  <h3 align="center">Platanus Tournament</h3>

  <p align="center">
    Un simulador de un torneo Pokemón, hecho especialmente para Ham The Chimp.
    <br />
    <br />
  </p>
</p>



<!-- Tabla de contenidos -->
<details open="open">
  <summary>Tabla de contenidos</summary>
  <ol>
    <li><a href="#resumen-y-propósito-del-programa">Resumen y propósito del programa ⛱️</a></li>
    <li><a href="#ejecución-y-explicación-de-archivos">Ejecución y explicación de archivos 💻</a></li>
    <li><a href="#supuestos-y-consideraciones-adicionales">Supuestos y consideraciones adicionales 🤔</a></li>
    <li><a href="#referencias-de-código-externo">Referencias de código externo ℹ️</a></li>
    <li><a href="#cosas-no-implementadas-y-por-mejorar">Cosas no implementadas y por mejorar 🚀</a></li>
  </ol>
</details>
<!-- Fin tabla de contenidos -->

-------
## Resumen y propósito del programa

Ham the Chimp es el encargado de administrar los almuerzos y el karma de los trabajadores de Platanus. En un principio fue bastante básico, pero luego de varios experimentos sociales Ham The Chimp empezó a adquirir conciencia al igual que el chatbot de Google👀. Desde entonces, Ham The Chimp dejó de simplemente hacer las pegas encargadas por los trabajadores y, en sus tiempos libres empezó a entrenenerse. El problema es que aún no logra poder hacer sus propios juegos por lo que creó **secretamente** una postulación para contratar Trainees y, de tarea les pidió hacer una simulación de su juego favorito, Pokémon.

Este programa busca simular dicha situación, en la que se crea un torneo pokemón y se realizan varias rondas para determinar el ganador.
>
En un futuro se buscará implementar una interfaz gráfica con la ayuda de Rails, React o Vue y desarrollar más el ataque de los pokemones para que sea más realista y así permitir a Ham The Chimp entretenerse más.

## Ejecución y explicación de archivos
El módulo principal de la tarea a ejecutar es  ```main.rb```. Además, a continuación se muestran los otros archivos de la carpeta y un resumen de sus existencias:
  >
**lib**:
  >
1. ```encounter.rb```: Contiene la clase *Encounter* que se encarga de simular un encuentro entre 2 pokemones.
   >
2. ```pokemon_picker.rb```: Contiene la función *pokemon_picker(pokemons_amount)* que se encarga de elegir *pokemons_amount* pokemones aleatoriamente.
   >
3. ```pokemon.rb```: Contiene la clase *Pokemon* que se encarga de simular un pokemon.
   >
4. ```tournament.rb```: Contiene la clase *Tournament* que se encarga de simular un torneo.
   >
**Otros**:
  >
1. ```Gemfile```: Contiene las dependencias necesarias para que funcione el programa.
   >
-------

## Supuestos y consideraciones adicionales

* **(1)** Se hizo un torneo al estilo fifa, teniendo cuartos de finales, semifinales, tercer lugar y final.
  >
* **(2)** Ningún pokemon podría llegar a tener vida negativa.
  >
* **(3)** En un torneo no puede existir 2 o más pokemones iguales (ej: 2 bulbasaurs).
  >
-------

## Referencias de código externo

Para realizar mi tarea saqué información de:

1. [attack_value(attacker, defender)](https://dev.to/thepracticaldev/daily-challenge-170-pokemon-damage-calculator-97d): Con esta función se logra salir del programa de manera exitosa y está implementado en el archivo ```lib/encounter.rb``` en la línea 51.

2. [PokeApi](https://pokeapi.co/): Documentación de la PokeApi.
-------
## Cosas no implementadas y por mejorar

*  **Frontend**: Para que el juego sea más interactivo y entretenido para el usuario se requiere que se implemente una interfaz gráfica. En esta ocasión solo se considera el uso de la consola.
  >
* **Ataque**: El ataque de los pokemones está bastante simplificado. Para mejorarlo se deben considerar todas las variables que afectan el valor tales como el tipo de ataque y si existen movimientos anteriores que mejoren/empeoren el valor. 
  >
-------

💥 Muchas gracias, espero les guste. 💥
