import 'package:bullionnxtnew/bloc/watchlist/watch_list_bloc.dart';
import 'package:bullionnxtnew/helpers/app_colors.dart';
import 'package:bullionnxtnew/helpers/app_values.dart';
import 'package:bullionnxtnew/helpers/commons/common_functions.dart';
import 'package:bullionnxtnew/presentation/home/filters/filter_bar.dart';
import 'package:bullionnxtnew/presentation/home/filters/market_filter_tab.dart';
import 'package:bullionnxtnew/presentation/home/market_price_card_section/price_overview_panel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatelessWidget {
  final List<WholeSaleGoldDealers> wholeSaleGoldDealerList = [
    WholeSaleGoldDealers(
        name: 'Ambika',
        contact: '789456123',
        goldWeight: '100',
        deliveryPeriod: '5',
        highPrice: '2007',
        lowPrice: '2000'),
    WholeSaleGoldDealers(
        name: 'ABC',
        contact: '789456123',
        goldWeight: '200',
        deliveryPeriod: '1',
        highPrice: '2062',
        lowPrice: '2002'),
    WholeSaleGoldDealers(
        name: 'PQR',
        contact: '789456123',
        goldWeight: '200',
        deliveryPeriod: '5',
        highPrice: '2007',
        lowPrice: '2000'),
    WholeSaleGoldDealers(
        name: 'XYZ',
        contact: '789456123',
        goldWeight: '500',
        deliveryPeriod: '5',
        highPrice: '2007',
        lowPrice: '2000'),
    WholeSaleGoldDealers(
        name: 'PQR',
        contact: '789456123',
        goldWeight: '1000',
        deliveryPeriod: '5',
        highPrice: '2007',
        lowPrice: '2000'),
    WholeSaleGoldDealers(
        name: 'XYZ',
        contact: '789456123',
        goldWeight: '2000',
        deliveryPeriod: '5',
        highPrice: '2007',
        lowPrice: '2000.255'),
    WholeSaleGoldDealers(
        name: 'Ambika',
        contact: '789456123',
        goldWeight: '100',
        deliveryPeriod: '5',
        highPrice: '2007',
        lowPrice: '2000'),
    WholeSaleGoldDealers(
        name: 'ABC',
        contact: '789456123',
        goldWeight: '200',
        deliveryPeriod: '1',
        highPrice: '2062',
        lowPrice: '2002'),
    WholeSaleGoldDealers(
        name: 'PQR',
        contact: '789456123',
        goldWeight: '200',
        deliveryPeriod: '5',
        highPrice: '2007',
        lowPrice: '2000'),
    WholeSaleGoldDealers(
        name: 'XYZ',
        contact: '789456123',
        goldWeight: '500',
        deliveryPeriod: '5',
        highPrice: '2007',
        lowPrice: '2000'),
    WholeSaleGoldDealers(
        name: 'PQR',
        contact: '789456123',
        goldWeight: '1000',
        deliveryPeriod: '5',
        highPrice: '2007',
        lowPrice: '2000'),
    WholeSaleGoldDealers(
        name: 'XYZ',
        contact: '789456123',
        goldWeight: '2000',
        deliveryPeriod: '5',
        highPrice: '2007',
        lowPrice: '2000.255'),
  ];

   HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
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
            Expanded(
              flex: 14,
              child: ListView.builder(
                itemCount: wholeSaleGoldDealerList.length,
                itemBuilder: (context, index) {
                  final dealer = wholeSaleGoldDealerList[index];
                  //change to each Item widget
                  return GestureDetector(
                    onLongPress: () {
                      showAddToWatchlistBottomSheet(context, dealer);
                    },
                    child: Container(
                      // color: Colors.amber,
                      margin: const EdgeInsets.symmetric(
                          vertical: 8.0, horizontal: 5),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 15, horizontal: 15),
                        child: Column(
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                    ),
                  );
                },
              ),
            ),
            const Expanded(
              flex: 1,
              child: MarketFilterTab(),
            ),
          ],
        ),
      ),
    );
  }

  void showAddToWatchlistBottomSheet(
      BuildContext ctx, WholeSaleGoldDealers dealer) {
    showModalBottomSheet(
      context: ctx,
      builder: (BuildContext context) {
        return Container(
          padding: const EdgeInsets.all(10),
          child: ListTile(
            title: const Text(
              'Add to Watchlist',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            onTap: () {
              // Add dealer to the watchlist
              // addToWatchlist(dealer);
              ctx
                  .read<WatchListBloc>()
                  .add(AddToWatchlistEvent(dealer: dealer));
              // Show feedback using SnackBar
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text('${dealer.name} added to watchlist'),
                  duration: const Duration(seconds: 2),
                  backgroundColor: AppColors.green,
                ),
              );

              Navigator.of(context).pop(); // Close the bottom sheet
            },
          ),
        );
      },
    );
  }
}

class WholeSaleGoldDealers {
  final String name;
  final String contact;
  final String goldWeight;
  final String deliveryPeriod;
  final String highPrice;
  final String lowPrice;

  WholeSaleGoldDealers(
      {required this.name,
      required this.contact,
      required this.goldWeight,
      required this.deliveryPeriod,
      required this.highPrice,
      required this.lowPrice});
}
