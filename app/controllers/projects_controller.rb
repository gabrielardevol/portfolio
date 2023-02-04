class ProjectsController < ApplicationController
  helper_method :string_to_array

  def index
    @projects = Project.all
  end

  def show
    @project = Project.find(params[:id])

  end


end
