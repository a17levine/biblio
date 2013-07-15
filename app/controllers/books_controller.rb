class BooksController < ApplicationController

	def new
		@book = Book.new
	end

	def create
		@book = Book.create(params[:book])
		redirect_to book_url(@book)
	end

	def update
		
	end

	def show
		@book = Book.find(params[:id])
	end

	def index
		@books = Book.all
	end

	def destroy
		
	end

end