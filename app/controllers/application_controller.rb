class ApplicationController < ActionController::Base
  def current_time
    Time.now.strftime("%Y-%m-%d %H:%M:%S")
  end

  def string_to_array(str, separator)
    str.split(separator)
  end
end
