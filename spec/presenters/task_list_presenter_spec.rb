require 'rails_helper'

describe TaskListPresenter do
	subject { presenter.present}
	let(:presenter) { described_class.new(tasks: tasks) }
	let(:tasks) { [task_one, task_two] }
	let(:task_one) { FactoryBot.create :task }
	let(:task_two) { FactoryBot.create :task }

	it "returns the proper json blob" do
		response_array = [
			{
				name: task_one.name,
				description: task_one.description,
				points: task_one.points
			},
			{
				name: task_two.name,
				description: task_two.description,
				points: task_two.points
			}] 

		expect(subject).to eq(response_array)
	end
end