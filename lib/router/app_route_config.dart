import 'package:go_router/go_router.dart';
import 'package:todo_app/router/app_router_constants.dart';
import 'package:todo_app/screens/errorpage.dart';
import 'package:todo_app/screens/new_todo.dart';
import 'package:todo_app/screens/todolist.dart';

class MyRouter {
  GoRouter router = GoRouter(
    routes: [
      GoRoute(
        name: TodoAppRouteConstants.todoListRoute,
        path: '/',
        builder: (context, state) => const TodoList(),
      ),
      GoRoute(
        name: TodoAppRouteConstants.newTodoRoute,
        path: '/NewTodo',
        builder: (context, state) => NewTodo(
          todo: state.uri.queryParameters['todo'],
          index: state.uri.queryParameters['index'] != null
              ? int.tryParse(state.uri.queryParameters['index']!)
              : null,
        ),
      ),
    ],
    errorBuilder: (context, state) => const Errorpage(),
  );
}
