class WelcomeController < ApplicationController

    def index
        write_referral_cookie(params[:r]) if params[:r]
    end

    def error_404
        render status: 404, layout: false, template: 'welcome/error_404.html.erb'
    end

    def refscoreboard
        puts params[:scope]
        @range = BtsAccount.dates_range(params[:scope])
        puts @range.inspect
        if request.xhr?
            @refs = @range ? BtsAccount.where(created_at: @range).grouped_by_referrers : BtsAccount.grouped_by_referrers
            render '_refs', layout: false
        else
            @refs = BtsAccount.grouped_by_referrers
        end
    end

end
