module ApplicationHelper
#definimos un flass message para cada clase q encontramos en bootstrap
	def flash_class(type)
		case type
		when :alert
			"alert-danger"		 	
		when :notice
			"alert-info"			
		else
			""
		end		
	end
end
