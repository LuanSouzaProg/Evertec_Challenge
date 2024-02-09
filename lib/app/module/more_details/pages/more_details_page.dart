import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:pay_smart_challenge/app/shared/utils/constraints.dart';
import 'package:pay_smart_challenge/app/shared/utils/flag_mapper.dart';

import '../bloc/more_details_bloc.dart';

class MoreDetailsPage extends StatefulWidget {
  const MoreDetailsPage({super.key});

  @override
  State<MoreDetailsPage> createState() => _MoreDetailsPageState();
}

class _MoreDetailsPageState extends State<MoreDetailsPage> {
  MoreDetailsBloc moreDetailsBloc = Modular.get();

  @override
  void initState() {
    moreDetailsBloc.add(const GetMoreDetails());

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detalhes por región'),
      ),
      body: BlocBuilder<MoreDetailsBloc, MoreDetailsState>(
        bloc: moreDetailsBloc,
        builder: (context, state) {
          if (state is MoreDetailSuccessState) {
            var list = state.detailsRegions;

            return ListView.builder(
              itemCount: list.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 18)
                      .copyWith(bottom: 12),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.primaryContainer,
                      border: Border.all(),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              CircleAvatar(
                                backgroundImage: AssetImage(
                                    'assets/imgs/flags/Flag_of_${FlagHelper.getFlag(
                                  list[index].state ?? '',
                                )}'),
                              ),
                              const SizedBox(width: 8),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    list[index].name ?? '',
                                    style: const TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    formatNumber(list[index].positive ?? 0),
                                    style: const TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    dateFormaterRegion(
                                        list[index].lastUpdateEt ?? ''),
                                    style: const TextStyle(
                                      fontSize: 12,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const Icon(Icons.arrow_forward_ios_rounded),
                        ],
                      ),
                    ),
                  ),
                );
              },
            );
          }
          if (state is MoreDetailErrorState) {
            return Container();
          }
          if (state is MoreDetailLoadingState) {
            return Container();
          }

          return Container();
        },
      ),
    );
  }
}
