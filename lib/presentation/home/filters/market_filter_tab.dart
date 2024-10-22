import 'package:bullionnxtnew/bloc/home/home_screen/home_bloc.dart';
import 'package:bullionnxtnew/helpers/app_colors.dart';
import 'package:bullionnxtnew/presentation/home/filters/market_tab_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MarketFilterTab extends StatefulWidget {
  const MarketFilterTab({super.key});

  @override
  MarketFilterTabState createState() => MarketFilterTabState();
}

class MarketFilterTabState extends State<MarketFilterTab> {
  final List<String> marketTabs = [
    '999 IND',
    '999 IMP',
    '995 IMP',
    '995 IND',
    '999.9 IND',
    '999.9 IMP',
  ];

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 2,
          child: Container(
            height: 30,
            padding: const EdgeInsets.symmetric(horizontal: 15),
            decoration: BoxDecoration(
                color: AppColors.cadetBlue,
                borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(30),
                    bottomRight: Radius.circular(30))),
            child: const Center(
              child: Text(
                'Market',
                textAlign: TextAlign.start,
              ),
            ),
          ),
        ),
        Expanded(
          flex: 6,
          child: SizedBox(
            height: 25,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: marketTabs.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    context.read<HomeBloc>().add(MarketFilterTabSelectionEvent(
                        selectedMarketTabIndex: index));
                  },
                  child: BlocBuilder<HomeBloc, HomeState>(
                    builder: (homeContext, homeState) {
                      final isSelected = homeState.selectedIndex == index;
                      return MarketTabItem(
                        text: marketTabs[index],
                        isSelected: isSelected,
                      );
                    },
                  ),
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
