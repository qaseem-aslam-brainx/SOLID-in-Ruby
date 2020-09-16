class DbConnectionInterface
  def connect
    raise 'Must implement connection'
  end
end

class MySQLConnection < DbConnectionInterface
  def connect
    puts "Connected to db"
  end
end

class RememberPassword
  def initialize(db_connection)
    @db_connection = db_connection
    @db_connection.connect
  end
end

conn = MySQLConnection.new

RememberPassword.new(conn)