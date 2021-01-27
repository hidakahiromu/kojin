require 'csv'

module SelectManager
    class Select
        def initialize
            @back_ground = Image.new(900,500,[255,255,255])     #背景色
            @box_color = Image.new(200,50,[255,0,255,255])      #Selectのボックスの色
            @select_font = Font.new(16)         #フォントのサイズ指定
            @select_up_flag = false             #上ボタンが押されたかの判定
            @select_down_flag = false           #下ボタンが押されたかの判定
        end

        def draw
            Window.draw(0,0,@back_ground)

            Window.draw(150,100,@box_color)         #ボックスの描画
            Window.draw(150,300,@box_color)

            Window.draw_font(160,115,"プロジェクト新規登録",@select_font,:color=>[0, 0, 0])             #ボックスのテキスト描画
            Window.draw_font(160,315,"既存のプロジェクトに登録",@select_font,:color=>[0, 0, 0])
        end

        def play
            select_mouse()
        end

        def select_mouse
            x = Input.mouse_pos_x  # マウスカーソルのx座標
            y = Input.mouse_pos_y  # マウスカーソルのy座標
            if (x>=150&&x<=350)&&(y>=100&&y<=150)       #上のボックスにマウスカーソルが入っている時
                Window.draw_box(150,100,350,150,[0,0,0])
                if(Input.mouse_push?(M_LBUTTON))        #マウスカーソルが入った状態でクリックした場合
                    Scene.add(NewProjectManager::NewProject.new,  :NewProject)
                    Scene.move_to(:NewProject)
                end
              end
        
              if (x>=150&&x<=350)&&(y>=300&&y<=350)     #下のボックスにマウスカーソルが入っている時
                Window.draw_box(150,300,350,350,[0,0,0])
                if(Input.mouse_push?(M_LBUTTON))        #マウスカーソルが入った状態でクリックした場合
                    Scene.add(ProjectManager::Project.new,  :Project)
                    Scene.move_to(:Project)
                end
              end
        end


    end
end
