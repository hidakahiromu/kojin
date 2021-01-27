require 'dxruby'
require_relative 'scene'

# coding: shift_jis

Window.caption = ""
Window.width   = 900
Window.height  = 500


Scene.add(TitleManager::Title.new,  :title)
Scene.move_to(:title)

Window.loop do
    Scene.draw
    Scene.play
end