class DatabaseServer < Sinatra::Base

  post '/set' do
    if !params.empty?
      @key_val = KeyValue.instance || KeyValue.create
      @key_val.pairs[params.keys.first] = params.values.first
      json params.keys.first.to_sym => params.values.first.to_sym
    end
  end

  get '/get' do
    if !params.empty? && params.keys.first == "key"
      @key_val = KeyValue.instance || KeyValue.create
      json :value => @key_val.pairs[params.values.first]
    end
  end

end
