import 'package:animate_do/animate_do.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:movies_app/features/movies/presentation/controller/movies_cubit.dart';

import '../../../../core/network/api_constants.dart';
import '../../../../core/utils/dummy.dart';
import '../../../../core/utils/values_manager.dart';

class NowPlayingComponent extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

        return BlocBuilder<MoviesCubit,MoviesState>(
          builder: (context,state){
            var cubit= BlocProvider.of<MoviesCubit>(context);
            return CarouselSlider(
              options: CarouselOptions(
                  autoPlay: true,
                  height: AppSize.s289,
                  viewportFraction: 1),
              items:cubit.nowPlayingMovies.map((i) {
                return GestureDetector(
                  child: BounceInLeft(duration: Duration(milliseconds: 500),
                    child: Stack(
                      children: [
                        CachedNetworkImage(height: AppSize.s217,fit: BoxFit.cover ,
                          imageUrl:  ApiConstants.imageUrl(i.backdropPath),
                          progressIndicatorBuilder: (context, url, downloadProgress) =>
                              Center(child: CircularProgressIndicator(value: downloadProgress.progress)),
                          errorWidget: (context, url, error) => Icon(Icons.error),
                        ),
                        Align(alignment: Alignment.center,
                            child: SvgPicture.asset('assets/images/play_icon.svg')),
                        SizedBox(
                          height: AppSize.s12,
                        ),
                        Container(
                          margin: EdgeInsets.only(left:170,top:230 ),
                          child: Column(
                            crossAxisAlignment:
                            CrossAxisAlignment.start,
                            children: [
                              Text(
                                i.title,
                                style: Theme.of(context).textTheme.headlineMedium,
                              ),
                              SizedBox(
                                height: AppSize.s8,
                              ),
                              Text(
                                i.relaseDate,
                                style: Theme.of(context).textTheme.bodySmall,
                              )
                            ],
                          ),
                        ),
                        Column(
                          children: [
                            SizedBox(
                              height: AppSize.s90,
                            ),
                            Container(
                              height: AppSize.s199,
                              width: AppSize.s129,
                              margin: EdgeInsets.only(left: AppMargin.m22),
                              child: Material(
                                elevation: AppSize.s20,
                                child:CachedNetworkImage(fit: BoxFit.cover,
                                  imageUrl:ApiConstants.imageUrl(i.backdropPath) ,
                                  placeholder: (context, url) => Center(child: CircularProgressIndicator()),
                                  errorWidget: (context, url, error) => Icon(Icons.error),
                                ),
                                // child: Image(
                                //   image: NetworkImage(
                                //     ApiConstants.imageUrl(i.backdropPath),
                                //   ),
                                //   fit: BoxFit.cover,
                                // ),

                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                );
              }).toList(),
            );
          },

        );
      }




}