class Article < ApplicationRecord
  has_many :comments  # this creates a one to many association with comments
  validates :title, presence: true,   # This validation makes sure that it exusts and usnt just an empty string
            length: { minimum: 5 }    # This makes sure the length is at least 5 char
end
