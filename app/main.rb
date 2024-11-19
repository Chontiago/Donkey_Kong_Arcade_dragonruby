FLOOR_HEIGHT = 50
HALF_SCREEN_WIDTH = 1280 / 2
HALF_SCREEN_HEIGHT = 720 / 2
SCREEN_WIDTH = 1280
SCREEN_HEIGHT = 720

require "app/all_files.rb"
class DonkeyKongGame
  def initialize(args)
    @args = args
  
  end

  def current_screen
    FirstLevel.new().draw_map
  end

  
  def tick_count
   current_screen
  end

  
end

def tick args
  HelperFunctions.args = args
  FileManagement.args =  args
  @Donkey_kong_game = DonkeyKongGame.new(args)
  @Donkey_kong_game.tick_count
  
  

end
