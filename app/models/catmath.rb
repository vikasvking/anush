class Catmath < ApplicationRecord
  validates :topic,presence: true
  validates :question,presence: true
  validates :right,presence: true
  validates :wrong,presence: true
end
