# before_filter :authenticate_user!

class BooksController < ApplicationController

	def new
		@book = Book.new
	end

	def create
		@book = User.find(current_user.id).books.create(params[:book])
		# @book = Book.create(params[:book])
		redirect_to book_url(@book)
	end

	def update
		
	end

	def show
		@book = User.find(current_user.id).books.find(params[:id])
	end

	def index
		if user_signed_in?
			@books = User.find(current_user.id).books
		end
	end

	def destroy
		
	end

end