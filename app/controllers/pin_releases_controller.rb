class PinReleasesController < ApplicationController

    def index
        releases = PinRelease.order(release_date: :desc)
        render json: releases, :include => [:pin => {:only => [:name, :figpin_id]}]
    end
end
