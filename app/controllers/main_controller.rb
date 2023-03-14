class MainController < ApplicationController
  def index
    @select_form = SelectForm.new
  end
end