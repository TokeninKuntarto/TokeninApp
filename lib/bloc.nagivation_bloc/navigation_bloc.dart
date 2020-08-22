import 'package:bloc/bloc.dart';
import '../pages/homepage.dart';
import '../pages/budayapariwisatapage.dart';
import '../pages/cryptotokenpage.dart';
import '../pages/petanisejahterapage.dart';
import '../pages/sibejopage.dart';
import '../pages/usahamikropage.dart';

enum NavigationEvents {
  HomePageClickedEvent,
  BudayaPariwisataClickedEvent,
  CryptoTokenClickedEvent,
  PetaniSejahteraClickedEvent,
  SiBejoClickedEvent,
  UsahaMikroClickedEvent,
}

abstract class NavigationStates {}

class NavigationBloc extends Bloc<NavigationEvents, NavigationStates> {
  
  @override
  // ignore: override_on_non_overriding_member
  NavigationStates get initialState => HomePage();

  @override
  Stream<NavigationStates> mapEventToState(NavigationEvents event) async* {
    switch (event) {
      case NavigationEvents.HomePageClickedEvent:
        yield HomePage();
        break;
      case NavigationEvents.BudayaPariwisataClickedEvent:
        yield BudayaPariwisataPage();
        break;
      case NavigationEvents.CryptoTokenClickedEvent:
        yield CryptoTokenPage();
        break;
      case NavigationEvents.UsahaMikroClickedEvent:
        yield UsahaMikroPage();
        break;
      case NavigationEvents.PetaniSejahteraClickedEvent:
        yield PetaniSejahteraPage();
        break;
      case NavigationEvents.SiBejoClickedEvent:
        yield SiBejoPage();
        break; 
    }
  }  
}