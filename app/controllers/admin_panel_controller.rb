class AdminPanelController < ApplicationController
  def index; end

  def update_example
    update_locales('name', 'FATEME ESMAILIE', 'home_page')
  end

  def update_localization

  end
end