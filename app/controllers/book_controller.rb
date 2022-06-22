class BookController < ApplicationController
  before_action :set_book, only: [:destory]
  def create
    book = Book.new(book_params)
    if book.save
      render json: book , status: :created
    else
      render json: book.errors, status: 422
    end
  end

  def read
    render json: Book.all , status: 200
  end

  def update
    book1 = Book.find(params[:id])
    if book1.update(book_params)
      render json: book1 , status: 200
    else
      render json: book1.errors, status: 422
    end
  end

  def destroy
 Book.destroy(params[:id])
  end



  def book_params
  params.require(:book).permit(:name,:author)
  end
  def set_book
    @book = Book.find(params[:id])
  end
end
