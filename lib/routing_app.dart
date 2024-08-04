import 'bloc/cubit/characters_cubit.dart';
import 'constants/strings.dart';
import 'data/models/character.dart';
import 'data/repository/characters_repository.dart';
import 'data/web_services/characters_web_services.dart';
import 'ui/screens/character_details_screen.dart';
import 'ui/screens/characters_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RoutingApp {
  late CharactersRepository charactersRepository;
  late CharactersCubit charactersCubit;

  RoutingApp() {
    charactersRepository = CharactersRepository(CharactersWebServices());
    charactersCubit = CharactersCubit(charactersRepository);
  }
  Route? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case (charactersScreen):
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
                create: (context) => charactersCubit,
                child: const CharactersScreen(),
              ));
      case (characterDetailsScreen):
      final Character character = settings.arguments as Character;
        return MaterialPageRoute(
          builder: (_) => CharacterDetailsScreen(character: character,),
        );
    }
    return null;
  }
}
