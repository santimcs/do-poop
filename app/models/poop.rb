class Poop < ApplicationRecord
  belongs_to :lunch
  belongs_to :dinner
  belongs_to :snack
end
