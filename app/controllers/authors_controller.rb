
class AuthorsController < ApplicationController
  def show
    @author = Author.find(params[:id])
  end

  def new
  end

  def create
    @author = Author.new(author_params)
    if @author.save
      flash[:success] = "Author successfully created"
      redirect_to @author
    else
      flash[:error] = "Something went wrong"
      render 'new'
    end
  end
  
  

  private

  def author_params
    params.permit(:email, :name)
  end
end