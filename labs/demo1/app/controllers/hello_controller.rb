class HelloController < ApplicationController 
  def world
   render :text => "hello world!!!"
  end
  def jasmine #jasmine is the action
    render :text => "chabra"
  end
  def dogs #dogs is the action
    render :text => "cats"
  end
  def ruby
   render :text => "rails"
  end
end
