import '../base/reactive.dart';

class ReactiveList<T> extends Reactive<List<T>> {
  ReactiveList(super.value);
}


class ReactiveListN<T> extends ReactiveN<List<T>> {
  ReactiveListN([super.value]);
}
