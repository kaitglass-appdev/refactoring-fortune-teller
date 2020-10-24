class AllfortunesController < ApplicationController
  def horoscopes
    #@zodiac_sign = params.fetch("the_sign")
    @zodiac_sign = params.fetch("the_sign")
    name_of_sign = @zodiac_sign.to_sym
    
    

  
    all_zodiacs = Zodiac.list

    @horoscope = all_zodiacs.fetch(name_of_sign)
    @fortune = @horoscope.fetch(:horoscope)
    
   
    
    @array_of_numbers = Array.new

    5.times do
      another_number = rand(1...100)
      
      @array_of_numbers.push(another_number)
    end

    render({ :template => "general_horoscope_templates/signs.html.erb" })
  end
end