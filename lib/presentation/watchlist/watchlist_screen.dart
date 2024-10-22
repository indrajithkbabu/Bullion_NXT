import 'package:bullionnxtnew/bloc/watchlist/watch_list_bloc.dart';
import 'package:bullionnxtnew/helpers/app_colors.dart';
import 'package:bullionnxtnew/helpers/app_values.dart';
import 'package:bullionnxtnew/helpers/commons/common_functions.dart';
import 'package:bullionnxtnew/presentation/home/filters/filter_bar.dart';
import 'package:bullionnxtnew/presentation/home/market_price_card_section/price_overview_panel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class WatchlistScreen extends StatelessWidget {
  const WatchlistScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: BlocBuilder<WatchListBloc, WatchListState>(
      builder: (watchListContext, watchListState) {
        return Column(
          children: [
            Stack(
              children: [
                Container(
                  height: AppValues.containerHeightVeryLarge,
                  width: double.infinity,
                  color: AppColors.primary,
                ),
                const Positioned(
                  bottom: 15,
                  left: 15,
                  right: 15,
                  child: PriceOverviewPanel(),
                ),
              ],
            ),
            const FilterBar(),
            watchListState.wholeSaleGoldDealerList.isEmpty
                ? const Expanded(
                    child: Center(
                    child: Text('No Watchlist added'),
                  ))
                : Expanded(
                    flex: 14,
                    child: ListView.builder(
                      itemCount: watchListState.wholeSaleGoldDealerList.length,
                      itemBuilder: (context, index) {
                        final dealer =
                            watchListState.wholeSaleGoldDealerList[index];
                        //change to each Item widget
                        return Container(
                          // color: AppColors.green,
                          margin: const EdgeInsets.symmetric(
                              vertical: 8.0, horizontal: 5),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 15, horizontal: 15),
                            child: Column(
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Expanded(
                                      flex: 2,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            dealer.name,
                                            style: Theme.of(context)
                                                .textTheme
                                                .titleSmall!
                                                .copyWith(
                                                  color: AppColors.black,
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                          Commons.gapMinute(),
                                          Text(
                                            dealer.contact,
                                            style: Theme.of(context)
                                                .textTheme
                                                .titleSmall!
                                                .copyWith(
                                                  color: AppColors.grey,
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                        ],
                                      ),
                                    ),
                                    Expanded(
                                      flex: 2,
                                      child: Text(
                                        dealer.goldWeight,
                                        style: Theme.of(context)
                                            .textTheme
                                            .titleSmall!
                                            .copyWith(
                                              color: AppColors.primary,
                                              fontSize: 14,
                                              fontWeight: FontWeight.w500,
                                            ),
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                    Expanded(
                                      child: Text(
                                        dealer.deliveryPeriod,
                                        style: Theme.of(context)
                                            .textTheme
                                            .titleSmall!
                                            .copyWith(
                                              color: AppColors.cadetBlue,
                                              fontSize: 14,
                                              fontWeight: FontWeight.w500,
                                            ),
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                    Expanded(
                                      flex: 1,
                                      child: Center(
                                        child: Text(
                                          dealer.highPrice,
                                          style: Theme.of(context)
                                              .textTheme
                                              .titleSmall!
                                              .copyWith(
                                                color: AppColors.red,
                                                fontSize: 14,
                                                fontWeight: FontWeight.w500,
                                              ),
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      flex: 1,
                                      child: Center(
                                        child: Text(
                                          dealer.lowPrice,
                                          style: Theme.of(context)
                                              .textTheme
                                              .titleSmall!
                                              .copyWith(
                                                color: AppColors.green,
                                                fontSize: 14,
                                                fontWeight: FontWeight.w500,
                                              ),
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                const Divider(),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
          ],
        );
      },
    ));
  }
}
