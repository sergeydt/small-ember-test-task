SearchInputDebounce.Todo = DS.Model.extend
  title: DS.attr("string")



SearchInputDebounce.Todo.FIXTURES = _. map [
  "Fix a bug of nested search - each run searches in the last selection"
  "Make url be sharable, i.e. an opportunity to something like ?q=some_string"
  "Empty field should show all todos. Either on startup and after cleaning search field"
  "Case insensitive search"
  "Clean code"
  "!!! Watch the video"
  "Make the search box to be in focus everytime on its page load"
  "Make an restful API (low priority)"
  "Add markdown support?"
  "Add todos from example ember todos app"
  "Phantom or karma tests - UI in browser"
  "Server for the search and sample results"
  "To use all ember best practices"
  "To use all bootstrap features"
  "To use coffeescript"
  "To use stylus"
  "Make a video of the project behavior"
], (v, i)-> id: i, title: v