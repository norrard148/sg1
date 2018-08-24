class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy, :go]
  respond_to :html, :js
  # GET /posts
  # GET /posts.json
  def index
    @posts = Post.all
    respond_to do |format|
      format.html
      format.json
    end

    @keywords = Keyword.new
    @keywords = params[:keyword]
  end


  def go
    
  end

  # GET /posts/1
  # GET /posts/1.json
  def show
    
  end

  # GET /posts/new
  def new
    if user_signed_in? 
    @post = Post.new
    else
    redirect_to "/users/sign_in"
    end
  end

  # GET /posts/1/edit
  def edit
    if user_signed_in?
    else
      redirect_to_"/posts"
    end  
  end


  # POST /posts
  # POST /posts.json
  def create
    @post = Post.new(post_params)
    @post.author_id = current_user.id
    @post.time = Time.now
    @post.in = 0
    respond_to do |format|
      if @post.save
        format.html { redirect_to @post, notice: 'Post was successfully created.' }
        format.json { render :show, status: :created, location: @post }
      else
        format.html { render :new }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /posts/1
  # PATCH/PUT /posts/1.json
  def update
    respond_to do |format|
      if @post.update(post_params)
        format.html { redirect_to @post, notice: 'Post was successfully updated.' }
        format.json { render :show, status: :ok, location: @post }
      else
        format.html { render :edit }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end



  # DELETE /posts/1
  # DELETE /posts/1.json
  def destroy

      if @post.author_id == current_user.id
        @post.comments.destroy_all
        @post.destroy
        respond_to do |format|
          format.html { redirect_to posts_url, notice: 'Post was successfully destroyed.' }
          format.json { head :no_content }
        end
      end
    
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_post
      @post = Post.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def post_params

      params.require(:post).permit(:title, :content, :user_id)
    end
  end
  