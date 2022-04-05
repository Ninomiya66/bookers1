class BooksController < ApplicationController

  def index

    @books = Book.all

  end

  def new

    @book = Book.new

  end

  def create

    book = Book.new(book_params)

    book.save

  end

  private
  # ストロングパラメータ
  def book_params

    params.require(:book).permit(:title, :body)

  end

end
