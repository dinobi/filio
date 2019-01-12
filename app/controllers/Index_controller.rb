class IndexController < ApplicationController
  def index
    @base_app = "Filio"
    respond_to do |format|
      format.html
    end
  end
end
