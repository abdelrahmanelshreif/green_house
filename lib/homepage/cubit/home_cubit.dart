import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());

  Item selecteditem=Item.SPECIES;
  void choiceitem(Item item) {
    if (item == Item.SPECIES) {
      selecteditem = Item.SPECIES;
    } else {
      selecteditem = Item.ARTICLES;
    }
    emit(Homechoiceitemstate());
  }


}
enum Item{
  SPECIES,
  ARTICLES
}