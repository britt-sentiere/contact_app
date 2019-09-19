class Group < ApplicationRecord
  has_many :contact_group
  has_many :contacts, through: :contact_group
end
