class LaughTracksApp < Sinatra::Base

  get "/comedians" do
    @comedians = Comedian.all
    erb :"comedians/index"
  end

  get "/comedians/:age" do
    @comedians = Comedian.find_by(:age)
    erb :"comedians/show"
  end

end
