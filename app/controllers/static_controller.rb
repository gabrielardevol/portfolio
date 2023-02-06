class StaticController < ApplicationController
  def show
    file = "app/assets/CV_ENG.pdf"
    send_file(file, type: 'application/pdf', disposition: 'inline')
  end
end
