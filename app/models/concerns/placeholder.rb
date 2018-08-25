module Placeholder
  # Note place concerns here. All concerns should be data related only. Dont put things here that are for application execution for example. This first concern (image_generator) will create a helper module that will be used used on all other model files Placeholder.image_generator. 
  extend ActiveSupport::Concern

  def self.image_generator(height:, width:)
    "http://placehold.it/#{height}x#{width}"
  end

end