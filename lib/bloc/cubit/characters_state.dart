// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'characters_cubit.dart';


class CharactersState {}

final class CharactersInitial extends CharactersState {}

class CharactersLoading extends CharactersState {}

class CharactersLoaded extends CharactersState{
  final List<Character> characters;

  CharactersLoaded({required this.characters});
}

class CharactersError extends CharactersState {
  final String error;

  CharactersError({
    required this.error,
  });

  // @override
  // List<Object> get props => [error];
}
