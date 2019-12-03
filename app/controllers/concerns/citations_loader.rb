module CitationLoader
  extend ActiveSupport::Concern

  included do
    before_action :load_citations
  end

  def load_citations
    # Add if statement to load the updates only each 12 hours
    #Google::Scholar::Helper::Base.new()
  end
end
