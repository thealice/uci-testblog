Blog App

Post
    - belongs_to :user
    - has_many :comments
    - has_many :users, through: :comments
    - belongs_to :category


    attributes:
        - title
        - content


User
    - has_many :posts
    - has_many :comments
    - has_many commented_posts, through :comments
    - has_many :categories, through :posts

    attributes:
        - username
        - email
        - password digest

Comment
    - belongs_to :user
    - belongs_to :post

    attributes:
        - content

Category
    - has_many :posts
    - has_many :users, through: :posts
    
    attributes:
        - name



