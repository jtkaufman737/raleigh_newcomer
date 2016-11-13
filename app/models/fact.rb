class Fact < ApplicationRecord
  validates :category, presence: true,
            length: { minimum: 5 }
end
