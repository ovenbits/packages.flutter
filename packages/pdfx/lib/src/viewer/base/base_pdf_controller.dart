import 'package:flutter/widgets.dart';

mixin BasePdfController {
  ValueNotifier<PdfLoadingState> get loadingState;

  ValueNotifier<int> get pageListenable;
  int get page;
  int? get pagesCount;

  void dispose();

  Future<void> animateToPage({
    required int pageNumber,
    double? padding,
    Duration duration = const Duration(milliseconds: 500),
    Curve curve = Curves.easeInOut,
  });
}

enum PdfLoadingState {
  loading,
  error,
  success,
}
