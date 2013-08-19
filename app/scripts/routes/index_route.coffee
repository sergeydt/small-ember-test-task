SearchInputDebounce.IndexRoute = Ember.Route.extend(redirect: ->
    @transitionTo "/todos"
)