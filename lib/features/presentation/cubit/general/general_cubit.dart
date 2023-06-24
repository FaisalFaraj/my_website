import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:my_portfolio/features/data/models/meta.dart';
import 'package:my_portfolio/features/data/models/projects.dart';
import 'package:my_portfolio/features/domain/repositories/general_repository/general_repository.dart';

part 'general_state.dart';

class GeneralCubit extends Cubit<GeneralState> {
  GeneralCubit() : super(InitialState()) {
    fetch();
  }

  Future<void> fetch() async {
    try {
      emit(LoadingState());
      Projects projects = await GeneralRepository().fetchProjectsList();

      Meta meta = await GeneralRepository().fetchMeta();

      emit(LoadedState(meta, projects));
    } catch (e) {
      emit(ErrorState());
    }
  }
}
