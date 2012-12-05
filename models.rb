require 'mongo_mapper'

MongoMapper.connection = Mongo::Connection.new('mongodb://alex.mongohq.com:10096')
MongoMapper.database = 'custom-prey' #|| 'prey_standalone_control_panel'
MongoMapper.connection['custom-prey'].authenticate('admin', 'E5BA14BB915A74A80026C7868C12FD54A319766CDCB264387C40D30C8B87D0FC')

class Device
  include MongoMapper::Document

  key :name, String, :required => true
  key :missing, Boolean, :default => false
  key :delay, Integer, :default => 20, :in => 2..59
  key :module_list, String, :default => 'geo network session webcam'

end
