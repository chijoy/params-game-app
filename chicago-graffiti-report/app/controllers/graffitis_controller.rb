class GraffitisController < ApplicationController
  def index
    @graffitis = Unirest.get("https://data.cityofchicago.org/resource/cdmx-wzbz.json").body
  end
end
