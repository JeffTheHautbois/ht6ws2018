class AccessedController < ApplicationController
    include AccessedHelper
    include CallbackHelper
    def index
        @acc_token = get_acc_token
        response = getResource(@acc_token,'accounts')
        body = JSON.parse(response.body)
		@new = body["results"][3]["gross_position"]["amount"];
        #puts body
        #render html:body
    end

    def deposit
    	@acc_token = get_acc_token
    	response = getResource(@acc_token,'bank_accounts')
        banks = JSON.parse(response.body)
    	response = getResource(@acc_token,'accounts')
    	deposit = JSON.parse(response.body)
        puts banks["results"]
        puts deposit["results"]
    end
    def post
   	end

   	def currentdeposit
   		puts Deposit.all.map {|e|e.attributes.values}
   		@deposit = Deposit.all.map {|e|e.attributes.values}
   	end
end
