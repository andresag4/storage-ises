class Assignment < ActiveRecord::Base
  belongs_to :user
  belongs_to :role

  validates :user_id, :presence => true, :uniqueness => true
end
