class PagesController < ApplicationController
    def about
        # Passing in a variable to the page
        @title = "About page";
    end
end
