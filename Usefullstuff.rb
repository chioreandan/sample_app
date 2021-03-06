  rails console --sandbox #to start rails console that rollbacks on exit


User.all #returns all users
User.find(1) #return first user
User.find_by(email: "email@email.com") #return user where email== email
User.find_by_name("Dan") #return user where name == "Dan"

#--UPDATE USER
user.email="update@email.com"
user.save
user.reload #to see what happens if user.save

user.update_attributes(name:"Update", email:"Update@update.com") #update multiple attributes is to use update_attributes
user.update_attribute(:name, "Update")  #update 1 attribute


##validate

validates :name, presence: true

validates :name,  presence: true, length: { maximum: 50 }
validates :email, presence: true, length: { maximum: 255 }



$ rails generate migration add_index_to_users_email


rails generate migration add_password_digest_to_users password_digest:string


redirect_to @user #---------------------------redirect to the current user
flash[:success] = "Welcome to the Sample App!" # flash messahe

>> User.first.following.map(&:id)
=> [3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22,
23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41,
42, 43, 44, 45, 46, 47, 48, 49, 50, 51]
