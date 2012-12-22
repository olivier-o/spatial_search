class ListingsController < ApplicationController
  def index
  end

  def search
   criteria_request = load_fake_criteria
   sifter = Sifter.new(criteria_request)
   @listings = sifter.listings
  end

  private
    def load_fake_criteria()
      filter_file_path="#{Rails.root}/config/filter.json"
      JSON.parse(IO.read(filter_file_path))
    end
end
