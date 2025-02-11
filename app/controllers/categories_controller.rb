class CategoriesController < ApplicationController
  def index
    @categories = Category.all
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.new(category_params)
    if @category.save
      redirect_to  categories_path, notice: "basarili"
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    if @category.update(category_params)
      redirect_to categories_pathm, notice: "Guncellendi"
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
  end

  private
    def category_params
        params.expect(category: [ :title ])
    end
end
