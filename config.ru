require 'rubygems'
require 'bundler/setup'

require './models'
require './routes'
require 'bowtie'

map "/check" do
  run Prey::Standalone
end

map "/" do
  BOWTIE_AUTH = {:user => 'admin', :pass => 'E5BA14BB915A74A80026C7868C12FD54A319766CDCB264387C40D30C8B87D0FC'}
  run Bowtie::Admin
end
