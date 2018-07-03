module AtomicConnect
  class Vertcoin
    include HTTParty
    include AtomicConnect

    #TODO: make helper method of some sort to decide which URI based on ENV
    base_uri Rails.env.production? ? "" : "http://localhost:3001"

    # attr_reader :data, :errors

    def initialize
      @headers = {
        "X-Token": "XXXX",
        "Content-Type": "application/json",
        "Test-Mode": Rails.env.production?.to_s
      }
    end

    def ping
      # post 'ping', to: 'rest_api#ping'
      # returns 404 Not Found but we know it works
      post_call('/ping')
    end

    # ----------------------------------------------
    # DEPOSIT --------------------------------------
    # ----------------------------------------------
    # post 'deposit', to: 'rest_api#deposit'
    # ----------------------------------------------
    # Required Params:
    # amount - can be 0
    # callback_url - must be an endpoint at Vertbase, ie. http://localhost:3000/webhook
    # ----------------------------------------------
    def deposit(amount, callback_url)
      @query = {amount: amount, callback_url: callback_url}
      post_call('/deposit')
    end

    # ----------------------------------------------
    # SEND_TO --------------------------------------
    # ----------------------------------------------
    # post 'send_to', to: 'rest_api#send_to'
    # ----------------------------------------------
    # Required Params:
    # address - wallet address to send to
    # amount
    # ----------------------------------------------
    def send_to(address, amount)
      @query = {address: address, amount: amount}
      post_call('/send_to')
    end

    # ----------------------------------------------
    # VALIDATE -------------------------------------
    # ----------------------------------------------
    # post 'validate', to: 'rest_api#validate'
    # ----------------------------------------------
    # Required Params:
    # address
    # ----------------------------------------------
    def validate(address)
      @query = {address: address}
      post_call('/validate')
    end

    # ----------------------------------------------
    # Info -----------------------------------------
    # ----------------------------------------------
    # post 'info', to: 'rest_api#info'
    # ----------------------------------------------
    # Required Params:
    # id - this is ID of wallet
    # ----------------------------------------------
    def info(id)
      @query = {id: id}
      post_call('/info')
    end

    # ----------------------------------------------
    # GET_BALANCE ----------------------------------
    # ----------------------------------------------
    # post 'get_balance', to: 'rest_api#get_balance'
    # ----------------------------------------------
    # No Required Params
    # ----------------------------------------------
    def get_balance
      post_call('/get_balance')
    end

    # ----------------------------------------------
    # ESTIMATE_FEE----------------------------------
    # ----------------------------------------------
    # get 'estimate_fee', to: 'rest_api#estimate_fee'
    # ----------------------------------------------
    # No Required Params
    # ----------------------------------------------
    def estimate_fee
      get_call('/estimate_fee')
    end

  end
end
