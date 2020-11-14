class HomeController < ApplicationController
    def index
    end
    def generate_bill
        @medicine = Medicine.new
    end
    def add_item
    end
end
