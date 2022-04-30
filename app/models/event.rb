require 'pry'

class Event < ActiveRecord::Base
  belongs_to :category

  validates :event_name, presence: true, uniqueness: true
  validates :event_cost, presence: true
  validates :category_id, presence: true
  
end