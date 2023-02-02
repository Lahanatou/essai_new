class Originalparent < ApplicationRecord
  validates :name,:description,:phone, null:false, presence: true
end
