class BooksController < ApplicationController
  def create
		@book = Book.new(book_params)
		@book.user_id = current_user.id
	  @book.save
	  redirect_to book_path(@book)
  end


  def index
    @books = Book.all
    @user = current_user
    @book = Book.new
    
  end

  def show
   @book = Book.find(params[:id])
  end

  def edit
  end

  private
  def book_params
    params.require(:book).permit(:title, :body)
  end

end
