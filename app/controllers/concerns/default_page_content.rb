module DefaultPageContent
  extend ActiveSupport::Concern
    included do
      before_action :set_page_defaults
    end

  def set_page_defaults
    @page_title = "Cat Perry Portfolio"
    @seo_keywords = "Cat Perry portfolio junior web developer Rails JavaScript fullstack React scrum master"
  end

end