class DiningHall < ActiveRecord::Base
  has_many :menu_databases
  has_many :menu_items, through: :menu_databases
end
