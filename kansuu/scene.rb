require_relative 'Title/title'
require_relative 'Select/select'
require_relative 'NewProject/newProject'
require_relative 'Project/project'
require_relative 'List/list'
require_relative 'Search/search'
require_relative 'Registration/registration'


class Scene
@@now_scene = {}
@@current_scene_name = nil

    def self.add(scene_obj, scene_name)
     @@now_scene[scene_name.to_sym] = scene_obj
    end


    def self.move_to(scene_name)
     @@current_scene_name = scene_name.to_sym
    end


    def self.play
     @@now_scene[@@current_scene_name].play
    end


    def self.draw
     @@now_scene[@@current_scene_name].draw
    end


end