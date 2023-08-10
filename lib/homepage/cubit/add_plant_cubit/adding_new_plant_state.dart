part of 'adding_new_plant_cubit.dart';

@immutable
abstract class AddingNewPlantState {}

class AddingNewPlantInitial extends AddingNewPlantState {}
class AddingNewPlantLoading extends AddingNewPlantState {}
class AddingNewPlantSuccess extends AddingNewPlantState {}
class AddingNewPlantFailure extends AddingNewPlantState {
  final String errMsg;

  AddingNewPlantFailure(this.errMsg);

}
