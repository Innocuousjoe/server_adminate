require 'rails_helper'

describe TaskPresenter do
	subject { presenter.present }
	let(:presenter) { described_class.new(task: task) }
	let(:task) { FactoryBot.create :task }

	it "returns the proper json blob" do
		response_hash = {
			name: task.name,
			description: task.description,
			points: task.points
		}

		expect(subject).to eq(response_hash)
	end
end