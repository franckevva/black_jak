class Player
  attr_reader :name, :points ,:hope
  def initialize name
    @name=name
    @points=0
    @card=[]
    @hope=false
  end

  def takeCard c
    @card[@card.count]=c
    @points+=c
  end

  def cont char
    @hope = true if char=='f'
    @hope=true if @card.count==5
    @hope=true if @points>=21
    @hope
  end
end