class UsersController < ApplicationController
  def show
  	@user = User.find(params[:id])
  end

  def edit
  	@user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.toggle!(:admin)
	  if @user.update_attributes(user_params)
	    flash[:success] = "Your profile was updated!"
			redirect_to @user
	  else
	    render 'edit'
	  end
  end

private

	def user_params
		params.require(:user).permit(:email, :admin)
	end
end
