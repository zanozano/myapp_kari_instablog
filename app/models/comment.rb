class Comment < ApplicationRecord
  belongs_to :instablog
  belongs_to :user
end
