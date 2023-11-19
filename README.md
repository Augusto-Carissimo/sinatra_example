# Sinatra example
The objective of this task is to write an API with one GET endpoint.
## Requirements
You are required to write an API with Sinatra that will contain the following endpoint:
- GET /users
  * endpoint should return status code 200 on a successful request:
  * endpoint should return the data taken from the mocked-up database using the provided `DB` module. The `DB.get_users` method returns an array of hashes containing the `id` (number), `name` (string) and `role` (string) of each user. An example array might appear as follows:
    ``` code
    [
        {
            'id' => 1,
            'name' => 'John',
            'role' => 'admin'
        },
        {
            'id' => 2,
            'name' => 'Juan',
            'role' => 'developer'
        }
    ]
    ```
  * endpoint should accept a query parameter `name` which will contain a string:
