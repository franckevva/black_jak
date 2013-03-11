class Cards
  def initialize
    @mas=[2,3,4,5,6,7,8,9,10,2,3,4,11]*4;
    @hash={2=>2,3=>3,4=>4,5=>5,6=>6,7=>7,8=>8,9=>9,10=>10,2=>'B',3=>'D', 4=>'K',11=>'A'}
  end
  def getCard
   i=rand(0..35)
   while(@mas[i]==0)
      i=rand(0..35)
   end
   @value=@mas[i]
   @mas[i]=0
   return @value
  end

  def  valueCard   value
    @hash[value]
  end

end