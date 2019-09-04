class Contact < ApplicationRecord

  def friendly_updated_at
    updated_at.strftime("%A, %b %d")
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def japan_number
    "+ 81 #{phone_number}"
  end


end
