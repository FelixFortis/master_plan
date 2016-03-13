# == Schema Information
#
# Table name: goals
#
#  id          :integer          not null, primary key
#  title       :string(255)
#  due_date    :date
#  description :text(65535)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  user_id     :integer
#

class Goal < ActiveRecord::Base
  belongs_to :user
  has_many :milestones, dependent: :destroy
  # has_many :steps, dependent: :destroy

  validates_presence_of :title, :due_date, :description
end
