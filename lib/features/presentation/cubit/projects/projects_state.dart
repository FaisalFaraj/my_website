part of 'projects_cubit.dart';

@immutable
abstract class ProjectsState {}

class ProjectsInitial extends ProjectsState {}

class InitialState extends ProjectsState {
  @override
  List<Object> get props => [];
}

class LoadingState extends ProjectsState {
  @override
  List<Object> get props => [];
}

class LoadedState extends ProjectsState {
  LoadedState(this.projects, this.selected_projects);

  final selected_projects;
  final projects;

  @override
  List<Object> get props => [projects, selected_projects];
}

class ErrorState extends ProjectsState {
  @override
  List<Object> get props => [];
}
