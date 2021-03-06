abstract class Abstract {
  String abstractMethod();
  String hookMethod() => "OMG I am a hook!";
  void templateMethod() {
    print(abstractMethod());
    print(hookMethod());
  }
}

class Concrete extends Abstract {
  String abstractMethod() => "This is a boring example...";
}

class ConcreteOverridingHook extends Abstract {
  String abstractMethod() => "So, so boring...";
  @override
  String hookMethod() => "I'm an override hook method!";
}

void main() {
  Concrete con1 = Concrete();
  ConcreteOverridingHook con2 = ConcreteOverridingHook();
  con1.templateMethod();
  con2.templateMethod();
}