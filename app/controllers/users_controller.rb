class UsersController < ApplicationController
  def top
  end

  def login_form
  end

  def new
  end

  def login
      @user = User.new(name: params[:name], password: params[:password])
      session[:name] = @user.name
      if @user.save
          flash[:notice] = "ユーザー登録が完了しました。"
          redirect_to("/")
      else
          render("/users/login_form")
      end
  end

  def show
      @users = User.all
  end

  def logout
      session[:name] = nil
      flash[:notice] = "ログアウトしました。"
      redirect_to("/")
  end

  def relogin
    @user = User.find_by(name: params[:name], password: params[:password])

    if @user
      session[:name] = @user.name
      redirect_to("/")
  else
      render("/users/login_form")
  end
  end

end
