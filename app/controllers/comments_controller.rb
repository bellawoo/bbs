class CommentsController < ApplicationController
  def index
    @comments = Comment.find(params[:board_id], params[:post_id])
  end

  def show
    @comment = Comment.find(params[:board_id], params[:post_id], params[:id])
  end

  def new
    @comment = Comment.new
  end

  def create
    @comment = current_user.comments.new(
      author_id: params[current_user.id],
      post_id: params[:post_id],
      body: params[:body]
      )
    if @comment.save!
      redirect_to board_post_path(@comment.post.board_id, @comment.post_id), notice: "Comment has been posted."
    else
      render :new
    end
  end

  # def edit
    
  # end

  # def update
    
  # end

  # def destroy
    
  # end

end