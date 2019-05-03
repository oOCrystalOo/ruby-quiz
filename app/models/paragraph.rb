class Paragraph < ApplicationRecord
  validates :text, presence: true, length: { minimum: 3 }
  validates :author, presence: true, length: { minimum: 3 }
end
