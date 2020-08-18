require 'rails_helper'

describe Api::V1::TasksController, :type => :request do
	subject { get "/api/v1/tasks", xhr: true, params: {}, headers: {} }

	context "when there are no tasks" do
		before do
			subject
		end

		it "responds with an empty array in the json" do
			tasks = JSON.parse(response.body).with_indifferent_access[:tasks]
			expect(tasks).to be_empty
		end
	end

	context "when there are tasks" do
		before do
			@task_one = FactoryBot.create :task
			@task_two = FactoryBot.create :task

			subject
		end

		it "responds with an array of the tasks" do
			tasks = JSON.parse(response.body).with_indifferent_access[:tasks]
			expected_array = [
				{
					name: @task_one.name,
					description: @task_one.description,
					points: @task_one.points
				}.with_indifferent_access,
				{
					name: @task_two.name,
					description: @task_two.description,
					points: @task_two.points
				}.with_indifferent_access
			]

			expect(tasks).to eq(expected_array)
		end
	end
end