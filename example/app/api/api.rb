# -*- encoding: utf-8 -*-

class API < Grape::API
  version 'v1', using: :path
  format :json
  # formatter :json, Grape::Formatter::Rabl
  default_format :json

  helpers do
    def picture_params
      ActionController::Parameters.new(params).permit(:title)
    end
  end

  resource :user do
    # POST /api/user
    post do
      # ユーザ作成の処理が入ります
    end

    get do
      {users: [{id: params[:id], name: 'dogura'}]}
    end

    # PUT /api/user
    desc 'ユーザ更新'
    put do
      # ユーザ更新の処理が入ります
    end
  end
end
