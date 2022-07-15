require 'poke-api-v2'
require_relative './pokemon'

# This function is used to pick the pokemons for the tournament
def pokemon_picker(pokemons_amount)
  numbers = []
  pokemons = []

  while numbers.length < pokemons_amount
    random_number = rand(1..151)
    if not numbers.include?(random_number)
      numbers << random_number
      current_pokemon = PokeApi.get(pokemon: random_number) 
      pokemons << Pokemon.new(current_pokemon.name, current_pokemon.stats, current_pokemon.types)
    end
  end
  pokemons
end