class Game
  def initialize player
    @players=player
    @over=false
  end
  def over?
      @players.each {|player| @over=true if player.points>=21 }
      if(@over==false)
        i=0
        @players.each {|player| i+=1 if player.hope==true}
        @over=true if i==@players.count
      end
    @over
  end
end