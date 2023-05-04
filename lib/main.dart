import 'package:bloc_proj/app_blocs.dart';
import 'package:bloc_proj/app_events.dart';
import 'package:bloc_proj/app_states.dart';
import 'package:bloc_proj/data/repository/ChatRepository.dart';
import 'package:bloc_proj/navigation/app_router.dart';
import 'package:bloc_proj/pages/sign_in/sign_in.dart';
import 'package:bloc_proj/pages/welcome/bloc/welcome_blocs.dart';
import 'package:bloc_proj/pages/welcome/welcome.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

Future<void> main() async {

// ...
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await SharedPrefs.instance.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => WelcomeBloc(),
          lazy: true,
        ),
        BlocProvider(
          create: (context) => AppBlocs(),
          lazy: true,
        ),
      ],
      child: ScreenUtilInit(
        builder: (context, child) => MaterialApp.router(
          routerConfig: AppRouter().config(),
            theme: ThemeData(
                appBarTheme: const AppBarTheme(
                    elevation: 0, backgroundColor: Colors.white)),
            debugShowCheckedModeBanner: false,
        ),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: BlocBuilder<AppBlocs, AppStates>(
          builder: (context, state) => Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                'You have pushed the button this many times:',
              ),
              Text(
                '${state.counter}',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
            ],
          ),
        ),
      ),
      floatingActionButton:
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        FloatingActionButton(
          onPressed: () =>
              BlocProvider.of<AppBlocs>(context).add(AppEvents.increment()),
          tooltip: 'Increment',
          child: const Icon(Icons.add),
        ),
        FloatingActionButton(
          onPressed: () =>
              BlocProvider.of<AppBlocs>(context).add(AppEvents.decrement()),
          tooltip: 'Increment',
          child: const Icon(Icons.remove),
        ),
      ]), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
