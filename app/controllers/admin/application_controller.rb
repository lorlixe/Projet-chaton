module Admin

class ApplicationController < ::ApplicationController
	before_action :only_admin

	private

		def only_admin
    		if current_user.is_admin == false
      			flash[:danger] = "Vous ne pouvez pas acceder à cette page"
      			redirect_to root_path
    		end
  		end


end

end
