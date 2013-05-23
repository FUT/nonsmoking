class DiariesController < ApplicationController
  load_resource

  def next_state
    next_and_show
  end

  def smoking_index
    index = params[:smoking_index][:sig_per_day].to_i * params[:smoking_index][:months].to_i
    @diary.update_attribute :smoking_index, index

    next_and_show
  end

  def smoking_dependency
    @diary.update_attribute :smoking_dependency, params[:dependency][:name]

    next_and_show
  end

  private
  def next_and_show
    @diary.next_state!

    render action: :show
  end
end
