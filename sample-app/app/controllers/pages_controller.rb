class PagesController < ApplicationController
  def home
    render 'home.html'
  end

  def dwarfs
    render 'snow_white.html'
  end

  def grumpy
    render 'grumpy.html'
  end

  def sneezy
    render 'sneezy.html'
  end

  def sleepy
    render 'sleepy.html'
  end

  def time 
    @current_time = Time.now.strftime("%A, %b %d")
    @page_title = 'Time'
  end

  def money
    @current_balance = 20.4 * 50.7
    @page_title = 'Money'
  end
end
