class FavoritesController < ApplicationController
  def create
    current_user.favorites.create(blog_id: params[:blog_id])
  end

  def destroy
    current_user.favorites.find_by(id: params[:id]).destroy
  end

  private

  def blog_params
    @blog = Blog.find(params[:id])
  end
end
