class Api::ProductsController < ApplicationController
  def index
    @products = Product.all
    render templates: "index.json.jb"
  end
end
