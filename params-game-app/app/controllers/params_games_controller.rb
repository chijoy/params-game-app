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

  def guess_form
    
  end

  def answer_form
    answer = 36
    if params[:number].to_i == answer
      @guess = "Hey, you guessed the right number!"
    elsif params[:number].to_i > answer
      @guess = "Too high."
    elsif params[:number].to_i < answer
      @guess = "Too low"
    end
  end

  def url
    @number = 36
    if @number == params[:whatever].to_i
    elsif params[:whatever].to_i > @number
      @toohighguess = "Too high."
    elsif params[:whatever].to_i < @number
      @toolowguess = "Too low"
    end
  end

  
end
