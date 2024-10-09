
import 'package:flutter/material.dart';
import 'package:fluttrfly/fluttrfly.dart';
import 'package:fluttrfly/styles/sizes.dart';
import 'package:fluttrfly/widgets/container_x.dart';
import 'package:fluttrfly/widgets/scaffold_x.dart';

class KnowYourColors extends StatelessWidget {
  const KnowYourColors({super.key});

  @override
  Widget build(BuildContext context) {
    final ColorScheme sc = CFunS().cS(context);
    return ScaffoldX(
      appBarLeading: const Icon(Icons.color_lens),
      title: 'Know Your Colors',
      wantLeading: true,
      titleCenter: true,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: [
            baseContainer(context, sc.error, 'Error Color'),
            baseContainer(context, sc.errorContainer, 'errorContainer'),
            baseContainer(context, sc.inversePrimary, 'inversePrimary'),
            baseContainer(context, sc.inverseSurface, 'inverseSurface'),
            baseContainer(context, sc.onError, 'onError'),
            baseContainer(context, sc.onErrorContainer, 'onErrorContainer'),
            baseContainer(context, sc.onInverseSurface, 'onInverseSurface'),
            baseContainer(context, sc.onPrimary, 'onPrimary'),
            baseContainer(context, sc.onPrimaryContainer, 'onPrimaryContainer'),
            baseContainer(context, sc.onPrimaryFixed, 'onPrimaryFixed'),
            baseContainer(
                context, sc.onPrimaryFixedVariant, 'onPrimaryFixedVariant'),
            baseContainer(context, sc.onSecondary, 'onSecondary'),
            baseContainer(
                context, sc.onSecondaryContainer, 'onSecondaryContainer'),
            baseContainer(context, sc.onSecondaryFixed, 'onSecondaryFixed'),
            baseContainer(
                context, sc.onSecondaryFixedVariant, 'onSecondaryFixedVariant'),
            baseContainer(context, sc.onSurface, 'onSurface'),
            baseContainer(context, sc.onSurfaceVariant, 'onSurfaceVariant'),
            baseContainer(context, sc.onTertiary, 'onTertiary'),
            baseContainer(
                context, sc.onTertiaryContainer, 'onTertiaryContainer'),
            baseContainer(context, sc.onTertiaryFixed, 'onTertiaryFixed'),
            baseContainer(
                context, sc.onTertiaryFixedVariant, 'onTertiaryFixedVariant'),
            baseContainer(context, sc.outline, 'outline'),
            baseContainer(context, sc.outlineVariant, 'outlineVariant'),
            baseContainer(context, sc.primary, 'primary'),
            baseContainer(context, sc.primaryContainer, 'primaryContainer'),
            baseContainer(context, sc.primaryFixed, 'primaryFixed'),
            baseContainer(context, sc.primaryFixedDim, 'primaryFixedDim'),
            baseContainer(context, sc.scrim, 'scrim'),
            baseContainer(context, sc.secondary, 'secondary'),
            baseContainer(context, sc.secondaryContainer, 'secondaryContainer'),
            baseContainer(context, sc.secondaryFixed, 'onSecondaryFixed'),
            baseContainer(context, sc.secondaryFixedDim, 'secondaryFixedDim'),
            baseContainer(context, sc.shadow, 'shadow'),
            baseContainer(context, sc.surface, 'surface'),
            baseContainer(context, sc.surfaceBright, 'surfaceBright'),
            baseContainer(context, sc.surfaceContainer, 'surfaceContainer'),
            baseContainer(
                context, sc.surfaceContainerHigh, 'surfaceContainerHigh'),
            baseContainer(
                context, sc.surfaceContainerHighest, 'surfaceContainerHighest'),
            baseContainer(
                context, sc.surfaceContainerLow, 'surfaceContainerLow'),
            baseContainer(
                context, sc.surfaceContainerLowest, 'surfaceContainerLowest'),
            baseContainer(context, sc.surfaceDim, 'surfaceDim'),
            baseContainer(context, sc.surfaceTint, 'surfaceTint'),
            baseContainer(context, sc.tertiary, 'tertiary'),
            baseContainer(context, sc.tertiaryContainer, 'tertiaryContainer'),
            baseContainer(context, sc.tertiaryFixed, 'tertiaryFixed'),
            baseContainer(context, sc.tertiaryFixedDim, 'tertiaryFixedDim'),
            baseContainer(context, sc.background, 'background'),
            baseContainer(context, sc.onBackground, 'onBackground'),
            baseContainer(context, sc.surfaceVariant, 'surfaceVariant'),
            ContainerX(
                child: SizedBox(
              height: 200,
              width: MediaQuery.sizeOf(context).width,
            )),
            baseContainer(context, ColorX.instance.shad.e10(context), 'shade10'),
            baseContainer(context, ColorX.instance.shad.e20(context), 'shade20'),
            baseContainer(context, ColorX.instance.shad.e30(context), 'shade30'),
            baseContainer(context, ColorX.instance.shad.e40(context), 'shade40'),
            baseContainer(context, ColorX.instance.shad.e50(context), 'shade50'),
            baseContainer(context, ColorX.instance.shad.e60(context), 'shade60'),
            baseContainer(
                context, ColorX.instance.shad.eBright(context), 'shadeBright'),
            gapH12,
            baseContainer(
                context, ColorX.instance.shad.eSw2060(context), 'shadeSw2060'),
          ],
        ),
      ),
    );
  }

  Container baseContainer(BuildContext context, Color color, String title) {
    return Container(
      width: MediaQuery.sizeOf(context).width,
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.all(10),
      color: color,
      child: Center(
        child: Text(title),
      ),
    );
  }
}
