class CommentsController < ApplicationController
  load_resource :diary

  def create
    Comment.build_from(@diary, current_user.id, params[:new_comment][:body]).save

    redirect_to @diary
  end
end
