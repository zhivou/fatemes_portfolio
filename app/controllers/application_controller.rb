class ApplicationController < ActionController::Base

  include DefaultPageContent
  before_action :init_base_url

  private
  def init_base_url
    gon.base_url = root_url
  end
end
