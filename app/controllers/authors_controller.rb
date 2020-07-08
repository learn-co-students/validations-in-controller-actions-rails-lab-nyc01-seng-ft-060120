class AuthorsController < ApplicationController
  def show
    @author = Author.find(params[:id])
  end

  def new
    @author = Author.new
  end

  def create
    @author = Author.create(author_params)
    if @author.valid?
      redirect_to author_path(@author)
    else
      flash[:error_list] = @author.errors.full_messages
      render 'new'
    end

  end

  private

  def author_params
    params.permit(:email, :name)
  end
end
