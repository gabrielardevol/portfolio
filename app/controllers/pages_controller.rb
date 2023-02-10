require_relative "projects_controller"
class PagesController < ApplicationController
  helper_method :string_to_array


  def home
    @projects = Project.all

    render layout: "landing"
  end

  def test
  end

  def lettering_first
    render layout: "blank"

  end

  def lettering_second
    render layout: "blank"

  end

end
