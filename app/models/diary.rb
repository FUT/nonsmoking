class Diary < ActiveRecord::Base
  attr_accessible :state, :user_id

  belongs_to :user

  after_create :create_diary
end
