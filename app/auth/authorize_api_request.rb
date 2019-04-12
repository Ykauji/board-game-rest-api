class AuthorizeApiRequest
  def initialize(headers = {})
    @headers = headers
  end

  # Service entry point - return valid user object <- I don't like all these 'users'!!
  def call
    {
      user: user
    }
  end

  private

  attr_reader :headers

  def user
    # check if user is in the database
    # memoize user object, @ means instanced object -> so other classes can ref it pseudo global?

    # || = means equal to itself or equal to right side!
    user_id_from_token = decoded_auth_token[:user_id]
    if !user_id_from_token 
      puts 'not valid token'
    end
    @user ||= User.find(user_id_from_token) #if decoded_auth_token
    #puts instance_variable_get(:@user).password_digest
    # handle user not found

  rescue ActiveRecord::RecordNotFound => e
    # raise custom error
    raise(
      ExceptionHandler::InvalidToken,
      ("#{Message.invalid_token} #{e.message} ")
    )
  end

  # decode authentication token by checking headers
  def decoded_auth_token
    @decoded_auth_token ||= JsonWebToken.decode(http_auth_header)
  end

  # check for token in `Authorization` header
  def http_auth_header
    if headers['Authorization'].present?
      return headers['Authorization'].split(' ').last
    end
      raise(ExceptionHandler::MissingToken, Message.missing_token)
  end
end