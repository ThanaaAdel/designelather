import 'package:designelather/features/details_of_the_requested_request_view/presentaion/details_of_the_requested_request_view.dart';
import 'package:go_router/go_router.dart';



abstract class AppRouter {

  static const kHomeView = '/homeView';

  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const DetailsOfTheRequestedRequestView(),
      ),


    ],
  );
}
