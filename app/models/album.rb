class Album < ActiveRecord::Base
  validates :title, presence: true
  validates :score, numericality: {
    only_integer: true,
    greater_than: 0,
    less_than: 6,
    allow_blank: true }
end
