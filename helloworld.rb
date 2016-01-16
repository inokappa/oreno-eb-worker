require 'sinatra'
require 'logger'

logger = Logger.new('/tmp/sinatra.log')

post '/foo' do
  logger.info("bar")
end

get '/oreno-test' do
  logger.info("row: " + "#{params['row']}" + " / " + "param1: " + "#{params['p1']}" + " / " +"param2: " + "#{params['p2']}")
end
