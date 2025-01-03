class Api::ProductsController < ApplicationController
  def index
    @products = Product.all
    render templates: "index.json.jb"
  end

  def first_product
    @product = Product.first
    render templates: "first_product.json.jb"
  end
end
