class ChairsController < ApplicationController
  def index
    @chairs=Chair.all
    render :index
    # render json: {message: "hello"};
  end 
end
