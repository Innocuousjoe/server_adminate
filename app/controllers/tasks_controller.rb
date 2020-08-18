module Api
	module V1
		class TasksController < InheritedResources::Base
			def index
				render json: { Task.all }
			end
		end
	end
end