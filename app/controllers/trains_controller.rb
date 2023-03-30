class TrainsController < ApplicationController
    def index
    end

    def show
        response = HTTParty.get("https://api-endpoint.mta.info/Dataservice/mtagtfsfeeds/nyct%2Fgtfs", :headers => { "x-api-key": ENV['API_KEY']}) 
        @train_times = response.parsed_response
    end

end
