class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @curiosite_category = Category.find_by(name: "Curiosit")
  end

end
