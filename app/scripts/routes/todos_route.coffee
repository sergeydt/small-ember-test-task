SearchInputDebounce.TodosRoute = Ember.Route.extend(

  model: ->
    todos = SearchInputDebounce.Todo.find()
    @controllerFor('todos').set('filteredTodos', todos)
    todos


  setupController: ->
    console.warn 'setup controller todos'
    todos = SearchInputDebounce.Todo.find()
    @controllerFor('todos').set('content', todos)
    todos

)


