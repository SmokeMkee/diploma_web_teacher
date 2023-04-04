import 'package:diploma_web_teacher/src/features/init/dependencies_provider/widgets/blocs_provider.dart';
import 'package:flutter/material.dart';

import 'widgets/repos_provider.dart';

class DependenciesProvider extends StatelessWidget {
  const DependenciesProvider({super.key, required this.builder});

  final Widget Function(BuildContext context) builder;

  @override
  Widget build(BuildContext context) {
    return ReposProvider(
      child: BlocsProvider(
        child: Builder(builder: builder),
      ),
    );
  }
}
