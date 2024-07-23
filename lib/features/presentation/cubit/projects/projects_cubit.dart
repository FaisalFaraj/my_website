import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:my_portfolio/features/data/models/projects.dart';
import 'package:my_portfolio/features/domain/repositories/general_repository/general_repository.dart';

part 'projects_state.dart';

class ProjectsCubit extends Cubit<ProjectsState> {
  ProjectsCubit() : super(InitialState()) {
    fetch();
  }
  Projects? projects;
  Future<void> fetch() async {
    try {
      emit(LoadingState());
      projects = await GeneralRepository().fetchProjectsList();

      emit(LoadedState(projects, projects!.mobile!));
    } catch (e) {
      emit(ErrorState());
    }
  }

  Future<void> fetch_selected(var selected) async {
    try {
      emit(LoadingState());

      emit(LoadedState(projects, selected));
    } catch (e) {
      emit(ErrorState());
    }
  }
}
