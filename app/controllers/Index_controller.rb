class IndexController < ApplicationController
  def index
    @base_app = "Filio"
    @work_samples = WorkSample.with_attached_files
    respond_to do |format|
      format.html
    end
  end
end
