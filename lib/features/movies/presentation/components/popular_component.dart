import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:movies_app/core/utils/assets_manager.dart';
import 'package:movies_app/features/movies/presentation/controller/movies_cubit.dart';

import '../../../../core/network/api_constants.dart';
import '../../../../core/utils/colors_manager.dart';
import '../../../../core/utils/dummy.dart';
import '../../../../core/utils/strings_manager.dart';
import '../../../../core/utils/values_manager.dart';
import 'package:cached_network_image/cached_network_image.dart';

class PopularComponent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MoviesCubit, MoviesState>(
      builder: (context, state) {
        var cubit = BlocProvider.of<MoviesCubit>(context);
        return Container(
          color: ColorManager.sectionBackGround,
          height: AppSize.s190,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: AppSize.s14,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: AppMargin.m19),
                child: Row(
                  children: [
                    Text(
                      AppStrings.popular,
                      style: Theme.of(context).textTheme.displayMedium,
                    ),
                    Spacer(),
                    Text(
                      AppStrings.seeMore,
                      style: Theme.of(context).textTheme.labelMedium,
                    ),
                    SizedBox(
                      width: AppSize.s4,
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      size: AppSize.s16,
                      color: ColorManager.white,
                    )
                  ],
                ),
              ),
              SizedBox(
                height: AppSize.s12,
              ),
              FadeIn(
                child: Container(
                  height: AppSize.s130,
                  margin: EdgeInsets.only(left: AppMargin.m19),
                  child: ListView.separated(
                      physics: BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (conetxt, index) {
                        return Stack(
                          children: [
                            CachedNetworkImage(width:97,height: 120 ,fit: BoxFit.cover,
                              imageUrl: ApiConstants.imageUrl(cubit.popularMovies[index].backdropPath),
                              progressIndicatorBuilder: (context, url, downloadProgress) =>
                                  Center(child: CircularProgressIndicator(value: downloadProgress.progress)),
                              errorWidget: (context, url, error) => Icon(Icons.error),
                            ),
                            Align(
                                alignment: Alignment.topLeft,
                                child: SvgPicture.asset(
                                ImageAsset.addToList,
                                  height: 36,
                                  width: 27,
                                )),
                          ],
                        );
                      },
                      separatorBuilder: (context, index) => SizedBox(
                            width: AppSize.s14,
                          ),
                      itemCount: cubit.popularMovies.length),
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
