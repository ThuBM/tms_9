class SubjectsController < ApplicationController
	def index
		@subjects = Subject.paginate(page: params[:page], per_page: 10)
	end

	def show
		@subject = Subject.find(params[:id])
		@tasks = @subject.tasks.paginate(page: params[:page], per_page: 10)
	end

	def update
		@params = params;
	end
end
