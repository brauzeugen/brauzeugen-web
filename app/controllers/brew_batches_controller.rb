class BrewBatchesController < ApplicationController
  # GET /brew_batches
  def index
    @brew_batches = BrewBatch.where(published_at: Time.zone.parse('2018-12-31')..Time.zone.now)
  end
end
