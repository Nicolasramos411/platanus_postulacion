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

  # Simulate the encounter between two pokemons, handle the result and finally reset pokemon's hp.
  def start
    puts "\n### Encounter #{@@encounter_id} ###"
    begin_encounter()

    puts "\n#{@result["winner"].name} wins!\n"

    @first_pokemon.hp = @first_pokemon.hp_base_stat
    @second_pokemon.hp = @second_pokemon.hp_base_stat
  end

  # It's start the encounter between the two pokemons. It's a loop that ends when one of the pokemons is dead.
  def begin_encounter
    puts "\nThe encounter between #{@first_pokemon.type} #{@first_pokemon.name} and #{@second_pokemon.type} #{@second_pokemon.name} has started!\n"
    while @first_pokemon.hp > 0 && @second_pokemon.hp > 0
      @rounds += 1
      puts "\nRound #{@rounds}"
      puts "#{@first_pokemon.name} HP: #{@first_pokemon.hp}"
      puts  "#{@second_pokemon.name} HP: #{@second_pokemon.hp}"
      # The first pokemon attacks when @rounds % 2 == 0
      attacker = @rounds % 2 == 0 ? @first_pokemon : @second_pokemon
      defender = @rounds % 2 == 0 ? @second_pokemon : @first_pokemon

      # The value of the attack is defined
      attack = [attack_value(attacker, defender), rand(5..10)].max
      # The value of the attack is subtracted from the defender pokemon
      defender.hp -= attack
      puts "#{attacker.name} attacks #{defender.name} with a damage of #{attack}"
      puts "#{defender.name} HP: #{defender.hp}\n"
    end
    @result["winner"] = @first_pokemon.hp > 0 ? @first_pokemon : @second_pokemon
    @result["loser"] = @first_pokemon.hp > 0 ? @second_pokemon : @first_pokemon

  end

  # The formula for the attack_value was based in a https://dev.to/ challenge.
  # https://dev.to/thepracticaldev/daily-challenge-170-pokemon-damage-calculator-97d
  def attack_value(attacker, defender)
    effectiveness = effectiveness_factor(attacker, defender)
    ((attacker.attack / 4) * (attacker.attack / defender.defense) * effectiveness).round
  end

  def effectiveness_factor(attacker, defender)
    if attacker.type == defender.type
      1
    elsif attacker.type == "fire" && defender.type == "water"
      0.5
    elsif attacker.type == "fire" && defender.type == "grass"
      2
    elsif attacker.type == "water" && defender.type == "grass"
      0.5
    elsif attacker.type == "water" && defender.type == "fire"
      2
    elsif attacker.type == "grass" && defender.type == "fire"
      0.5
    elsif attacker.type == "grass" && defender.type == "water"
      2
    else
      1
    end
  end

end