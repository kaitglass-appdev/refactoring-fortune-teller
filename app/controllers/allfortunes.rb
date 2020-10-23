class AllfortunesController < ApplicationController
  def horoscopes
    all_zodiacs = Zodiac.list
    this_zodiac = all_zodiacs.fetch(:aries)
    @horoscope = this_zodiac.fetch(:horoscope)
    
    @array_of_numbers = Array.new

    5.times do
      another_number = rand(1...100)
      
      @array_of_numbers.push(another_number)
    end

    render({ :template => "general_horoscope_templates/signs.html.erb" })
  end