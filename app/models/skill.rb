class Skill < ApplicationRecord
  include Placeholder
  validates_presence_of :title, :percent_utilized

  after_initialize :set_defaults
  # this is a second way to set a default, besides doing it in the model as we did for toggle status
  # this is ashortcut wayt ot say if image is nil then set imgage to items provided. 

  def set_defaults
    self.badge ||= Placeholder.image_generator(height: '250', width: '250')
  end
end
