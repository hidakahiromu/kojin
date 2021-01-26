class Scene
@@now_scene = {}
@@current_scene_name = nil

    def self.add(scene_obj, scene_name)
     @@now_scenes[scene_name.to_sym] = scene_obj
    end


    def self.move_to(scene_name)
     @@current_scene_name = scene_name.to_sym
    end


    def self.play
     @@now_scenes[@@current_scene_name].play
    end


    def self.draw
     @@now_scenes[@@current_scene_name].draw
    end


end