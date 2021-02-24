class PostsController < ApplicationController
  before_action :over_20?
  def new
  end
end
