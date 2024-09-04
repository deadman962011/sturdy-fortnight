import 'package:flutter/material.dart';
import 'package:shamel_store_app/common/widgets/custom_asset_image_widget.dart';
import 'package:shamel_store_app/util/dimensions.dart';
import 'package:shamel_store_app/util/styles.dart';

class BillingInfoWidget extends StatelessWidget {
  final String imageIcon;
  final String title;
  final String value;
  const BillingInfoWidget({super.key, required this.imageIcon, required this.title, required this.value});

  @override
  Widget build(BuildContext context) {
    return Row(children: [

      CustomAssetImageWidget(
        imageIcon,
        width: 30, height: 30,
      ),
      const SizedBox(width: Dimensions.paddingSizeExtraLarge),

      Column(crossAxisAlignment: CrossAxisAlignment.start, children: [

        Text(title, style: robotoRegular.copyWith(fontSize: Dimensions.fontSizeSmall, color: Theme.of(context).disabledColor)),
        const SizedBox(height: Dimensions.paddingSizeExtraSmall),

        Text(value, style: robotoMedium.copyWith(fontSize: Dimensions.fontSizeLarge)),

      ]),

    ]);
  }
}