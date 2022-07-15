class Encounter
  attr_reader :result
  @@encounter_id = 0

  def initialize(first_pokemon, second_pokemon)
    @first_pokemon = first_pokemon
    @second_pokemon = second_pokemon
    @rounds = 0
    @result = Hash.new
    @@encounter_id += 1
    start()
  end

  def start
    puts "\n### Encounter #{@@encounter_id} ###"
    puts "\nThe encounter between #{@first_pokemon.name} and #{@second_pokemon.name} has started!\n"
    while @first_pokemon.hp > 0 && @second_pokemon.hp > 0
      @rounds += 1
      puts "Round #{@rounds}"
      puts "#{@first_pokemon.name} HP: #{@first_pokemon.hp}"
      puts  "#{@second_pokemon.name} HP: #{@second_pokemon.hp}"
      if @rounds % 2 == 0 # Ataca el primer pokemon
        # Se define el valor del ataque
        attack = [@first_pokemon.attack - @second_pokemon.defense, 5].max
        # Se le resta el valor del ataque al segundo pokemon
        @second_pokemon.hp -= attack 
        puts "#{@first_pokemon.name} attacks #{@second_pokemon.name} with a damage of #{attack}"
        puts "#{@second_pokemon.name} HP: #{@second_pokemon.hp}"
      else # Ataca el segundo pokemon
        # Se define el valor del ataque
        attack = [@second_pokemon.attack - @first_pokemon.defense, 5].max
        # Se le resta el valor del ataque al primer pokemon
        @first_pokemon.hp -= attack
        puts "#{@second_pokemon.name} attacks #{@first_pokemon.name} with a damage of #{attack}"
        puts "#{@first_pokemon.name} HP: #{@first_pokemon.hp}"
      end
      puts "\n"
    end
    if @first_pokemon.hp > 0
      puts "#{@first_pokemon.name} wins!\n"
      @result["winner"] = @first_pokemon
      @result["loser"] = @second_pokemon
    else
      puts "#{@second_pokemon.name} wins!\n"
      @result["winner"] = @second_pokemon
      @result["loser"] = @first_pokemon
    end

    @first_pokemon.hp = @first_pokemon.hp_base_stat
    @second_pokemon.hp = @second_pokemon.hp_base_stat


  end

end