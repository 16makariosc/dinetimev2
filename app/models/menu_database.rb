class MenuDatabase < ActiveRecord::Base
  belongs_to :dining_hall
  belongs_to :menu_item
end
