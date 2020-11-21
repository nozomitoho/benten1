class LikesController < ApplicationController

    def create
        @sending_user = User.find(current_user.id)
        @receiving_user = User.find(params[:user_id])
        like = current_user.likes.create(tweet_id: params[:tweet_id]) 
        redirect_back(fallback_location: root_path)
    end
    
    def destroy
        like = Like.find_by(tweet_id: params[:tweet_id], user_id: current_user.id)
        like.destroy
        redirect_back(fallback_location: root_path)
    end

end
