# frozen_string_literal: true

class PagesController < ApplicationController
  def index
    @jobs = Job.all
  end
end
