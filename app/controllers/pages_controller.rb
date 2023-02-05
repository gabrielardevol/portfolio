require_relative "projects_controller"
class PagesController < ApplicationController
  helper_method :string_to_array


  def home
    @projects = Project.all

    render layout: "landing"
  end

  def about
  end

  def contact
  end
end
