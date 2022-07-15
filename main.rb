require_relative './lib/pokemon_picker'
require_relative './lib/tournament'

# It began the tournament
Tournament.new(pokemon_picker(8), "Platanus")
