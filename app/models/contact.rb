class Contact < ApplicationRecord

  validates :social_icon, :social_name, presence: true, uniqueness: true
  validates :url, presence: true

end
