import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:my_portfolio/features/data/models/meta.dart';
import 'package:my_portfolio/features/data/models/projects.dart';
import 'package:my_portfolio/features/domain/repositories/general_repository/general_repository.dart';

part 'meta_state.dart';

class MetaCubit extends Cubit<MetaState> {
  MetaCubit() : super(InitialState()) {
    fetch();
  }

  Future<void> fetch() async {
    try {
      emit(LoadingState());

      Meta meta = await GeneralRepository().fetchMeta();

      emit(LoadedState(meta));
    } catch (e) {
      emit(ErrorState());
    }
  }
}
