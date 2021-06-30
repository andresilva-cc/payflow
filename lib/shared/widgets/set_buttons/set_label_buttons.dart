import 'package:flutter/material.dart';
import 'package:payflow/shared/themes/app_colors.dart';
import 'package:payflow/shared/widgets/divider/divider_widget.dart';
import 'package:payflow/shared/widgets/label_button/label_button.dart';

class SetLabelButtons extends StatelessWidget {
  final String primaryLabel;
  final VoidCallback primaryOnPressed;
  final String secondaryLabel;
  final VoidCallback secondaryOnPressed;
  final bool enablePrimaryColor;
  final bool enableSecondaryColor;
  const SetLabelButtons({
    Key? key,
    required this.primaryLabel,
    required this.primaryOnPressed,
    required this.secondaryLabel,
    required this.secondaryOnPressed,
    this.enablePrimaryColor = false,
    this.enableSecondaryColor = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        color: AppColors.background,
        height: 57,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Divider(
              thickness: 1,
              height: 1,
              color: AppColors.stroke,
            ),
            Container(
              height: 56,
              child: Row(
                children: [
                  if (enablePrimaryColor) ...[
                    LabelButton.primary(
                      label: primaryLabel,
                      onPressed: primaryOnPressed,
                    ),
                  ] else ...[
                    LabelButton.heading(
                      label: primaryLabel,
                      onPressed: primaryOnPressed,
                    ),
                  ],
                  DividerWidget(
                    height: 56,
                  ),
                  if (enableSecondaryColor) ...[
                    LabelButton.primary(
                      label: secondaryLabel,
                      onPressed: secondaryOnPressed,
                    ),
                  ] else ...[
                    LabelButton.heading(
                      label: secondaryLabel,
                      onPressed: secondaryOnPressed,
                    ),
                  ],
                ],
              ),
            ),
          ],
        ));
  }
}
