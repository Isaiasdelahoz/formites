class Game
  
  def initialize(player1,player2)
    @player1 = player1 
    @player2 = player2
  end
  def turn
        
        p_player_1 = 100
        p_player_2 = 100
        user_turn = true 
        
        while p_player_1 >= 0 && p_player_2 >= 0 do 
          
            if user_turn
              puts "Es tu turno #{@player1} quieres atacar?"
              a = gets.chomp
              if a == "si"
                p_player_2 = p_player_2 - shoot
                user_turn = false
                puts "el usuario #{@player2} quedó con #{p_player_2}"
              end 
              else 
              puts "Es tu turno #{@player2} quieres atacar?"
              a = gets.chomp
              if a == "si"
                p_player_1 = p_player_1 - shoot
                user_turn = true
                puts "el usuario #{user_1} quedó con #{p_player_1}"
              end 
            
            end  
        end
        puts p_user_1 > 0 ? "ganaste #{@player1}" : "ganaste #{@player2}"
          
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