class ArchiveController < ApplicationController
  def index
    @entres = Entre.all.group_by(&:day)
  end
end
