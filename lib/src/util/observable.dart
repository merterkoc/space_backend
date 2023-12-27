abstract class Observable {
  ///  Constructor
  Observable([List<Observer>? observers]) {
    _observers = observers ?? [];
  }

  ///  List of observers
  List<Observer>? _observers;

  ///  Register an observer
  void subscribe(Observer observer) {
    _observers?.add(observer);
  }

  ///  Unregister an observer
  void unsubscribe(Observer observer) {
    _observers?.remove(observer);
  }

  ///  Notify all observers
  void notify(dynamic data) {
    _observers?.forEach((observer) => observer.update(data));
  }
}

class Observer {
  Observer();

  void update(dynamic data) {}
}
