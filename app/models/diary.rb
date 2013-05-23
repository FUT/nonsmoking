# encoding: utf-8

class Diary < ActiveRecord::Base
  DEPENDENCIES = %w{Идеаторная Психосоматическая Диссоциированная}

  attr_accessible :state, :user_id, :smoke_years, :smoke_months, :previous_experience

  belongs_to :user

  def reset_state!
    update_attribute :state, 0
  end

  def next_state!
    increment! :state
  end
end
