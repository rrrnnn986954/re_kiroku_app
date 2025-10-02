class Action < ApplicationRecord
  belongs_to :session
  belongs_to :category
end
