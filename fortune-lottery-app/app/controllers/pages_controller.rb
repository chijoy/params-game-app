class PagesController < ApplicationController
  def fortune
    @page_title = 'Fortune'
    potential_fortune = ["You will come into a lot of money.", "You will live a long life.", "You in trouble."]
    
   
    @fortune = potential_fortune.sample
  end

  def lottery
    @page_title = 'Lottery'

    lottery_list = []

    6.times do
      lottery_list << rand(1..99)
      
    end
    @lottery_numbers = lottery_list.join(" ")
  end 

  def page_visits
    @count = 0
    @count += 1
  end
end
