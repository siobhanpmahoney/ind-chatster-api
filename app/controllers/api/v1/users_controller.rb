class Api::V1::UsersController < ApplicationController

  def index
    users = User.all
    render json: users
  end

  def create
    avatars = [
      "https://react.semantic-ui.com/assets/images/avatar/small/steve.jpg",
      "https://react.semantic-ui.com/assets/images/avatar/small/ade.jpg",
      "https://react.semantic-ui.com/assets/images/avatar/small/chris.jpg",
      "https://react.semantic-ui.com/assets/images/avatar/small/christian.jpg",
      "https://react.semantic-ui.com/assets/images/avatar/small/daniel.jpg",
      "https://react.semantic-ui.com/assets/images/avatar/small/elliot.jpg",
      "https://react.semantic-ui.com/assets/images/avatar/small/helen.jpg",
      "https://react.semantic-ui.com/assets/images/avatar/small/jenny.jpg",
      "https://react.semantic-ui.com/assets/images/avatar/small/joe.jpg",
      "https://react.semantic-ui.com/assets/images/avatar/large/kristy.png",
      "https://react.semantic-ui.com/assets/images/avatar/small/justen.jpg",
      "https://react.semantic-ui.com/assets/images/avatar/small/laura.jpg",
      "https://react.semantic-ui.com/assets/images/avatar/small/lena.png",
      "https://react.semantic-ui.com/assets/images/avatar/small/lindsay.png",
      "https://react.semantic-ui.com/assets/images/avatar/small/matthew.png",
      "https://react.semantic-ui.com/assets/images/avatar/small/mark.png",
      "https://react.semantic-ui.com/assets/images/avatar/small/molly.png",
      "https://react.semantic-ui.com/assets/images/avatar/small/nan.jpg",
      "https://react.semantic-ui.com/assets/images/avatar/large/patrick.png",
      "https://react.semantic-ui.com/assets/images/avatar/small/rachel.png",
      "https://react.semantic-ui.com/assets/images/avatar/small/tom.jpg",
      "https://react.semantic-ui.com/assets/images/avatar/small/veronika.jpg",
      "https://react.semantic-ui.com/assets/images/avatar/small/stevie.jpg",
      "https://react.semantic-ui.com/assets/images/avatar/small/steve.jpg",
      "https://react.semantic-ui.com/assets/images/avatar/small/zoe.jpg"
    ]
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
