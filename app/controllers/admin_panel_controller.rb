class AdminPanelController < ApplicationController
  def index
    update_locales('name', 'FATEME ESMAILIE', 'home_page')
  end
end