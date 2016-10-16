class ListsController < ApplicationController
  def index
  	@posts = List.all
  end

  def new
  	@post = List.new
  end

  def create
  	@post = List.new(post_params)

  	if @post.save
  		redirect_to @post
  	else
  		render 'new'
  	end
  end

  def show
  	@post = List.find(params[:id])  	
  end

  def edit
  	@post = List.find(params[:id])  	  	
  end

  def destroy
  	@post = List.find(params[:id])  	  	

  	@post.destroy
  	redirect_to root_path
  end


  def update
  	@post = List.find(params[:id])  	
  	
  	if @post.update(post_params)
  		redirect_to @post
  	else
  		render 'edit'
  	end

  end

private
def post_params
	params.require(:list).permit(:firstname, :lastname, :phonenum, :email, :address, :rsvp, :comments)
	
end


end
