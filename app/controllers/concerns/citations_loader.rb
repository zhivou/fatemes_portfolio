module CitationsLoader
  extend ActiveSupport::Concern

  included do
    before_action :load_citations
    before_action :set_citations
  end

  def load_citations(force=false)
    if !Scholar.exists? || Scholar.order(id: :desc).first.created_at + 12.hours < Time.now.utc || force
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

  def set_citations
    citations = Scholar.order(id: :desc).first
    @publications = citations.publications
    @publications_title = citations.title
    @publications_key_words = citations.key_words
    @total_citations = citations.total_citations
    @h_index = citations.h_index
    @i10_index = citations.i10_index
  end
end
