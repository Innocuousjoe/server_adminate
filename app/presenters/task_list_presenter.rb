class TaskListPresenter

	def initialize(tasks:)
		@tasks = tasks
	end

	def present
		@tasks.map { |task| TaskPresenter.new(task: task).present }
	end
end