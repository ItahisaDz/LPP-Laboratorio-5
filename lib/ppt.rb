# File : ppt.rb

class Ppt
  
  @@defeat = { :rock => :scissor, :paper => :rock, :scissor => :paper }
  @@throws = @@defeat.keys
  
  class << self
    
    def play (player_throw)

      @@player_throw = player_throw.to_sym
      
      raise " Jugada incorrecta, debes elegir : '#{@@throws.join(', ')}'" unless @@throws.include? @@player_throw
        
      @@computer_throw = @@throws.sample
      
      @@answer =  case @@player_throw
          		      when @@computer_throw
          		      "EMPATE"
          		      when @@defeat[@@computer_throw]
          		      "Has perdido --> #{@@computer_throw} gana a #{@@player_throw}"
          		      else 
          		      "Has ganado --> #{@@player_throw} gana a #{@@computer_throw}"
		              end

    end

    def answer
      @@answer
    end
    
  end 
  
end 
