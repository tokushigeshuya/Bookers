class BooksController < ApplicationController
  def new
  end
  
  def top
  end
  
  def index
    @book =Book.new
    @books = Book.all  
  end

  def create
    book = Book.new(book_params)
    book.save
    redirect_to '/'#いったんtopページにしてる
  end
  
  def show
  end

  def edit
  end
  
  private
  # ストロングパラメータ
  def book_params
    params.require(:book).permit(:title, :body)
  end
end
