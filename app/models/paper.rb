class Paper < ApplicationRecord
 belongs_to :conference_theme
 belongs_to :conference_subtheme

 has_rich_text :content
end
