import 'package:flutter_bloc/flutter_bloc.dart';

import '../../utils/utils.dart';

class MainCubitObserver extends BlocObserver {
  @override
  void onChange(BlocBase bloc, Change change) {
    // Utils.log('General change: $change');
    super.onChange(bloc, change);
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    Utils.log('MainCubitObserver', error);
    super.onError(bloc, error, stackTrace);
  }
}
