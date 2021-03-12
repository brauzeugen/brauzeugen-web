module Admin
  class ReleasesController < ApplicationController
    before_action :set_release, only: %i[show edit update destroy]

    # GET /admin/releases
    def index
      @releases = Release.all
    end

    # GET /admin/releases/1
    def show; end

    # GET /admin/releases/new
    def new
      @release = Release.new
    end

    # GET /admin/releases/1/edit
    def edit; end

    # POST /admin/releases
    def create
      @release = Release.new(release_params)

      if @release.save
        redirect_to [:admin, @release], notice: 'Release was successfully created.'
      else
        render :new
      end
    end

    # PATCH/PUT /admin/releases/1
    def update
      if @release.update(release_params)
        redirect_to [:admin, @release], notice: 'Release was successfully updated.'
      else
        render :edit
      end
    end

    # DELETE /admin/releases/1
    def destroy
      @release.destroy
      redirect_to admin_releases_url, notice: 'Release was successfully destroyed.'
    end

    private

    # Use callbacks to share common setup or constraints between actions.
    def set_release
      @release = Release.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def release_params
      params.require(:release).permit(:email_template, :claim_limit)
    end
  end
end
