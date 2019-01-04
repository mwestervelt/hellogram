class CommentsController < ApplicationController

before_action :set_comment, only: [:show, :edit, :update, :destroy]

 def index
   @comments = Comment.all
 end

 def show
   @users = User.all
 end

 def new
   @comment = Comment.new
 end

 def edit
 end

 def create


   @comment = Comment.create(comment_params)
   redirect_to post_path(@comment.post)
 end

 def update

 end

 def destroy
   @comment = Comment.find(params[:id])
   @comment.destroy
   redirect_to post_path(@comment.post)
 end

 private
   def set_comment
     @comment = Comment.find(params[:id])
   end

   def comment_params
     params.require(:comment).permit(:content, :user_id, :post_id)
   end
end
