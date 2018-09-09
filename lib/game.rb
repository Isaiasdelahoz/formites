class Game

  attr_reader :life_p1
  attr_reader :life_p2
  
  def initialize(life_p1, life_p2)
    @life_p1 = life_p1
    @life_p2 = life_p2
  end

  def hurt_p1
    @life_p1 = @life_p1 - shoot
  end

  def hurt_p2
    @life_p2 = @life_p2 - shoot
  end


  def shoot
      probability = rand(1..100)
      if [*1..50].include? probability
        aditionals_points ||= 0
      elsif [*51..75].include? probability
          aditionals_points ||= 5
      elsif [*76..95].include? probability
        aditionals_points ||= 10
      else 
        aditionals_points ||= 20
      end
      rand(1..5) + aditionals_points
    end  
end 