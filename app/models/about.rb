class About < ApplicationRecord

  validates :date, :article_name, presence: true, uniqueness: true
  validates :article_text, presence: true

end
