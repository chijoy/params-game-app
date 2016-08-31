class ParamsExamplesController < ApplicationController
  def query
    @message = params[:message].delete("e")
    @other_message = params[:other_message]
  end
end
  