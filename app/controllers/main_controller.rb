class MainController < ApplicationController
  def index
    @select_form = SelectForm.new
  end

  def selection_vars
    name = params[:name]
    email = params[:email]
    kindergarten_selection = params[:kindergarten_selection]
    debugger
  end
end