class HomeController < ApplicationController
  def index
    gon.jewels = Jewel.find_all_by_show_in_home_page(true).map do |jewel|
      {
        alt: jewel.name,
        src: jewel.primary_image.url,
        from: 'top left',
        to:   'bottom right 1.5x',
        time: 2
      }
    end
  end
end
