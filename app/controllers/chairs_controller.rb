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

  def update
    #update item based on id and new parameters 
    @chair = Chair.find_by(id: params[:id])
    @chair.chairType= params[:chairType] ||  @chair.chairType
    @chair.color= params[:color] ||  @chair.color
    @chair.price= params[:price] ||  @chair.price
    if @chair.save
      render template: "chairs/show" 
    else
      render json: {error: @chairs.errors.full_messages}
    end
  end

  def destroy
    #delete item based on an id"
    @chair = Chair.find_by(id: params[:id])
    @chair.destroy
    render json: {message: "Deleted #{params[:id]}"}
  end

end

