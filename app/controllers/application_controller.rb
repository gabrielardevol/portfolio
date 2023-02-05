class ApplicationController < ActionController::Base

  def string_to_array(str, separator)
    str.split(separator)
  end
end
