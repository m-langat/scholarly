class Paper < ApplicationRecord
  belongs_to :theme
  belongs_to :subtheme
end
