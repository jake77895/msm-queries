class DirectorsController < ApplicationController

  def index
    @directors_all = Director.all
    
    render({ :template => "director_templates/list"})
  end

  def show
    the_id = params.fetch("the_id")

    matching_records = Director.where( :id => the_id)

    @the_director = matching_records.at(0)
    
    render({:template => "director_templates/details"})
  end

  def youngest_director

    @youngest_director = Director.where.not(dob: nil).order(dob: :desc).first

    render({:template => "director_templates/youngest"})
  end

  def eldest_director

    @eldest_director = Director.where.not(dob: nil).order(dob: :asc).first

    render({:template => "director_templates/eldest"})
  end

end
