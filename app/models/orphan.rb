class Orphan < ApplicationRecord
  #belongs_to :hostparent
  #belongs_to :originalparent
  #belongs_to :user
validates :name, :description, null:false, presence: true, length: { minimum: 1 }
validates :age, :sex, presence: false
#paginates_per 10
end
