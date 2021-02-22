class AuthorsController < ApplicationController
  def show
    @author = Author.find(params[:id])
  end

  def new
    @author = Author.new
  end

  def create
    # binding.pry
    @author = Author.new(name: params[:name], email: params[:email], phone_number: params[:phone_number])
    if @author.valid?
      @author.save
      redirect_to author_path(@author)
    else
      render :new
    end
  end

  def edit
    @author = Author.find(params[:id])
  end

  def update
  end

  private

  def author_params
    params.permit(:name, :email, :phone_number)
  end
end
