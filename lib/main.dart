import 'package:firebase_core/firebase_core.dart';
import 'package:flow_builder/flow_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vempraquadra/bloc_observer.dart';
import 'package:vempraquadra/features/authentication/domain/repository/auth_repository.dart';
import 'package:vempraquadra/features/authentication/presentation/bloc/auth_bloc.dart';
import 'package:vempraquadra/features/authentication/presentation/cubit/signup/signup_cubit.dart';
import 'package:vempraquadra/features/authentication/presentation/pages/login_page.dart';
import 'package:vempraquadra/features/authentication/presentation/pages/register_page.dart';
import 'package:vempraquadra/features/feed/presentation/cubit/favorti_list_cubit.dart';
import 'package:vempraquadra/features/feed/presentation/pages/feed_page.dart';
import 'package:vempraquadra/features/feed/presentation/pages/profile_page.dart';
import 'package:vempraquadra/features/feed/presentation/widgets/sports_grid.dart';
import 'package:vempraquadra/firebase_options.dart';
import 'package:vempraquadra/utils/app_routes.dart';

void main() {
  return BlocOverrides.runZoned(
    () async {
      WidgetsFlutterBinding.ensureInitialized();
      await Firebase.initializeApp(
        options: DefaultFirebaseOptions.currentPlatform,
      );
      final authReporitoy = AuthRepository();
      runApp(App(authenticationRepository: authReporitoy));
    },
    blocObserver: AppBlocObserver(),
  );
}

class App extends StatelessWidget {
  const App({
    super.key,
    required AuthRepository authenticationRepository,
  }) : _authenticationRepository = authenticationRepository;

  final AuthRepository _authenticationRepository;

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider.value(
      value: _authenticationRepository,
      child: BlocProvider(
        create: (_) => AuthBloc(
          authenticationRepository: _authenticationRepository,
        ),
        child: AppView(),
      ),
    );
  }
}

class AppView extends StatelessWidget {
  AppView({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<FavortiListCubit>(
          create: (context) => FavortiListCubit(),
          child: SportsGrid(),
        ),
        BlocProvider<FavortiListCubit>(
          create: (context) => FavortiListCubit(),
          child: ProfilePage(),
        ),
        BlocProvider<SignupCubit>(
          create: (context) => SignupCubit(AuthRepository()),
          child: ProfilePage(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: FlowBuilder<AuthStatus>(
          state: context.select((AuthBloc bloc) => bloc.state.status),
          onGeneratePages: onGenerateAppViewPages,
        ),
      ),
    );
  }
}
