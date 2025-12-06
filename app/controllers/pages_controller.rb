class PagesController < ApplicationController
  def home
    render Views::Pages::Home
  end
end
