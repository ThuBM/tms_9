class SubjectsController < ApplicationController
  def index
  	@subjects = Subject.paginate page: params[:page], per_page: 30
  end
end
