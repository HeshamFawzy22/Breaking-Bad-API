import 'package:bloc/bloc.dart';
import '../../data/models/character.dart';
import '../../data/repository/characters_repository.dart';
part 'characters_state.dart';

class CharactersCubit extends Cubit<CharactersState> {
  final CharactersRepository charactersRepository;
  List<Character> characters = [];

  CharactersCubit(this.charactersRepository) : super(CharactersInitial());

  List<Character> getAllCharacters(){
    charactersRepository.getAllCharacters().then((characters) {
      emit(CharactersLoaded(characters: characters));
      this.characters = characters;
    },);

    return characters;
  }
}
