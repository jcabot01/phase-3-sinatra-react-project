require 'pry'

class Category < ActiveRecord::Base
  has_many :events

  validates :category_name, presence:true
end