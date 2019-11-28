class AdminPanelController < ApplicationController

  before_action :authenticate_admin!, only: [:update_localization]

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
end