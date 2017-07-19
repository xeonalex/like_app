class Question < ApplicationRecord
  belongs_to :user

  belongs_to :topic

  has_many :answers, dependent: :destroy

  has_many :likes, as: :likeable, dependent: :destroy
end
