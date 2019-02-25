import './models.dart';
import './actions.dart';

List<Todo> todosReducer(List<Todo>state,action){
  if(action is AddAction){
    return <Todo>[]
        ..addAll(state)
        ..add(new Todo(id:action.id,text: action.text));
  }
  return state;
}

TodoState todoAppReducer(TodoState state, action){
  return new TodoState(
    todos:todosReducer(state.todos, action)
  );
}