module ApplicationHelper

	def body_class
		if params[:controller] == "devise/sessions"
      return ' class=splash'
    end
	end

	def current_user
		User.find_by_email(session[:linkedin_data]['email'])
	end

end
