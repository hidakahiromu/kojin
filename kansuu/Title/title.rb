
module TitleManager
    class Title
        def initialize
            @back_ground = Image.new(900,500,[255,255,255])
            @title_font = Font.new(64)
        end
        
        def draw
            Window.draw(0,0,@back_ground)
            Window.draw_font(200,100,"関数登録票",@title_font,:color=>[0, 0, 0])
            Window.draw_font(200,300,"Press to start",@title_font,:color=>[255, 0, 255, 255])
        end

        def play
            if Input.key_down?(K_RETURN)
                Scene.add(SelectManager::Select.new,  :select)
                Scene.move_to(:select)
             end
        end


    end
end
