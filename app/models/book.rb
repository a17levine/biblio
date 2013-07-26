require 'goodreads'

class Book < ActiveRecord::Base
  attr_accessible :id, :title, :author, :year, :ISBN, :avatar, :cover_art
  mount_uploader :avatar, AvatarUploader
  belongs_to :user

  before_create :goodreads_autofill_from_isbn_number



private

  def goodreads_autofill_from_isbn_number
  	client = Goodreads.new(:api_key => ENV["GOODREADS_KEY"])
  	book = client.book_by_isbn(self.ISBN)
  	self.title = book.title
  	self.author = book.authors.first[1].name
  	self.year = book.publication_year.to_i
  	self.cover_art = book.image_url
  end


end
