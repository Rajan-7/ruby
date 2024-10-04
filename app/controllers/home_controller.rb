class HomeController < ApplicationController
  def index
    @books = Book.all
  end

  def new
    @book = Book.new 
  end

  def create
    book = Book.new(permitted_params)
    book.save

    redirect_to home_index_path
  end

  private

  def permitted_params
    params.require(:book).permit(:title, :body)
  end
end
