class PagesController < ApplicationController
  def home
    @posts = Blog.all
    @skills = Skill.all
    @page_title = "Home | Cat Perry Portfolio"
  end

  def about
  end

  def portfolio
  end

  def contact
  end
end
