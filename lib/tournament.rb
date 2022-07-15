require_relative './encounter'

class Tournament

  def initialize(pokemons, name)
    @name = name
    @stage = "quarterfinals"
    @pokemons = pokemons
    @third_place = []
    @semifinals = []
    @finals = []
    @final_positions= []
    start()
  end

  # Start the tournament and handle the result
  def start
    puts "Hello ladies and gentlemans!\nThe #{@name} Tournament has began."
    puts "\nThe pokemons are:"
    @pokemons.each_with_index do |pokemon, index|
      puts "#{index + 1}. #{pokemon.name}"
    end
    puts "\n Lets began!"

    quarterfinals()
    semifinals()
    third_place()
    finals()

    puts "\nThe Tournament final positions are:"
    (@final_positions.length).times
    @final_positions.each_with_index do |pokemon, index|
      puts "#{index + 1}. #{pokemon.name}"
    end
  end
  
  def quarterfinals
    puts "\n#### QUARTER FINALS ####"
    (0...@pokemons.length).step(2).each do |index|
      encounter = Encounter.new(@pokemons[index], @pokemons[index + 1])
      @semifinals << encounter.result["winner"]
    end
  end
  
  def semifinals
    puts "\n#### SEMI FINALS ####"
    (0...@semifinals.length).step(2).each do |index|
      encounter = Encounter.new(@semifinals[index], @semifinals[index + 1])
      @finals << encounter.result["winner"]
      @third_place << encounter.result["loser"]
    end
  end

  def third_place
    puts "\n#### THIRD PLACE ####"
    encounter = Encounter.new(@third_place[0], @third_place[1])
    @final_positions.insert(0, encounter.result["loser"])
    @final_positions.insert(0, encounter.result["winner"])
  end
    
  def finals
    puts "\n#### FINALS ####"
    encounter = Encounter.new(@finals[0], @finals[1])
    puts "\nThe winner of the tournament is #{encounter.result["winner"].name}!"
    puts "The tournament #{@name} has finished!"
    @final_positions.insert(0, encounter.result["loser"])
    @final_positions.insert(0, encounter.result["winner"])
  end

end