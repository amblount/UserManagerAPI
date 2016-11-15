class UsersController < ApplicationController
  def index
  	render :json => User.all, status: 200
  end

  def create
  	user = User.create(user_params)

  	if user.valid?
  		render :json => user, status: 201
  	else
  		head 400
  	end
  end

  def edit
  	user = User.find(params[:id])
  	render :json => user, status: 200
  end

  def update
  	user = User.find(params[:id]).update_attributes(user_params)

  	if user
  		render :json => {success: "user updated"}, status: 204
  	else
  		render :json => {error: "failed"}, status: 400
  	end
  end

  def destroy
  	user = User.find(params[:id])
  	user.destroy

  	if user.destroyed?
  		render :json => {success: "destroyed sucessfully"}, status: 200
  	else
  		render :json => {error: "something went wrong"}, status: 400
  	end
  end

  private

  def user_params
  	params.require(:user).permit(:first_name, :last_name, :username, :email)
  end
end
