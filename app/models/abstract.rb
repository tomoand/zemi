class Abstract < ApplicationRecord
  validates :date, {presence: true, length: {maximum: 100}}
  validates :title, {presence: true, length: {maximum: 100}}
  validates :body, {presence: true, length: {maximum: 1000}}
  validates :textbook, {presence: true, length: {maximum: 1000}}
  validates :form, {presence: true, length: {maximum: 100}}
end
