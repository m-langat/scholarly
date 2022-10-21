class Paper < ApplicationRecord
  belongs_to :theme
  belongs_to :subtheme

  has_many :conference_theme
end
