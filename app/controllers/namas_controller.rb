class NamasController < ApplicationController
  skip_before_action :verify_authenticity_token, only: :create

  def index
    @namas = Nama.order(created_at: :desc).page params[:page]
  end

  def create
    UploadDataJob.initialize(params[:data_file])

    respond_to do |format|
      format.html { redirect_to root_path, notice: 'Nama was successfully created.' }
      format.json { render :index, status: :created }
    end
  end
end
