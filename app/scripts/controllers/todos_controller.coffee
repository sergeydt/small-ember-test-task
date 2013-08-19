SearchInputDebounce.TodosController = Ember.ArrayController.extend


  init: ->
    console.warn 'init', @, arguments
    @_super()
    @query = _.debounce(_.bind(@_query, @), 2000)

  isLoading: no

  searchAttempt: (value)->
    @set 'value', value
    @query()

  searchedContent: ->
    value = @get('value')
    regexp = new RegExp(value, 'i');
    console.log 'faA', @get('model')
    filtered = @get('model').filter (item)->
      console.log 'iter', item
      regexp.test(item.get('title'))
    @set 'content', filtered
    filtered



  _query: ->
    value = @get('value')
    console.log 'Make a query for value:', value
    @set 'isLoading', yes

    # Emulate waiting for the server
    setTimeout =>
      z = @searchedContent(value)
      console.log 'zzz', z
      @target.router.transitionTo 'todos'#, z
      @set 'filteredTodos', z
      @set 'isLoading', no
    , 1000 + Math.random(1000)

