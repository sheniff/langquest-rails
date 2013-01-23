@TrivialController = ($scope) ->

  $scope.player =
    score: 0
    badges: []

  $scope.tiles = [
    { color: 'white' }
    { color: 'blue' }
    { color: 'orange' }
    { color: 'pink' }
    { color: 'brown' }
    { color: 'green' }
    { color: 'yellow' }
    { color: 'red' }
  ]

  $scope.tile_size =
    regular: 40
    badge: 55

  $scope.board =
    size: 600,
    tiles: [
      { type: 1, badge: true }
      { type: 7 }
      { type: 0 }
      { type: 4 }
      { type: 6 }
      { type: 0 }
      { type: 3 }
      { type: 2, badge: true }
      { type: 1 }
      { type: 0 }
      { type: 5 }
      { type: 7 }
      { type: 0 }
      { type: 4 }
      { type: 3, badge: true }
      { type: 2 }
      { type: 0 }
      { type: 6 }
      { type: 1 }
      { type: 0 }
      { type: 5 }
      { type: 4, badge: true }
      { type: 3 }
      { type: 0 }
      { type: 7 }
      { type: 2 }
      { type: 0 }
      { type: 6 }
      { type: 5, badge: true }
      { type: 4 }
      { type: 0 }
      { type: 1 }
      { type: 3 }
      { type: 0 }
      { type: 7 }
      { type: 6, badge: true }
      { type: 5 }
      { type: 0 }
      { type: 2 }
      { type: 4 }
      { type: 0 }
      { type: 1 }
      { type: 7, badge: true }
      { type: 6 }
      { type: 0 }
      { type: 3 }
      { type: 5 }
      { type: 0 }
      { type: 2 }
    ]
