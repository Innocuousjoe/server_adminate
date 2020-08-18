module Api
	module V1
		class TasksController < InheritedResources::Base
			def index
				tasks = Task.all
				presentable_tasks = TaskListPresenter.new(tasks: tasks).present

				render json: { tasks: presentable_tasks }
			end
		end
	end
end