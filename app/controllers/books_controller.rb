class BooksController < ApplicationController
  def new
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)
    if @book.save
      flash[:notice] = "Book was successfuly created"
      redirect_to book_path(@book.id)
    else
      flash.now[:alert] = "error"
      render :index
  end

  def index
    @books = Book.all
    @book = Book.new
  end

  def show
  end

  def edit
  end

  private
  def book_params
    params.require(:book).permit(:title, :body)
  end
end
