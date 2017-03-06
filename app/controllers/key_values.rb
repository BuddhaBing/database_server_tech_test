class DatabaseServer < Sinatra::Base

  get '/set' do
    if !params.empty?
      @key_val = KeyValue.instance || KeyValue.create
      @key_val.pairs[params.keys.first] = params.values.first
      "Key value pair stored"
    end
  end

  get '/get' do
    if !params.empty? && params.keys.first == "key"
      @key_val = KeyValue.instance || KeyValue.create
      @key_val.pairs[params.values.first]
    end
  end
end
