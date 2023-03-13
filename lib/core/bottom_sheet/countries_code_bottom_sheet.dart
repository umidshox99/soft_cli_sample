import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../constants/countries_code.dart';
import '../functions/app_functions.dart';
import '../theme/theme.dart';

class CountriesCodeBottomSheet extends StatelessWidget {
  final List<Country> countries;
  final Country currentCountry;
  const CountriesCodeBottomSheet({Key? key, required this.countries, required this.currentCountry}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = ScrollController(initialScrollOffset: Sizes.dimen_56 * currentCountry.index!);
    return SizedBox(
      height: AppFunctions.height(context) / 2,
      child: ListView.builder(
        itemCount: countries.length,
        controller: controller,
        padding: const EdgeInsets.symmetric(vertical: Sizes.dimen_16),
        itemBuilder: (_, index){
          return ListTile(
            onTap: (){
                Navigator.of(context).pop(countries[index]..index = index);
            },
            leading: CachedNetworkImage(
              imageUrl: countries[index].link!,
              height: Sizes.dimen_24,
              width: Sizes.dimen_32,
            ),
            trailing: Visibility(
              visible: currentCountry.id == countries[index].id,
              child: const Icon(
                Icons.done,
                color: AppColor.assets,
              ),
            ),
            title: Text("${countries[index].countryName?.nameUz}",
              style: AppTextStyle.style400font12.copyWith(
                fontSize: Sizes.dimen_14,
                color: AppColor.assets,
              ),
            ),
          );
        },
      ),
    );
  }
}
