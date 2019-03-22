class CompaniesController < ApplicationController

    def index
        @companies = Company.all
    end

    def show
        @company = Company.find(params[:id])
    end

    def new
        @company = Company.new
    end

    def create
        #find the building that this company will have an office in
        @building = Building.find_by(id: params[:company][:buildings])

        # create the company name
        @company = Company.create(name: params[:company][:name]) # or .create(company_params)

        # add the building you found to the company you just created
        # using the association
        @company.buildings << @building

        # redirect to the company show page
        redirect_to company_path(@company)

        # @company = Company.create({
        #     name: params[:company][:name]
        #     })
    end

    # private
    #
    # def company_params
    #     params.require(:company).permit()
    # end

end
