SearchInputDebounce.SearchView = Ember.TextField.extend
  templateName: 'search-view'
  classNames: ['input-small']
  placeholder: 'Search'



  keyUp: (event)->
    controller = @get('controller')
    char = String.fromCharCode event.which
    # TODO: write cases for the char
    console.log 'Typed char code', event.which
    @get('controller').send('searchAttempt', @get('value'));
