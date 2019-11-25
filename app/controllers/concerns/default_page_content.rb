module DefaultPageContent
  extend ActiveSupport::Concern

  included do
    before_action :set_page_defaults
  end

  def set_page_defaults
    @page_title = "Dr. Fateme Esmailie"
    @seo_keywords = standard_seo_words
    @seo_description = ""
  end

  private
  #
  # Add more blow:
  #
  def standard_seo_words
    "Fateme Esmailie Thermal Engineer, Bio-heat Transfer, Engineer, Thermal Management of Electromagnetic devices, FEM"
  end
end
