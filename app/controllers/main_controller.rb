class MainController < ApplicationController
  def index
  end

  def selection
    @select_form = SelectForm.new
    name = params[:name]
    email = params[:email]
    kindergarten_selection = params[:kindergarten_selection]
    debugger
  end
end