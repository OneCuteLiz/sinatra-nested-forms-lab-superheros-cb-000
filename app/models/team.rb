class Team
  
  attr_accessor :name, :motto
  
  TEAM = []
  
  def initialize(params)
    @name = params[:name]
    @motto = params[:motto]
    
    TEAM << self
  end
  
  def self.all
    TEAM
  end
  
end