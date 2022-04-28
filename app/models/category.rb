require 'pry'

class Category < ActiveRecord::Base
  has_many :events

  def print_all
    self.all
  end
end