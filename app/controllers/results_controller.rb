class ResultsController < ApplicationController
  def show
    @entries = Entry.all
    @results = Results.new(@entries)
  end
end
