SearchInputDebounce.Router.map ->


  @resource "task",
    path: "/task"

  @resource "comments",
    path: "/comments"

  @resource "todo_edit"
  @resource "todo_edit",
    path: "/todo_edit/:todo_edit_id"

  @resource "todo_edit.edit",
    path: "/todo_edit/:todo_edit_id/edit"

  @resource "todos",
    path: "/todos"

  @resource "todos_search",
    path: "/todos/search"

  @resource "todo",
    path: "/todo/:todo_id"

  @resource "todo.edit",
    path: "/todo/:todo_id/edit"

