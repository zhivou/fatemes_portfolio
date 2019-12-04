module CitationsLoader
  extend ActiveSupport::Concern

  included do
    before_action :load_citations
  end

  def load_citations
    # Add if statement to load the updates only each 12 hours
    # Scholar.first.publications[5][:title]
    if !Scholar.exists? || Scholar.order(id: :desc).first.created_at + 12.hours < Time.now.utc
      publications = Google::Scholar::Helper::Base.new(@google_scholar['link'])
      publications_db = Scholar.new(
          publications:publications.publications,
          title: publications.title,
          key_words: publications.key_words,
          total_citations: publications.total_citations,
          h_index: publications.h_index
      )
      if publications_db.save
        puts 'New Google Scholars info was just uploaded.'
      else
        puts 'WARNING: Something went wrong. Check Google Scholar Helper Gem and Scholar web page'
      end
    end
  end
end
