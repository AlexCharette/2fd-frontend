part of 'vems_bloc.dart';

abstract class VemsState extends Equatable {
  const VemsState();

  @override
  List<Object> get props => [];
}

class VemsLoading extends VemsState {}

class VemsLoaded extends VemsState {
  final List<Vem> vems;

  const VemsLoaded([this.vems = const []]);

  @override
  List<Object> get props => [vems];

  @override
  String toString() => 'VemsLoaded { vems: $vems }';
}

class VemsNotLoaded extends VemsState {}

class VemResponsesLoading extends VemsState {}

class VemResponsesLoaded extends VemsState {
  final List<VemResponse> vemResponses;

  const VemResponsesLoaded([this.vemResponses = const []]);

  @override
  List<Object> get props => [vemResponses];

  @override
  String toString() => 'VemResponsesLoaded { vemResponses: $vemResponses }';
}

class VemResponsesNotLoaded extends VemsState {}
