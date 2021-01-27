
module NewProjectManager
    class NewProject
        def initialize
            @back_ground = Image.new(900,500,[255,255,255])
            @back_page = Image.new(90,50,[255,0,255,255])
            @back_page_font = Font.new(16)
            @name_regist = Image.new(100,30,[255,0,255,255])            #登録ボタン

            @project_name           #新しく生成するCSVの名前
        end
        
        def draw
            Window.draw(0,0,@back_ground)

            Window.draw(30,30,@back_page)
            Window.draw_font(55,45,"戻る",@back_page_font,:color=>[0, 0, 0])
            
            Window.draw_box(200,350,450,380,[0,0,0])        #入力の枠組み
            Window.draw(470,350,@name_regist)               #登録ボタン
            Window.draw_font(500,355,"登録",@back_page_font,:color=>[0,0,0])
        end

        def play
            select_back()
        end

        def select_back
            x = Input.mouse_pos_x  # マウスカーソルのx座標
            y = Input.mouse_pos_y  # マウスカーソルのy座標
            if (x>=30&&x<=120)&&(y>=30&&y<=80)       #上のボックスにマウスカーソルが入っている時
                Window.draw_box(30,30,120,80,[0,0,0])
                if(Input.mouse_push?(M_LBUTTON))        #マウスカーソルが入った状態でクリックした場合
                    Scene.add(SelectManager::Select.new,  :select)
                    Scene.move_to(:select)
                end
            end
            if (x>=470&&x<=570)&&(y>=350&&y<=380)       #上のボックスにマウスカーソルが入っている時
                Window.draw_box(470,350,570,380,[0,0,0])
                if(Input.mouse_push?(M_LBUTTON))        #マウスカーソルが入った状態でクリックした場合
                    #Scene.add(SelectManager::Select.new,  :select)
                    #Scene.move_to(:select)
                end
            end
        end

        def write_project_name
            
        end



    end
end
