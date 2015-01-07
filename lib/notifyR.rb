
module NotifyR 
	class NotifyDeveloper
		attr_accessor :developer, :exception, :server_name
		def initialize(developer, exception, server_name=nil)
			@developer = developer
			@exception = exception
			@server_name = server_name
		end
		def response
			return {
				developer:@developer, exception: @exception, exception: @exception
			}
		end
	end

end



