class DiariesController < ApplicationController
  load_resource

  def next_state
    @diary.update_attributes params[:diary]

    @diary.next_state!
    redirect_to action: :show
  end

  def smoking_index
    index = params[:smoking_index][:sig_per_day].to_i * params[:smoking_index][:months].to_i
    @diary.update_attribute :smoking_index, index

    @diary.next_state!
    redirect_to action: :show
  end

  def smoking_dependency
    @diary.update_attribute :smoking_dependency, params[:dependency][:name]

    @diary.next_state!
    redirect_to action: :show
  end

  def fagerstrom
    @diary.update_attribute :fagerstrom, params[:fagerstrom].values.map(&:to_i).reduce(&:+)

    @diary.next_state!
    redirect_to action: :show
  end

  def reset

  end
end
