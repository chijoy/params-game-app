class ParamsExamplesController < ApplicationController

  def get_form

  end

  def send_form
    @message = params[:message]
  end

  def season_is_here
    @count = params[:count]
    @count_plus_one = @count + 1
  end
  
end
