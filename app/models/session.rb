class Session < ApplicationRecord
  belongs_to :user
  has_many :actions, dependent: :destroy 
end
