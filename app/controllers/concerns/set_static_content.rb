module SetStaticContent
  extend ActiveSupport::Concern

  included do
    before_action :set_static_data
  end

  def set_static_data
    defaults = Setting.where(current: true).first.data
    @home_page = defaults['home_page']
    @research_page = defaults['research_page']
    @contact_page = defaults['contact_page']
    @cv_page = defaults['cv_page']
    @teaching_page = defaults['teaching_page']
    @service_page = defaults['service_page']
    @google_scholar = defaults['google_scholar']
  end
end
