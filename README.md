## Features

A new Reactive state management approach and dependency injection  inspired by GetX

## Notice

This plugin is being replaced by the [HalfMadCoder](https://pub.dev/publishers/halfmadcoder.com/packages) Plugin version, [reactiv](https://pub.dev/packages/reactiv). 
No further updates are planned to this plugin, and we encourage all users to migrate to the Plus version.

Critical fixes (e.g., for any security incidents) will be provided through the end of 2023, 
at which point this package will be marked as discontinued.

## Usage


Controller
```dart
class TestPageController extends ReactiveController {
  final count = ReactiveInt(0);

  @override
  void onInit() {
    super.onInit();
  }

  increment() {
    count.value = (count.value ?? 0) + 1;
  }
}

```

View
```dart
class TestPageScreen extends StatelessWidget {
  const TestPageScreen({Key? key}) : super(key: key);

  TestPageController get controller => Dependency.find<TestPageController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Reaction(
          cause: controller.count,
          effect: (count) {
            return Center(child: Text('Count: $count'));
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => controller.increment(),
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
```

## Additional information

Stay tuned more to come
