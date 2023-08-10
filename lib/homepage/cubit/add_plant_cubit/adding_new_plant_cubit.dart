import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:green_house/model/planet_data_model.dart';
import 'package:hive/hive.dart';

part 'adding_new_plant_state.dart';

class AddingNewPlantCubit extends Cubit<AddingNewPlantState> {
  AddingNewPlantCubit() : super(AddingNewPlantInitial());

  addPlant(PlanetDataModel plant) async {
    emit(AddingNewPlantLoading());

    try {
      var plantBox = Hive.box<PlanetDataModel>('plantBox');
      emit(AddingNewPlantSuccess());
    } on Exception catch (e) {
      AddingNewPlantFailure(e.toString());
    }
  }
}
