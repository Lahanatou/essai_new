class Originalparent < ApplicationRecord
  has_many :orphans, dependent: :destroy
#  validates :name, :adress, :phone, null:false, length: { minimum: 1 }
end
