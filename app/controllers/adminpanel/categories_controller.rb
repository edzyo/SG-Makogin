module Adminpanel
class CategoriesController < AdministrativeController

  def index
    @category = Category.all
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.new(category_params)
    if @category.save
      redirect_to root_path
      flash[:notice] = 'Категорія створена.'
    else
      render :new,
             alert: 'Категорію нестворено.'
    end
  end

  private

  def category_params
    params.require(:category).permit(:title)
  end

end
end