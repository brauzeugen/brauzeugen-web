module Admin
  class BrewBatchesController < AdminController
    before_action :set_brew_batch, only: %i[edit update destroy issue_voices show_labels]

    # GET /brew_batches
    def index
      @brew_batches = BrewBatch.all
    end

    # GET /brew_batches/new
    def new
      @brew_batch = BrewBatch.new
    end

    # GET /brew_batches/1/edit
    def edit; end

    # POST /brew_batches
    def create
      @brew_batch = BrewBatch.new(brew_batch_params)

      respond_to do |format|
        if @brew_batch.save
          format.html { redirect_to admin_brew_batches_url, notice: 'Batch was successfully created.' }
        else
          format.html { render :new }
        end
      end
    end

    # PATCH/PUT /brew_batches/1
    def update
      respond_to do |format|
        if @brew_batch.update(brew_batch_params)
          format.html { redirect_to admin_brew_batches_url, notice: 'Batch was successfully updated.' }
        else
          format.html { render :edit }
        end
      end
    end

    # DELETE /brew_batches/1
    def destroy
      if @brew_batch.destroy
        redirect_to admin_brew_batches_url, notice: 'Batch was successfully destroyed.'
      else
        redirect_to admin_brew_batches_url, error: 'Batch could not be created.'
      end
    end

    def issue_voices
      if @brew_batch.voices.any?
        redirect_to admin_brew_batches_url, notice: 'There are already voices issued. No new ones have been created.'
        return
      end

      issue_voices_amount = params[:issue_voices_amount].to_i
      if issue_voices_amount.positive?
        @brew_batch.issue_voices!(issue_voices_amount)
        redirect_to admin_brew_batches_url, notice: "Issued #{issue_voices_amount} voices for #{@brew_batch.name}"
      else
        redirect_to admin_brew_batches_url, error: 'No correct amount. No voices issued.'
      end
    end

    def show_labels
      respond_to do |format|
        format.xlsx
      end
    end

    private

    # Use callbacks to share common setup or constraints between actions.
    def set_brew_batch
      @brew_batch = BrewBatch.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def brew_batch_params
      params.require(:brew_batch).permit(:name, :description, :published_at, :published_amount)
    end
  end
end
