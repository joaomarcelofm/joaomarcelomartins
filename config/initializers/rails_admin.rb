RailsAdmin.config do |config|

  ### Popular gems integration

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

  RailsAdmin.config do |config|
    config.authorize_with do |controller|
      redirect_to main_app.root_path unless current_user && current_user.admin
    end

    # [...]
  end

  # logout option
  config.current_user_method(&:current_user)

  #

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

  # Config settings for Project Model

  RailsAdmin.config do |config|
    config.model Project do
      edit do
        field :name
        field :client
        field :description
        field :thumbnail
        field :main_image
        field :full_description, :wysihtml5 do
          config_options toolbar: { fa: true }, # use font-awesome instead of glyphicon
                         html: true, # enables html editor
                         parserRules: { tags: { p:1 } } # support for <p> in html mode
        end
      end
    end
  end

  # Config settings for BlogPosts Model

  RailsAdmin.config do |config|
    config.model BlogPost do
      edit do
        field :title
        field :intro
        field :banner_image
        field :content, :wysihtml5 do
          config_options toolbar: { fa: true }, # use font-awesome instead of glyphicon
                         html: true, # enables html editor
                         parserRules: { tags: { p:1 } } # support for <p> in html mode
        end
      end
    end
  end

end
