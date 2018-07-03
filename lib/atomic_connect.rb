require 'models/vertcoin.rb'

module AtomicConnect
  def post_call(path)
    resp = self.class.post(path, {headers: @headers, query: @query})
    handle_response(resp)
  end

  def get_call(path)
    resp = self.class.get(path, {headers: @headers, query: @query})
  end

  def handle_response(resp)
    if resp.success?
      resp.parsed_response
      # true
    else
      #TODO: return errors
      # @errors = ["first error"]
      false
    end
  end

end
