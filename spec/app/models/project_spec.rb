require 'rails_helper'

describe Project, type: :model do
  let(:project) { build :project }

  it 'belongs to a user' do
    expect(project).to belong_to :user
  end

  it 'has one course' do
    expect(project).to belong_to :course
  end

  it 'has many tasks' do
    expect(project).to have_many :tasks
  end

  it 'requires a name' do
    expect(project).to validate_presence_of :name
  end
end
