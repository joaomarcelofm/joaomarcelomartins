class ProjectsController < ApplicationController
  skip_before_action :authenticate_user!, only: :show
  before_action :set_project, only: [:show]

  def index
    @projects = Project.all
  end

  def show
  end

  private

  def set_project
    @project = Project.find(params[:id])
  end
end
