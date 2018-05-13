class Portfolio < ApplicationRecord
  validates_presence_of :title, :body, :main_image, :thumb_image

  def self.ruby
    where(subtitle: "Ruby")
  end
# putting logic here rather than in controller
  def self.javascript
    where(subtitle: "HTML, CSS, JavaScript")
  end
  # scope :javascript_portfolio_items, -> { where(subtitle: 'HTML, CSS, JavaScript') }

end
