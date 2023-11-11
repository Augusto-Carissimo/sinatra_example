module DB
  def self.get_users
    @users
  end

  @users = [
    {
      'id' => 1,
      'name' => 'John',
      'role' => 'admin',
    },
    {
      'id' => 2,
      'name' => 'Juan',
      'role' => 'developer',
    },
    {
      'id' => 3,
      'name' => 'John',
      'role' => 'developer',
    }
  ]
end
