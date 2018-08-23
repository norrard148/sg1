class PostsController < ApplicationController
<<<<<<< HEAD
  before_action :set_post, only: [:show, :edit, :update, :destroy, :go]
  respond_to :html, :js
=======
  before_action :set_post, only: [:show, :edit, :update, :destroy]

>>>>>>> 68a445cba24cb6a6e671184dba0366d95c4a09e9
  # GET /posts
  # GET /posts.json
  def index
    @posts = Post.all
<<<<<<< HEAD
    respond_to do |format|
      format.html
      format.json
    end
  end

  def go
    
=======
  
>>>>>>> 68a445cba24cb6a6e671184dba0366d95c4a09e9
  end

  # GET /posts/1
  # GET /posts/1.json
  def show
<<<<<<< HEAD
    
=======
>>>>>>> 68a445cba24cb6a6e671184dba0366d95c4a09e9
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

<<<<<<< HEAD


  # DELETE /posts/1
  # DELETE /posts/1.json
  def destroy

=======
  # DELETE /posts/1
  # DELETE /posts/1.json
  def destroy
    if user_signed_in?
>>>>>>> 68a445cba24cb6a6e671184dba0366d95c4a09e9
      if @post.author_id == current_user.id
        @post.comments.destroy_all
        @post.destroy
        respond_to do |format|
          format.html { redirect_to posts_url, notice: 'Post was successfully destroyed.' }
          format.json { head :no_content }
        end
      end
<<<<<<< HEAD
    
=======
    redirect_to "/posts"
    end
>>>>>>> 68a445cba24cb6a6e671184dba0366d95c4a09e9
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_post
      @post = Post.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def post_params

<<<<<<< HEAD
      params.require(:post).permit(:title, :content, :user_id, :hashtag)
=======
      params.require(:post).permit(:title, :content, :user_id)
>>>>>>> 68a445cba24cb6a6e671184dba0366d95c4a09e9
    end
end
