class Question < ApplicationRecord
  belongs_to :Chapter
  validates :name, presence: true
  validates :title, presence: true
  validates :option_1, presence: true
  validates :option_2, presence: true
  validates :option_3, presence: true
  validates :option_4, presence: true
  validates :ans, presence: true
end
