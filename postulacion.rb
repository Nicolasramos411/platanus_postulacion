require 'poke-api-v2'
require_relative './classes/pokemon'
require_relative './classes/encounter'
require_relative './classes/tournament'

numbers = []
pokemons = []

while numbers.length < 8
  random_number = rand(1..151)
  if not numbers.include?(random_number)
    numbers << random_number
    current_pokemon = PokeApi.get(pokemon: random_number) 
    pokemons << Pokemon.new(current_pokemon.name, current_pokemon.stats)
  end
end
platanus_tournament = Tournament.new(pokemons, "Platanus")
