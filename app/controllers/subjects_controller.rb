class SubjectsController < ApplicationController
  def new
    @subject = Subject.new
  end

  def create
    @subject = Subject.new subject_params
    if @subject.save
      flash[:info] = "Created a new subject with name: #{@subject.name} ."
      redirect_to root_url
    else
      render :new
    end
  end

  private
  def subject_params
    params.require(:subject).permit(:name, :instruction,
      tasks_attributes: [:name, :instruction])
  end
end