require 'curb'
require 'json'

c = Curl::Easy.http_post("https://gimmebar.com/api/v0/auth/reqtoken",
    Curl::PostField.content('client_id', '123'),
    Curl::PostField.content('client_secret', 'secret'),
    Curl::PostField.content('type', 'app'))
 
response = JSON.parse(c.body_str)
if response['request_token'].nil?
  p response['errors'][0]['message']
else
  c = Curl::Easy.http_post("https://gimmebar.com/api/v0/auth/exchange/request",
      Curl::PostField.content('client_id', '123'),
      Curl::PostField.content('client_secret', 'secret'),
      Curl::PostField.content('response_type', 'code'),
      Curl::PostField.content('token', response['request_token']))

  p c.body_str
end
