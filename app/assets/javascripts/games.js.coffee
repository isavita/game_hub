$(document).on 'page:change',  ->
  console.log 'this work!'
  $('a[data-remote]').on 'ajax:success', (e, data, status, xhr) ->
    alert 'OK!'


// $.ajax(url: 'games').done (html)->
//   console.log 'Here'
//   $('#game-app').append html


// GamesListItem = React.createClass
//   render: ->
//     React.DOM.li({className: 'game'}, @props.game.name)

// GamesList = React.createClass
//   render: ->
//     React.DOM.ul({className: 'game-list'}, [
//       GamesListItem({game: game}) for game in @props.games
//     ])

// GamesList = React.createClass
//   getInitialState: ->
//     search: ''

//   setSearch: (event) ->
//     @setState = event.target.value

//   games: ->
//     @props.games.filter(
//       (game) => game.name.indexOf(@state.search) > -1
//     )

//   render: ->
//     React.DOM.div({className: 'games-container'}, 
//       @searchInput()
//       @gamesList()
//     )

//   searchInput: ->
//     React.DOM.input({
//       name: 'search'
//       onChange: @setSearch
//       placeholder: 'Search...'
//     })

//   gamesList: ->
//     React.DOM.ul({},
//       GamesListItem({game: game}) for game in @games
//     )