class User
 attr_accessor :name

 def initialize(**params)
     @name = params[:name]
     @age = params[:age]
    end

def introduce
  if adult?
    "はじめまして、私の名前は#{@name}でえす。おちんぽなめたろうは#{@name}のことだッ！！"
  else
    "僕は#{@name}だッッ！！ショタコンばばあは失せていただこう"
  end
end
end

private

def adult?
  @age >= 20
end


def build_users(params)
  users = []


 params.each {|params| users << User.new(params)}

users
end



params = [{name: "saito", age: 22},  {name: "ozawa", age: 19}, {name: "kamizato", age: 99}]

users = build_users(params)


users.each {|user| puts user.introduce}
