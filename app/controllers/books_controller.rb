class BooksController < ApplicationController

  def index
    @books = Book.all
  end

  def create
    @book = Book.new(book_params)
    @book.user_id = current_user.id
    if @book.save
      redirect_to book_path(@book)
    else
      render :index
    end
  end

  def show
    @book = Book.find(params[:id])
  end

  def edit
  end

  private

  def book_params
    params.permit(:title, :body)
  end
end
