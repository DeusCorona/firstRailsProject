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

* Forming links inside view files to other view files eg: <p><%= link_to "About", '/about' %></p>

* Notes about form data submission and adapting controller to obtain POST data:
    * Routes can be formed in such a way that single View component may have multiple routes attached to various methods defined in coresponding Controller eg. get request to: main#index and post request to: main#somePostMethod
    * Extremely useful: using rails routes command to check routes. Method nomenclature in Controllers should be simple, as complicated names may lead to problematic route generation
    * Form inside View must have proper URL target of a method that is supposed to collect data sent via form
    * Data sent via forms comes via **params** , and is in a form of a hash (dictionary data structure)
    * The general flow of action is: form inside View sends a POST request via routes to adequate method inside coresponding controller where data can be separated, analyzed and used
    
* Useful git workflow commands:
git status - overview of the changes made in relation to current branch
git add . - add all changed files to prepare for commit
git commit -m "Some commit message" - commits the added changes to prepare for push
git push - push changes onto the targeted branch
git branch -all - displays all available branches
git checkout - changes branch you're currently on
git checkout -b "name of the branch you wish to create and position onto"
git push --set-upstream origin "name of the branch you have created in previous step"

* Notes about maintaining git repo, branch naming conventions:
    * https://github.com/thoughtbot/guides/tree/main/git
    * https://github.com/thoughtbot/guides/tree/main/code-review
    * https://www.internalpointers.com/post/squash-commits-into-one-git
    
