class ProtestsController < ApplicationController 

    before_action :set_protest, only: [:show, :edit, :update]
    

  def index
    if params[:movement_id]
      set_movement
      @protests = @movement.protests
    else
      @protests = Protest.all
    end
  end

  def show
    if params[:movement_id]
      set_movement
    end
  end

  def new
    if params[:movement_id]
      set_movement
      @protest = @movement.protests.build
    else
      @protest = Protest.new
    end
  end

  def create
    if params[:movement_id]
      set_movement
      @protest = @movement.protests.build(protest_params)
    else
      @protest = Protest.new(protest_params)
    end
    if @protest.save
      if @movement
        redirect_to movement_protest_path(@movement, @protest)
      else
        redirect_to @protest
      end
    else
      render :new
    end
  end

  def edit
    if params[:movement_id]
      set_movement
    end
  end

  def update
    if params[:movement_id]
      set_movement
      @protest.update(protest_params)
      redirect_to movement_protest_path(@movement, @protest)
    else 
          render :edit
    end
  end

  def destroy
  end

    private 


    def set_movement
        @movement = Movement.find_by_id(params[:movement_id])
    end 

    def set_protest 
        @protest = Protest.find_by_id(params[:id])
    end 

    def protest_params 
        params.require(:protest).permit(:name, :location, :date, :user_id, :movement_id, :certify)
    end 

end 