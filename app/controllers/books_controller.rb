class BooksController < ApplicationController

  def index
    @books = current_user.books
  end

  def create
    # @user = Users.find(params[:user_id])
    @book = current_user.books.create(book_param)
    @book.epubf = params[:book][:epubf]
    if @book.save
    	redirect_to :action => :index
    end
    # respond_with @book 
  end
  
  private
    def book_param
      params.require(:book).permit(:title, :author)
    end
end
