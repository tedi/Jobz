module ApplicationHelper

	def body_class
		if params[:controller] == "devise/sessions"
      return ' class=splash'
    end
	end


end
