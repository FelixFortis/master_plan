# == Schema Information
#
# Table name: milestones
#
#  id          :integer          not null, primary key
#  title       :string(255)
#  due_date    :date
#  description :text(65535)
#  project_id     :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Milestone < ActiveRecord::Base
  belongs_to :project
  # has_many :steps, dependent: :destroy
  
  validates_presence_of :title, :due_date, :description
end
