class MainController < ApplicationController
  def index
    @select_form = SelectForm.new(name: "John Johnson", email: "johnjohnson@gmail.com")
  end
end
