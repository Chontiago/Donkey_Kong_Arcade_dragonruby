$gtk.reset
class FirstLevel
  def initialize
    @map_data ||= FileManagement.open_file('app/map_data.json')
    @parsed_map_data ||= FileManagement.parse_json(@map_data)
    @first_level_map ||= @parsed_map_data["levels"][0] #El 0 es el nivel actual, para pasar al siguiente cambiarlo a 1
    
    @floors ||= @first_level_map["floors"].map do |floor_data|
      {
        x: floor_data["x"],
        y: floor_data["y"],
        w: floor_data["w"],
        h: floor_data["h"],
        r: floor_data["color"][0],
        g: floor_data["color"][1],
        b: floor_data["color"][2],
      }
    end

    @donkey_kong ||= @first_level_map["donkey_kong"].map do |dk_data|
      {
        x: dk_data["x"],
        y: dk_data["y"],
        w: dk_data["w"],
        h: dk_data["h"],
        r: dk_data["color"][0],
        g: dk_data["color"][1],
        b: dk_data["color"][2]
      }
    end

    @barrel_stack ||= @first_level_map["barrel_stack"].map do |stack_data|
      {
        x: stack_data["x"],
        y: stack_data["y"],
        w: stack_data ["w"],
        h: stack_data["h"],
        r: stack_data["color"][0],
        g: stack_data["color"][1],
        b: stack_data["color"][2]
      }
    end

    @fire_can ||= @first_level_map["FireCan"].map do |fire_can_data|
      {
        x: fire_can_data["x"],
        y: fire_can_data["y"],
        w: fire_can_data["w"],
        h: fire_can_data["h"],
        r: fire_can_data["color"][0],
        g: fire_can_data["color"][1],
        b: fire_can_data["color"][2]
      }
    end

    @pauline ||= @first_level_map["pauline"].map do |pauline_data|
      {
        x: pauline_data["x"],
        y: pauline_data["y"],
        w: pauline_data["w"],
        h: pauline_data["h"],
        r: pauline_data["color"][0],
        g: pauline_data["color"][1],
        b: pauline_data["color"][2]
      }
    end

    @jumpman ||= @first_level_map["jumpman"].map do |jumpman_data|
      {
        x: jumpman_data["x"],
        y: jumpman_data["y"],
        w: jumpman_data["w"],
        h: jumpman_data["h"],
        r: jumpman_data["color"][0],
        g: jumpman_data["color"][1],
        b: jumpman_data["color"][2]
      }
    end

    @hammers ||= @first_level_map["hammers"].map do |hammer_data|
      {
        x: hammer_data["x"],
        y: hammer_data["y"],
        w: hammer_data["w"],
        h: hammer_data["h"],
        r: hammer_data["color"][0],
        g: hammer_data["color"][1],
        b: hammer_data["color"][2]
      }
    end

    @stairs ||= @first_level_map["stairs"].map do |stair_data|
      {
        x: stair_data["x"],
        y: stair_data["y"],
        w: stair_data["w"],
        h: stair_data["h"],
        r: stair_data["color"][0],
        g: stair_data["color"][1],
        b: stair_data["color"][2]
      }
    end

    @enemies ||= @first_level_map["enemies"].map do |enemy_data|
      {
        x: enemy_data["x"],
        y: enemy_data["y"],
        w: enemy_data["w"],
        h: enemy_data["h"],
        r: enemy_data["color"][0],
        g: enemy_data["color"][1],
        b: enemy_data["color"][2]
      }
    end

    @background ||= @first_level_map["background"].map do |background_data|
      {
        x: background_data["x"],
        y: background_data["y"],
        w: background_data["w"],
        h: background_data["h"],
        r: background_data["color"][0],
        g: background_data["color"][1],
        b: background_data["color"][2]
      }
    end

    @background ||= @first_level_map["background"].map do |background_data|
      {
        x: background_data["x"],
        y: background_data["y"],
        w: background_data["w"],
        h: background_data["h"],
        r: background_data["color"][0],
        g: background_data["color"][1],
        b: background_data["color"][2]
      }
    end

    

    
  end

  def draw_map 
    render_floors
  end

  def load_map_data
    render_floors
    
  end

  def render
    render_floors

  end

  def render_floors
    HelperFunctions.draw_multiple_solids(@background)
    HelperFunctions.draw_multiple_solids(@floors)
    HelperFunctions.draw_multiple_solids(@donkey_kong)
    HelperFunctions.draw_multiple_solids(@barrel_stack)
    HelperFunctions.draw_multiple_solids(@fire_can)
    HelperFunctions.draw_multiple_solids(@jumpman)
    HelperFunctions.draw_multiple_solids(@hammers)
    HelperFunctions.draw_multiple_solids(@stairs)
    HelperFunctions.draw_multiple_solids(@pauline)
    HelperFunctions.draw_multiple_solids(@enemies)
    
  end

end