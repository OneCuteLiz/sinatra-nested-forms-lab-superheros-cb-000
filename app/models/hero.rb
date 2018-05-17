class Hero
  
  attr_accessor :name, :power, :bio
  
  HERO = []
  
  def initialize(args)
    @name = args[:name]
    @power = args[:power]
    @bio = args[:bio]
    
    HERO << self
  end
  
  def self.all
    HERO
  end
  
end