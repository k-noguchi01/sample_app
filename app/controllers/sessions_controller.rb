class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      # ユーザーログイン後にユーザー情報のページにリダイレクトする
      reset_session
      # 一時ログインの場合にはforgetメソッドが呼ばれる
      params[:session][:remember_me]=='1' ? remember(user):forget(user)
      log_in user
      redirect_to user
    else
      # エラーメッセージを作成する
      flash.now[:danger] = 'Invalid email/password combination' # 本当は正しくない
      render 'new', status: :unprocessable_entity
    end
  end
  def destroy
    log_out if logged_in?
    redirect_to root_url,status: :see_other # see_other-->303 See Other
  end
end
