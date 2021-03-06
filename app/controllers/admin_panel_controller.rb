class AdminPanelController < ApplicationController

  before_action :authenticate_admin!

  def index; end

  def update_home_page
    unless params[:name] && params[:about] && params[:seo_keywords] && params[:seo_description]
      render status: 500, json: {
        message: "Wrong params. Contact Web Administrator"
      }
    end
    update_locales('name', params[:name], 'home_page')
    update_locales('about', params[:about], 'home_page')
    update_locales('seo_keywords', params[:seo_keywords], 'home_page')
    update_locales('seo_description', params[:seo_description], 'home_page')
  end

  def update_research_page
    unless params[:title] && params[:about] && params[:seo_keywords] && params[:seo_description]
      render status: 500, json: {
        message: "Wrong params. Contact Web Administrator"
      }
    end
    update_locales('title', params[:title], 'research_page')
    update_locales('about', params[:about], 'research_page')
    update_locales('seo_keywords', params[:seo_keywords], 'research_page')
    update_locales('seo_description', params[:seo_description], 'research_page')
  end

  def update_contact_page
    unless params[:title] && params[:about] && params[:seo_keywords] && params[:seo_description]
      render status: 500, json: {
        message: "Wrong params. Contact Web Administrator"
      }
    end
    update_locales('title', params[:title], 'contact_page')
    update_locales('about', params[:about], 'contact_page')
    update_locales('seo_keywords', params[:seo_keywords], 'contact_page')
    update_locales('seo_description', params[:seo_description], 'contact_page')
  end

  def update_cv_page
    unless params[:doc] && params[:seo_keywords] && params[:seo_description]
      render status: 500, json: {
        message: "Wrong params. Contact Web Administrator"
      }
    end
    update_locales('doc', params[:doc], 'cv_page')
    update_locales('seo_keywords', params[:seo_keywords], 'cv_page')
    update_locales('seo_description', params[:seo_description], 'cv_page')
  end

  def update_scholar
    unless params[:link]
      render status: 500, json: {
        message: "Wrong params. Contact Web Administrator"
      }
    end
    update_locales('link', params[:link], 'google_scholar')
  end

  def update_teaching_page
    unless params[:title] && params[:seo_keywords] && params[:seo_description]
      render status: 500, json: {
        message: "Wrong params. Contact Web Administrator"
      }
    end
    update_locales('title', params[:title], 'teaching_page')
    update_locales('seo_keywords', params[:seo_keywords], 'teaching_page')
    update_locales('seo_description', params[:seo_description], 'teaching_page')
  end

  def update_service_page
    unless params[:title] && params[:seo_keywords] && params[:seo_description]
      render status: 500, json: {
        message: "Wrong params. Contact Web Administrator"
      }
    end
    update_locales('title', params[:title], 'service_page')
    update_locales('seo_keywords', params[:seo_keywords], 'service_page')
    update_locales('seo_description', params[:seo_description], 'service_page')
  end

  def update_blog_page
    unless params[:title] && params[:seo_keywords] && params[:seo_description]
      render status: 500, json: {
        message: "Wrong params. Contact Web Administrator"
      }
    end
    update_locales('title', params[:title], 'blog_page')
    update_locales('seo_keywords', params[:seo_keywords], 'blog_page')
    update_locales('seo_description', params[:seo_description], 'blog_page')
  end

  def force_load_citation
    load_citations(true)
  end
end