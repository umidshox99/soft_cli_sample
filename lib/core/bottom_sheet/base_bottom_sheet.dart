import 'package:flutter/material.dart';

import '../constants/countries_code.dart';
import '../theme/theme.dart';
import 'countries_code_bottom_sheet.dart';
import 'image_bottom_sheet.dart';

mixin BaseBottomSheet {
  Future<Country?> showCountriesCodeSheet(BuildContext context,
      List<Country> countries, Country currentCountry) async {
    return await showModalBottomSheet(
      context: context,
      builder: (_) {
        return CountriesCodeBottomSheet(
            countries: countries, currentCountry: currentCountry);
      },
      backgroundColor: AppColor.black,
      shape: const RoundedRectangleBorder(
        borderRadius:
            BorderRadius.vertical(top: Radius.circular(Sizes.dimen_16)),
      ),
    );
  }

  Future<void> showBottomImage(BuildContext context) async {
    return await showModalBottomSheet(
      context: context,
      backgroundColor: AppColor.background,
      useRootNavigator: true,
      shape: const RoundedRectangleBorder(
        borderRadius:
            BorderRadius.vertical(top: Radius.circular(Sizes.dimen_12)),
      ),
      isScrollControlled: true,
      builder: (context) => const BottomSheetImageWidget(),
    );
  }
}
