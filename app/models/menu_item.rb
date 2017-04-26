class MenuItem < ActiveRecord::Base

  has_many :menu_databases
  has_many :dining_halls, through: :menu_databases
  has_many :reviews, dependent: :destroy

  after_initialize :init
  
  def increase_rating
    self.rating += 1
  end

  def decrease_rating
    self.rating -= 1
  end

  def init
    self.rating ||= 0
  end

end
