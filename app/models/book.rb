class Book < ActiveRecord::Base
  attr_accessible :id, :title, :author, :year, :ISBN
end
