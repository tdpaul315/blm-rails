class MovementsController < ApplicationController 

    before_action :set_movement, only: [:show, :edit, :update, :destroy]

    def index 
        @movements = Movement.all 
    end 

    def show 
        if !@movement
            redirect_to movements_path
        end 
    end 

    def new 
        @movement = Movement.new
    end 

    def create 
        @movement = Movement.new(movement_params)
        if @movement.save 
            redirect_to movement_path(@movement)
        else 
            render :new 
        end 
    end 

    def edit 
        if !@movement
            redirect_to movements_path
        end  
    end 

    def update
        if @movement 
            @movement.update(movement_params)
            redirect_to movement_path(@movement)
        else 
            if @movement.errors.any? 
                render :edit 
            end 
        end 
    end 

    def destroy 
        @movement.destroy
        redirect_to movements_path 
    end 

    private 

        def set_movement 
            @movement = Movement.find_by_id(params[:id])
        end 

        def movement_params 
            params.require(:movement).permit(:name, :yr_started, :description)
        end 

end 