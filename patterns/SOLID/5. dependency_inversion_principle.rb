# Depend on abstractions, not concrete classes.

# Bad example:

class MyDatabase
  def save(data)
    puts "Saving Data"
  end
end

class UserService
  def initialize
    @db = MyDatabase.new
  end

  def save_user(data)
    @db.save(data)
  end
end

# 👉 Good example:

class Database
  def save(data)
    raise NotImplementedError
  end
end

class MySQLDatabase < Database
  def save(data)
    puts "Saving to MySQL"
  end
end

class UserService
  def initialize(database)
    @db = database
  end

  def save_user(data)
    @db.save(data)
  end
end

# Usage
db = MySQLDatabase.new
service = UserService.new(db)
service.save_user("User data")