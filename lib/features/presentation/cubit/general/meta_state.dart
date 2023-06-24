part of 'meta_cubit.dart';

@immutable
abstract class MetaState {}

class MetaInitial extends MetaState {}

class InitialState extends MetaState {
  @override
  List<Object> get props => [];
}

class LoadingState extends MetaState {
  @override
  List<Object> get props => [];
}

class LoadedState extends MetaState {
  LoadedState(this.meta);

  final Meta meta;

  @override
  List<Object> get props => [meta];
}

class ErrorState extends MetaState {
  @override
  List<Object> get props => [];
}
