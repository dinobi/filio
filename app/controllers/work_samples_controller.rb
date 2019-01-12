class WorkSamplesController < ApplicationController
  before_action :set_work_sample, only: %i[show]

  def index
    WorkSample.with_attached_file
  end

  def new
    @work_sample = WorkSample.new
  end

  def show; end

  def create
    @work_sample = WorkSample.new(work_sample_params)

    if @work_sample.save
      redirect_to work_sample_path(@work_sample)
      flash[:notice] = "Work sample was successfully created"
    else
      render :new
      flash[:warning] = @work_sample.errors
    end
  end

  def archive
    @work_sample.update_attributes!(is_archived: true)
    redirect_to work_samples_path
    flash[:notice] = "#{@work_sample.name} was archived"
  end

  def restore; end

  def destroy
    @work_sample.destroy
    redirect_to work_samples_path
    flash[:notice] = "#{@work_sample.name} was deleted"
  end

  private

  def set_work_sample
    @work_sample = WorkSample.find_by!(id: params[:id])
  end

  def work_sample_params
    params.require(:work_sample).permit(:name, :content, :status, :created, files: [])
  end
end
