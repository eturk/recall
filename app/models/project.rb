# == Schema Information
#
# Table name: projects
#
#  id         :integer          not null, primary key
#  name       :string
#  notes      :string
#  due        :datetime
#  user_id    :integer
#  subject_id :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Project < ApplicationRecord
  belongs_to :user
  belongs_to :course

  has_many :tasks

  validates :name, presence: true
end
