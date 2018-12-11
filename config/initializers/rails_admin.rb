RailsAdmin.config do |config|

  ### Popular gems integration
  config.authorize_with do
    redirect_to main_app.root_path unless warden.user.admin == true 
  end

  config.model 'Vote' do
    visible false
  end

  config.model 'City' do
    list do
      field :name
      field :description
    end
  end

  config.model 'Event' do
    list do
      field :name
      field :description
      field :active
      field :votes_count
      field :place
    end
  end

  config.model 'Place' do
    list do
      field :name
      field :address
      field :status
      field :city
    end
  end

  ## == Devise ==
  # config.authenticate_with do
  #   warden.authenticate! scope: :user
  # end
  # config.current_user_method(&:current_user)

  ## == Cancan ==
  # config.authorize_with :cancan

  ## == Pundit ==
  # config.authorize_with :pundit

  ## == PaperTrail ==
  # config.audit_with :paper_trail, 'User', 'PaperTrail::Version' # PaperTrail >= 3.0.0

  ### More at https://github.com/sferik/rails_admin/wiki/Base-configuration

  ## == Gravatar integration ==
  ## To disable Gravatar integration in Navigation Bar set to false
  # config.show_gravatar = true

  config.actions do
    dashboard                     # mandatory
    index                         # mandatory
    new
    export
    bulk_delete
    show
    edit
    delete
    show_in_app

    ## With an audit adapter, you can add:
    # history_index
    # history_show
  end
end
