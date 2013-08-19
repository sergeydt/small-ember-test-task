SearchInputDebounce.TodosController = Ember.ArrayController.extend

  init: ->
    @_super()
    @query = _.debounce(_.bind(@_query, @), 2000)

  isLoading: no

  searchAttempt: (value)->
    @set 'value', value
    @query()

  searchedContent: (value)->
    regexp = new RegExp(value, 'i');
    filtered = @get('model').filter (item)->
      regexp.test(item.get('title'))
    filtered

  _query: ->
    value = @get('value')
    @set 'isLoading', yes

    # Emulate waiting for the server
    setTimeout =>
      z = @searchedContent(value)
#      @target.router.transitionTo 'todos'
      @set 'filteredTodos', z
      @set 'isLoading', no
    , 1000 + Math.random(1000)

