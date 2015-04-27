class PagesController < ApplicationController

  def index
  end

  def about
  end

  def contact
  end

  def get_country_set_city
    if params[:country_name].present?
      country = Country.find_by(:name => params[:country_name])
    elsif params[:country_id].present?
      country = Country.find(params[:country_id])
    end
    cities = country.cities.pluck(:name)
    render :json => {cities: cities}
  end

end
