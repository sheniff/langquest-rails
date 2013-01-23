angular.module("trivialModule", [])
  .filter("tile_top", ->
    (tile_index, extra) ->
      radius = extra.board_size / 2
      radius - radius * Math.sin(360 / extra.num_tiles * tile_index * Math.PI / 180)
  )
  .filter "tile_left", ->
    (tile_index, extra) ->
      radius = extra.board_size / 2
      radius - radius * Math.cos(360 / extra.num_tiles * tile_index * Math.PI / 180)
  .filter "tile_style", ->
    (tile_index, extra) ->
      bgcolor = extra.bg_color
      radius = extra.board_size / 2
      tilesize = if extra.tile_badge then extra.tile_sizes.badge else extra.tile_sizes.regular
      top = radius - (tilesize / 2) - radius * Math.cos(360 / extra.num_tiles * tile_index * Math.PI / 180)
      left = radius - (tilesize / 2) - radius * Math.sin(360 / extra.num_tiles * tile_index * Math.PI / 180)
      "background-color: #{bgcolor}; \
       top: #{top}px; left: #{left}px; \
       height: #{tilesize}px; \
       width: #{tilesize}px; \
       border-radius: #{tilesize}px;"
