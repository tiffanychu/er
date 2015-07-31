require_relative 'models/ruby2.rb'
require_relative 'models/search.rb'
require_relative 'models/gparuby.rb'
require 'bundler'
Bundler.require

class MyApp < Sinatra::Base
  get '/' do
    erb :index
  end
  
  get '/content' do
    erb :content
  end

   get '/planner' do
     erb :planner
   end

   post '/calendar' do
     event1 = params[:event1]
     event2 = params[:event2]
     event3 = params[:event3]
     event4 = params[:event4]
     event5 = params[:event5]
     event6 = params[:event6]
     event7 = params[:event7]
     event8 = params[:event8]
     event9 = params[:event9]
     wake_up = params[:wake_up]
     sleep = params[:sleep].to_sym
     @time = calendar(event1, event2, event3, event4, event5, event6, event7, event8, event9, wake_up, sleep)
     erb :calendar
   end
  
  get '/er' do
    erb :er
  end
  
  get '/english.erb' do
    erb :english
  end
  
  get '/math.erb' do
    erb :math
  end

  get '/history.erb' do
    erb :history
  end
  
  get '/language.erb' do
    erb :language
  end
  
  get '/science.erb' do
    erb :science
  end
  
  get '/algebra.erb' do
    erb :algebra
  end
  
  get '/geometry.erb' do
    erb :geometry
  end
  
  get '/physics.erb' do
    erb :physics
  end
  
  get '/biology.erb' do
    erb :biology
  end
  
  get '/chemistry.erb' do
    erb :chemistry
  end
  
  get '/gpa.erb' do
    erb :gpa
  end
  
  post '/results.erb' do
    x = params[:search]
    @result = subjects(x)
    erb :results
  end
  
   post '/results2' do
    ce1 = params[:course1].to_i
    ce2 = params[:course2].to_i
    ce3 = params[:course3].to_i
    ce4 = params[:course4].to_i
    ce5 = params[:course5].to_i
    g1 = params[:grade1].to_f
    g2 = params[:grade2].to_f
    g3 = params[:grade3].to_f
    g4 = params[:grade4].to_f
    g5 = params[:grade5].to_f
    @gpa = gpa(ce1, ce2, ce3, ce4, ce5, g1, g2, g3, g4, g5)
    erb :results2
   end
end



#     @a = params[:event1]
#     b = params[:event2]
#     c = params[:event3]
#     d = params[:event4]
#     e = params[:event5]
#     f = params[:event6]
#     g = params[:event7]
#     h = params[:event8]
#     i = params[:event9]
#     j = params[:event10]
# #     if @b == ""
# #       @p4 = @a
# #     elsif @c == ""
# #       @p4 = @a
# #     @p5 = @b
# #     elsif @d == ""
# #        @p4 = @a
# #     @p5 = @b
# #     @p6 = @c
# #     elsif @e == ""
# #       @p4 = @a
# #     @p5 = @b
# #     @p6 = @c
# #     @p7 = @d
# #     elsif @f == ""
# #       @p4 = @a
# #     @p5 = @b
# #     @p6 = @c
# #     @p7 = @d
# #     @p8 = @e
# #     elsif @g == ""
# #       @p4 = @a
# #     @p5 = @b
# #     @p6 = @c
# #     @p7 = @d
# #     @p8 = @e
# #     @p9 = @f
# #     elsif @h == ""
# #       @p4 = @a
# #     @p5 = @b
# #     @p6 = @c
# #     @p7 = @d
# #     @p8 = @e
# #     @p9 = @f
# #     @p10 = @g
# #     elsif @i == ""
# #       @p4 = @a
# #     @p5 = @b
# #     @p6 = @c
# #     @p7 = @d
# #     @p8 = @e
# #     @p9 = @f
# #     @p10 = @g
# #     @p11 = @h
# #     elsif @j == ""
# #       @p4 = @a
# #     @p5 = @b
# #     @p6 = @c
# #     @p7 = @d
# #     @p8 = @e
# #     @p9 = @f
# #     @p10 = @g
# #     @p11 = @h
# #     @a12 = @i
# #     else
# #       @p4 = @a
# #     @p5 = @b
# #     @p6 = @c
# #     @p7 = @d
# #     @p8 = @e
# #     @p9 = @f
# #     @p10 = @g
# #     @p11 = @h
# #     @a12 = @i
# #     @a1 = @j
# #     end

# #     if @a == ""
# #       x = 0
# #     elsif @b == ""
# #       x = 1
# #     elsif @c == ""
# #       x = 2
# #     elsif @d == ""
# #       x = 3
# #     elsif @e == ""
# #       x = 4
# #     elsif @f == ""
# #       x = 5
# #     elsif @g == ""
# #       x = 6
# #     elsif @h == ""
# #       x = 7
# #     elsif @i == ""
# #       x = 8
# #     elsif @j == ""
# #       x = 9
# #     else
# #       x = 10
# #     end
# #     generate(x)
#     #@time = calendar(a, b, c, d, e, f, g, h, i, j)
#     erb :calendar
#   end

