class User
 attr_accessor :name

 def initialize(**params)
     @name = params[:name]
     @age = params[:age]
    end

def introduce
  if @age > 20
    "はじめまして、私の名前は#{@name}でえす。おちんぽなめたろうは#{@name}のことだッ！！"
  else
    "僕は#{@name}だッッ！！ショタコンばばあは失せていただこう"
  end
end
end

def build_users(params)
  users = []
 params.each do |params|
   users << User.new(params)
end

users
end



params = [{name: "saito", age: 22},  {name: "ozawa", age: 19}, {name: "kamizato", age: 99}]

users = build_users(params)


users.each do |user|
  puts user.name
  puts user.introduce
end
