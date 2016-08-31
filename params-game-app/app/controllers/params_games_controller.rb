class ParamsGamesController < ApplicationController
  def query
    if @name = params[:name].start_with?("a")

      @new_name = "Hey, your name starts with the first letter of the alphabet!"
    else
      @name = params[:name].upcase
    end
  end
  def guess
    
    @number = 36
    if @number == params[:number].to_i
      @guess = "Hey, you guessed the right number!"
    elsif params[:number].to_i > @number
      @toohighguess = "Too high."
    elsif params[:number].to_i < @number
      @toolowguess = "Too low"
    end
  end
end
