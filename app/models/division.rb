class Division < ApplicationRecord
  has_many :galleries, dependent: :destroy
end
