class Contact < ApplicationRecord
  validates :name, presence: true 

  def friendly_updated_at
    updated_at.strftime("%A, %b %d")
  end

  def full_name
    result = "#{first_name}"
    result += " #{middle_name} " if middle_name 
    result += "#{last_name}"
  end

  def japan_number
    "+ 81 #{phone_number}"
  end


end
