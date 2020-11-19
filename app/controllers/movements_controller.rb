class MovementsController < ApplicationController 

    before_action :set_movement, only: [:show, :edit, :update, :destroy]

    def index 
        redirect_if_not_logged_in
        @movements = Movement.all 
    end 

    def show 
        redirect_if_not_logged_in
        if !@movement
            redirect_to movements_path
        end 
    end 

    def new 
        redirect_if_not_logged_in
        @movement = Movement.new
        2.times {@movement.protests.build}
    end 

    def create 
        @movement = Movement.new(movement_params)
        if @movement.save 
            redirect_to movement_path(@movement)
        else 
            render :new 
            2.times {@movement.protests.build}
        end 
    end 

    def edit 
        redirect_if_not_logged_in
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
            params.require(:movement).permit(:id,:name, :yr_started, :description, protests_attributes: [:id, :name, :location, :date, :movement_id, :user_id, :certify])
        end 

end 