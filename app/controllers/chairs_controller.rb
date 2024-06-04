class ChairsController < ApplicationController
  def index
    @chairs=Chair.all
    render :index
    # render json: {message: "hello"};
  end 

  def show
    #render json:{msg: "one product"}
    @chair = Chair.find_by(id: params[:id])
    render template: "chairs/show"
  end

  def create
   
    @chair = Chair.new(chairType: params[:chairType], 
                        color: params[:color],
                        price: params[:price])       
    # @chair.save
    if @chair.save
      render template: "chairs/show"
    else
      render json: {error: @chair.errors.full_messages}
    end
  end

end

