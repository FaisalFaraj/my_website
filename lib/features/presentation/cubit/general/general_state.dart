part of 'general_cubit.dart';

@immutable
abstract class GeneralState {}

class GeneralInitial extends GeneralState {}

class InitialState extends GeneralState {
  @override
  List<Object> get props => [];
}

class LoadingState extends GeneralState {
  @override
  List<Object> get props => [];
}

class LoadedState extends GeneralState {
  LoadedState(this.meta, this.projects);

  final Meta meta;
  final Projects projects;

  @override
  List<Object> get props => [projects, meta];
}

class ErrorState extends GeneralState {
  @override
  List<Object> get props => [];
}
