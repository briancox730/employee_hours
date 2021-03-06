class User < ActiveRecord::Base
  has_many :employments
  has_many :businesses, through: :employments

  def self.find_or_create_from_omniauth(auth)
    provider = auth.provider
    uid = auth.uid

    find_by(provider: provider, uid: uid) || create_from_omniauth(auth)
  end

  def self.create_from_omniauth(auth)
    create(
      provider: auth.provider,
      uid: auth.uid,
      email: auth.info.email,
      username: auth.info.email,
      avatar_url: auth.info.image
    )
  end
end
