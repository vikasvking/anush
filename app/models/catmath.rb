class Catmath < ApplicationRecord
  validates :topic,presence: true
  validates :question,presence: true
end
