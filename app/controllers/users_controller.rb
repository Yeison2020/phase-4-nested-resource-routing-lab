class UsersController < ApplicationController



  def index
    user  = User.all 
    if user.valid? 
      return rendern json: user, status: :created
    else  
      render json: {error: user.error.full_message}
    end

  end
  def show
    user = User.find_by(id: params[:id])
    if user.valid? 
      return render json: user,status: :created 
    else
      render json: { error: user.errors.full_messages }, status: :unprocessable_entity

    end
   
  end



end
