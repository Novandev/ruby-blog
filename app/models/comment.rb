class Comment < ApplicationRecord
  belongs_to :article   # This associates every comment to an article
end
