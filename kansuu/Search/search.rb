
module SearchManager
    class Search
        def initialize
            @back_ground = Image.new(900,500,[255,255,255])
        end
        
        def draw
            Window.draw(0,0,@back_ground)
        end

        def play
        
        end


    end
end
