# README

## Info on dev environment, server deployment and few important notes I've encountered while making my 1st rails app

* Ruby on Rails v7

* Start localhost deployment with bin/rails serve or rails s -p XXXX, where XXXX is a PORT number (5001 for me in a team)

* Modify routes.rb with desired root, then generate adequate controller, view, helper and tests with bin/rails generate controller main index --skip-routes

* Custom javascript files are linked through a following process described [here](https://stackoverflow.com/questions/70548841/how-to-add-custom-js-file-to-new-rails-7-project):
    * Create custom folder under app/javascript and place your custom .js files in it
    * Go to config/importmap.rb and add the following: pin_all_from "app/javascript/custom", under: "custom"
    * Go to app/javascript/application.js file and add the following: import "./custom/kindergarten"
    * Run rails assets:precompile
    * Start server

* Rails forms:
    * https://guides.rubyonrails.org/active_model_basics.html
    * https://human-se.github.io/rails-demos-n-deets-2021/demos/new-create-forms/
    * https://guides.rubyonrails.org/form_helpers.html

* Rails forms creation with :
    1. Create Forms folder inside app folder
    2. Inside Forms folder, create a Class that models your form (eg. if you have name and email inputs, add attr_accessors to it, as well as validators)
    3. Change routes.rb inside app/config folder with adequate POST route to view where your form will be located
    4. Create/Change controller that responds to view where your form will be located with @selector eg:
        class MainController < ApplicationController
            def index
                @select_form = SelectForm.new
            end
        end
    5. Utilise <%= form_with(model: @select_form, url:"/") do |f| %> <% end %> syntax when creating form