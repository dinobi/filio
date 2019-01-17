class WorkSamplesController < ApplicationController
  before_action :set_work_sample, only: %i[show edit update]
  before_action :authorize, except: %i[show]

  def new
    @work_sample = current_user.work_samples.new
  end

  def create
    @work_sample = current_user.work_samples.new(work_sample_params)

    if @work_sample.save
      redirect_to work_sample_path(@work_sample)
      flash[:success] = "#{@work_sample.name} was successfully created"
    else
      render :new
      flash[:error] = @work_sample.errors.full_messages.to_sentence
    end
  end

  def show; end

  def edit; end

  def update
    if @work_sample.update(work_sample_params)
      redirect_to work_sample_path(@work_sample)
      flash[:notice] = "#{@work_sample.name} was successfully updated"
    else
      redirect_to edit_work_sample_path(@work_sample)
      flash[:warning] = @work_sample.errors.full_messages.to_sentence
    end
  end

  def archive
    @work_sample.update_attributes!(is_archived: true)
    redirect_to index_path
    flash[:notice] = "#{@work_sample.name} was archived"
  end

  def destroy
    @work_sample.destroy
    redirect_to index_path
    flash[:notice] = "#{@work_sample.name} was deleted"
  end

  def restore; end

  private

  def set_work_sample
    @work_sample = WorkSample.find_by!(id: params[:id])
  end

  def work_sample_params
    params.require(:work_sample).permit(:name, :content, :status, :created, files: [])
  end
end
