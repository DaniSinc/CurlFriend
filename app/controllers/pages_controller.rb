class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    @hide_footer = true
    @hide_navbar = true
  end
end
