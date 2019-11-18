class Comment < ApplicationRecord
  belongs_to :way
  belongs_to :user
end
