class Api::V1::UsersController < ApplicationController

  def index
    users = User.all
    render json: users
  end

  def create

    user = User.find_or_create_by(username: params[:user][:username])
    user.update(avatar: avatars.sample)
    friends = user.friends
    chats = user.chats

    user_info = {user: user, friends: friends, chats: chats}

    render json: user_info
  end

  def show
    @user = User.find(params[:id])
    @friends = @user.user_friends
    @chats = @user.chats.map do |chat|
      messages = chat.message_with_usernames
      users = chat.chat_users

      {chat: chat, messages: messages, users: users}
    end




    user_info = {user: @user, friends: @friends, chats: @chats}
    render json: user_info
  end



  def new

    render json
  end




  def edit

    render json
  end

  def destroy

  end

  private

  def user_params
    params.require(:user).permit(
      :username, :password, :password_confirmation, :avatar,
      chat_ids: [],
      chats_attributes: [
        :title
      ],
      message_ids: [],
      messages_attributes: [
        :content,
        :chat_id,
        :user_id
      ]
    )
  end

  def avatars
    @avatars = [
    "https://raw.githubusercontent.com/siobhanpmahoney/heroku-chatster-frontend/master/src/components/https://raw.githubusercontent.com/siobhanpmahoney/heroku-chatster-frontend/master/src/components/lib/avatars/Abraham.jpg",
    "https://raw.githubusercontent.com/siobhanpmahoney/heroku-chatster-frontend/master/src/components/https://raw.githubusercontent.com/siobhanpmahoney/heroku-chatster-frontend/master/src/components/lib/avatars/elliot.jpg",
    "https://raw.githubusercontent.com/siobhanpmahoney/heroku-chatster-frontend/master/src/components/lib/avatars/joe.jpg",
    "https://raw.githubusercontent.com/siobhanpmahoney/heroku-chatster-frontend/master/src/components/lib/avatars/matt.jpg",
    "https://raw.githubusercontent.com/siobhanpmahoney/heroku-chatster-frontend/master/src/components/lib/avatars/rachel.jpg",
    "https://raw.githubusercontent.com/siobhanpmahoney/heroku-chatster-frontend/master/src/components/https://raw.githubusercontent.com/siobhanpmahoney/heroku-chatster-frontend/master/src/components/lib/avatars/ade.jpg",
    "https://raw.githubusercontent.com/siobhanpmahoney/heroku-chatster-frontend/master/src/components/https://raw.githubusercontent.com/siobhanpmahoney/heroku-chatster-frontend/master/src/components/lib/avatars/elyse.jpg",
    "https://raw.githubusercontent.com/siobhanpmahoney/heroku-chatster-frontend/master/src/components/lib/avatars/justen.jpg",
    "https://raw.githubusercontent.com/siobhanpmahoney/heroku-chatster-frontend/master/src/components/lib/avatars/matthew.jpg",
    "https://raw.githubusercontent.com/siobhanpmahoney/heroku-chatster-frontend/master/src/components/lib/avatars/steve.jpg",
    "https://raw.githubusercontent.com/siobhanpmahoney/heroku-chatster-frontend/master/src/components/https://raw.githubusercontent.com/siobhanpmahoney/heroku-chatster-frontend/master/src/components/lib/avatars/chris.jpg",
    "https://raw.githubusercontent.com/siobhanpmahoney/heroku-chatster-frontend/master/src/components/https://raw.githubusercontent.com/siobhanpmahoney/heroku-chatster-frontend/master/src/components/lib/avatars/eve.jpg",
    "https://raw.githubusercontent.com/siobhanpmahoney/heroku-chatster-frontend/master/src/components/lib/avatars/kristy.jpg",
    "https://raw.githubusercontent.com/siobhanpmahoney/heroku-chatster-frontend/master/src/components/lib/avatars/molly.jpg",
    "https://raw.githubusercontent.com/siobhanpmahoney/heroku-chatster-frontend/master/src/components/lib/avatars/stevie.jpg",
    "https://raw.githubusercontent.com/siobhanpmahoney/heroku-chatster-frontend/master/src/components/https://raw.githubusercontent.com/siobhanpmahoney/heroku-chatster-frontend/master/src/components/lib/avatars/christian.jpg",
    "https://raw.githubusercontent.com/siobhanpmahoney/heroku-chatster-frontend/master/src/components/https://raw.githubusercontent.com/siobhanpmahoney/heroku-chatster-frontend/master/src/components/lib/avatars/helen.jpg",
    "https://raw.githubusercontent.com/siobhanpmahoney/heroku-chatster-frontend/master/src/components/lib/avatars/laura.jpg",
    "https://raw.githubusercontent.com/siobhanpmahoney/heroku-chatster-frontend/master/src/components/lib/avatars/nan.jpg",
    "https://raw.githubusercontent.com/siobhanpmahoney/heroku-chatster-frontend/master/src/components/lib/avatars/tom.jpg",
    "https://raw.githubusercontent.com/siobhanpmahoney/heroku-chatster-frontend/master/src/components/lib/avatars/daniel.jpg",
    "https://raw.githubusercontent.com/siobhanpmahoney/heroku-chatster-frontend/master/src/components/lib/avatars/jenny.jpg",
    "https://raw.githubusercontent.com/siobhanpmahoney/heroku-chatster-frontend/master/src/components/lib/avatars/mark.jpg",
    "https://raw.githubusercontent.com/siobhanpmahoney/heroku-chatster-frontend/master/src/components/lib/avatars/patrick.jpg",
    "https://raw.githubusercontent.com/siobhanpmahoney/heroku-chatster-frontend/master/src/components/lib/avatars/veronika.jpg"
    ]
  end

  #helper methods

    # def show_friends
    #   friends = find_friends
    #   return friends
    # end
    #
    # def show_chats
    #   chats = find_chats
    #   return chats
    # end

end
