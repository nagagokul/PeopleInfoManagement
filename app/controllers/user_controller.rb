class UserController < ApplicationController
    layout 'standard'
    def index
        @user = User.all
    end

    def show
        @user = User.find(params[:id])
    end
    
    def new
        @user = User.new
        2.times { @user.addresses.build }
    end

    def user_params
        params.require(:users).permit(:first_name, :last_name, :age, :gender, :date_of_birth, :martial_status, :addresses_attributes => [:street_address, :city, :state, :country, :postal_code] )
    end

    def create
        @user = User.new(user_params)

        if @user.save
            redirect_to :action => 'index'
        else
            render :action => 'new'
        end
    end
    
    def edit
        @user = User.find(params[:id])
    end
    
    def user_param
        params.require(:user).permit(:first_name, :last_name, :age, :gender, :date_of_birth, :martial_status, :addresses_attributes => [:street_address, :city, :state, :country, :postal_code] )
    end
    
    def update
        @user = User.find(params[:id])
        if @user.update_attributes(user_param)
        redirect_to :action => 'show', :id => @user
        else
        render :action => 'edit'
        end
    end
    
    def delete
        @user = User.find(params[:id])
        @user.destroy
        redirect_to :action => 'index'
    end

end
