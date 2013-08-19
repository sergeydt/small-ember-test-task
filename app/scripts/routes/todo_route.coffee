SearchInputDebounce.TodoRoute = Ember.Route.extend(model: (model) ->
    SearchInputDebounce.Todo.find model.todo_id
)