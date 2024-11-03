class DirectorsController < ApplicationController

  def index
    @directors_all = Director.all
    
    render({ :template => "pages/directors"})
  end

end
