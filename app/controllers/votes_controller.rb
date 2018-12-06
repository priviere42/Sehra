class VotesController < ApplicationController

    respond_to :js

    def vote
      @user = current_user
      @event = Event.find(params[:event_id])
      @user.vote!(@event)
    end
    
    def unvote
      @user = current_user
      @vote = @user.votes.find_by_event_id(params[:event_id])
      @event = Event.find(params[:event_id])
      @vote.destroy!
    end

end
