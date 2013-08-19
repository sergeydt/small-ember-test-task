SearchInputDebounce.TodosRoute = Ember.Route.extend

  model: ->
    todos = SearchInputDebounce.Todo.find()
    @controllerFor('todos').set('filteredTodos', todos)
    todos

  setupController: ->
    todos = SearchInputDebounce.Todo.find()
    @controllerFor('todos').set('content', todos)
    todos


