module Admin

class UsersController < ApplicationController
  def index
  end

  def edit
		@user = User.find(params[:id])
  end

  def update
		@user=User.find(params[:id])

		first_name = params[:user][:first_name]
		last_name = params[:user][:last_name]
		email = params[:user][:email]
		admin_value = params[:user][:is_admin]
  		@user.update(first_name:first_name,last_name:last_name, email:email)

  		if admin_value == "1"
  			@user.update(is_admin:true)
  		else 
  			  @user.update(is_admin:false)
  		end
  		redirect_to admin_users_path
  end

    def destroy
		@user=User.find(params[:id])
		@user.destroy
    redirect_to admin_users_path
	end
end

end
