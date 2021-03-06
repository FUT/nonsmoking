# encoding: utf-8

class Diary < ActiveRecord::Base
  acts_as_commentable

  DEPENDENCIES = %w{Идеаторная Психосоматическая Диссоциированная}

  TIME_RESTRICTIONS = [
    0,
    0,
    3.days,
    1.month,
    3.month,
    6.month,
    9.month,
    1.year
  ]

  TEST_TIME_RESTRICTIONS = [
    0,
    10.seconds,
    20.seconds,
    30.seconds,
    40.seconds,
    50.seconds,
    60.seconds,
    70.seconds,
  ]

  # TIME_RESTRICTIONS = TEST_TIME_RESTRICTIONS

  attr_accessible :state, :user_id, :smoke_years, :smoke_months, :previous_experience, :previous_fail,
    :aim, :smoking_bad, :what_if_no_smoking, :why_it_brings_satisfaction, :stereotype_cause, :stereotype_denial,
    :hobby_no_smoking, :preparation_ended, :strategy

  belongs_to :user

  def reset_state!
    update_attribute :state, 0
  end

  def next_state!
    increment! :state
  end

  def ready_for_next_state?
    Time.now > preparation_ended + TIME_RESTRICTIONS[state - 9]
  end
end
