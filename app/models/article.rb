class Article < ApplicationRecord
  has_many :comments, dependent: :destroy  # this creates a one to many association with comments, and when it deletes it deletes the comments as well
  validates :title, presence: true,   # This validation makes sure that it exusts and usnt just an empty string
            length: { minimum: 5 }    # This makes sure the length is at least 5 char
end
