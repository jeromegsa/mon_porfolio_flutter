GoRouter: L'objet principal qui gère toutes les routes. Vous y définissez les itinéraires via une liste de GoRoute.
context.go: Permet la navigation vers une nouvelle route définie par son chemin ( path).
MaterialApp.router: Utilisé pour définir un routeur basé sur le GoRouter.




go_routerest une bibliothèque Flutter qui simplifie et améliore la gestion du routage, en particulier pour les applications avec une navigation complexe ou un grand nombre d'écrans. Elle permet une gestion claire des routes, la prise en charge des complexes URL , des paramètres , des redirections et bien d'autres fonctionnalités qui facilitent la construction d'applications robustes.

Pourquoi utiliser go_router?
Flutter offre un routage puissant avec Navigatoret Navigator 2.0, mais cela peut devenir complexe à gérer dans les applications de grande taille. go_routerrésout ces problèmes en introduisant :

Une API simple pour gérer les routes dynamiques et les paramètres.
Une intégration facile avec le deep linking .
Une gestion automatique des erreurs lors de la navigation.
Un modèle réactif avec support intégré pour les redirections.
Plan du cours sur go_router:
Introduction et installation dego_router
Itinéraire de base avecgo_router
Gestion des paramètres et des arguments de route
Navigation avec des redirections
Gestion des erreurs de routage
Liens profonds avecgo_router
Navigation imbriquée et sous-routes
Transitions et animations avecgo_router
1. Introduction et installation dego_router
Installation
Pour utiliser go_router, vous devez l'ajouter à votre fichier pubspec.yaml:

YAML

Copier le code
dependencies:
  go_router: ^9.0.0
Ensuite, vous devez faire un flutter pub getpour télécharger et installer la bibliothèque.

2. Route de base avecgo_router
Configuration basique
Une application Flutter utilisant go_routercommence par configurer un objet GoRouter, qui définit toutes les routes de votre application.

Exemple simple :
dard

Copier le code
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final GoRouter _router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => HomeScreen(),
      ),
      GoRoute(
        path: '/details',
        builder: (context, state) => DetailsScreen(),
      ),
    ],
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _router,
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Screen'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () => context.go('/details'),
          child: Text('Go to Details'),
        ),
      ),
    );
  }
}

class DetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Details Screen'),
      ),
      body: Center(
        child: Text('Details Page'),
      ),
    );
  }
}
Explication :
GoRouter: L'objet principal qui gère toutes les routes. Vous y définissez les itinéraires via une liste de GoRoute.
context.go: Permet la navigation vers une nouvelle route définie par son chemin ( path).
MaterialApp.router: Utilisé pour définir un routeur basé sur le GoRouter.
3. Gestion des paramètres et des arguments de route
Vous pouvez facilement passer des paramètres dynamiques dans les itinéraires, comme des identifiants d'éléments, en utilisant des paramètres d'URL .

Exemple avec paramètres de route :
dard

Copier le code
GoRoute(
  path: '/details/:id',
  builder: (context, state) {
    final id = state.params['id']; // Récupérer le paramètre d'URL
    return DetailsScreen(id: id);
  },
),
Dans l'écran DetailsScreen , vous récupérez l'ID :

dard

Copier le code
class DetailsScreen extends StatelessWidget {
  final String id;

  DetailsScreen({required this.id});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Details for item $id'),
      ),
      body: Center(
        child: Text('Details Page for item $id'),
      ),
    );
  }
}