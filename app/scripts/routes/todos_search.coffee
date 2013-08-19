
SearchInputDebounce.TodosSearchRoute = Ember.Route.extend(

  setupController: ()->
    todos = SearchInputDebounce.Todo.find()
    this.controllerFor('todos').set('content', todos);
)