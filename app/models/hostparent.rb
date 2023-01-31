class Hostparent < ApplicationRecord
  has_many :orphans, dependent: :destroy
end
