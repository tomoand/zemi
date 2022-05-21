class Chat < ApplicationRecord
  validates :body, {presence: true, length: {maximum: 1000}}
  validates :date, {presence: true, length: {maximum: 100}}
  validates :user, {presence: true, length: {maximum: 100}}
end
