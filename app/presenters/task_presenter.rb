class TaskPresenter
	def initialize(task:)
		@task = task
	end

	def present
		{
			name: @task.name,
			description: @task.description,
			points: @task.points
		}
	end
end