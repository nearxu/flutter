import './models.dart';
import './actions.dart';

List<Todo> todosReducer(List<Todo>state,action){
  print('reduce1');
  print(state);
  print(action.id);
  if(action is AddAction){
    return <Todo>[]
        ..addAll(state)
        ..add(new Todo(id:action.id,text: action.text));
  }
  if(action is ToggleAction){
    return state
        .map((Todo todo) => todo.id == action.id
        ? todo.copyWith(completed: !todo.completed)
        : todo)
        .toList();
  }
  return state;
}


visitFilter visiFilterReducer(visitFilter state ,action){
  if(action is SetVisAction){
    return action.filter;
  }
  return state;
}
TodoState todoAppReducer(TodoState state, action){
  return new TodoState(
    todos:todosReducer(state.todos, action),
    visFilter: visiFilterReducer(state.visFilter, action)
  );
}
