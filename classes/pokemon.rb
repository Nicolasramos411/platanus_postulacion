class Pokemon
  attr_accessor :hp, :attack, :defense, :speed, :sp_attack, :sp_defense
  attr_reader :name, :hp_base_stat

  def initialize(name, stats)
    @name = name
    @hp = stats[0].base_stat
    @hp_base_stat = @hp 
    @attack = stats[1].base_stat
    @defense = stats[2].base_stat
    @sp_attack = stats[3].base_stat
    @sp_defense = stats[4].base_stat
    @speed = stats[5].base_stat
  end

  def hp=(hp)
    if hp < 0
      @hp = 0
    else
      @hp = hp
    end
  end

end