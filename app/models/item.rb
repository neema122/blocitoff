class Item < ActiveRecord::Base
  belongs_to :user
  
  def days_left
    (created_at.to_date + 7.days - Date.today).to_i
   end
end
