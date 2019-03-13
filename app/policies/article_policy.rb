class ArticlePolicy < ApplicationPolicy
  # our authorization rules will go here
    attr_reader :user, :article

  def initialize(user, article)
    @user = user
    @article = article
  end

  def index
    
  end

  def show
    user.role == 'admin'

    if article.for_adult == true
        user.role != "user_minor"
    else
        article.user_id == user.id || user.role == "subscriber"
    end

  end

  def new    
    user.role == 'admin' 
  end

  def edit
    user.role == 'admin' 
  end

  def create
    user.role == 'admin' 
    
  end

  def update
    user.role == 'admin' 
    
  end

  def destroy?
    user.role == 'admin' || article.user_id == user.id
  end


end
