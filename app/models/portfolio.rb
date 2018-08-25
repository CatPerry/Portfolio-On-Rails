class Portfolio < ApplicationRecord
has_many :technologies
accepts_nested_attributes_for :technologies,
                              reject_if: lambda { |attrs| attrs['name'].blank? }

  include Placeholder
  validates_presence_of :title, :body, :main_image, :thumb_image

  def self.ruby
    where(subtitle: "Ruby")
  end
# putting logic here rather than in controller
  def self.javascript
    where(subtitle: "HTML, CSS, JavaScript")
  end
  # scope :javascript_portfolio_items, -> { where(subtitle: 'HTML, CSS, JavaScript') }

  after_initialize :set_defaults
  # this is a second way to set a default, besides doing it in the model as we did for toggle status
  # this is ashortcut wayt ot say if image is nil then set imgage to items provided. 
  def set_defaults
    self.main_image ||= Placeholder.image_generator(height: '600', width: '400')
    self.thumb_image ||= Placeholder.image_generator(height: '350', width: '200')
  end

end
