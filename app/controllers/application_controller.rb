class ApplicationController < ActionController::Base

  include DefaultPageContent
  before_action :init_base_url
  before_action :init_default_data
  include SetStaticContent
  include CitationLoader

  private
  def init_base_url
    gon.base_url = root_url
  end

  def init_default_data
    unless Setting.exists?
      defaults = Setting.new(data: @page_defaults, current: true)
      if defaults.save
        puts 'Default static data was successfully set'
      else
        puts 'Default static data was not set due to following error: ' +  defaults.errors
      end
    end
  end
end
