import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';

import '../../../domain/models/current_covid_model.dart';
import '../../../shared/components/error_component.dart';
import '../../../shared/components/loading_component.dart';
import '../../../shared/utils/constraints.dart';
import 'covid_item_component.dart';
import '../bloc/home_bloc.dart';

class InfoCurrentCovidComponent extends StatefulWidget {
  const InfoCurrentCovidComponent({super.key});

  @override
  State<InfoCurrentCovidComponent> createState() =>
      _InfoCurrentCovidComponentState();
}

class _InfoCurrentCovidComponentState extends State<InfoCurrentCovidComponent> {
  HomeBloc homeBloc = Modular.get();

  @override
  void initState() {
    homeBloc.add(const GetCurrentCovid());

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16).copyWith(top: 60),
      height: MediaQuery.sizeOf(context).height,
      width: MediaQuery.sizeOf(context).width,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.secondary,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(45),
          topRight: Radius.circular(45),
        ),
      ),
      child: BlocBuilder<HomeBloc, HomeState>(
        bloc: homeBloc,
        builder: (context, state) {
          if (state is HomeLoadingState) {
            return const LoadingComponent();
          }

          if (state is HomeErrorState) {
            return const ErrorComponent();
          }

          if (state is HomeSuccessState) {
            CurrentCovidModel item = state.currentCovidModel.first;
            DateTime date = convertedDate(item.date ?? 0);

            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Fecha Recoleccíon Datos: ${dateFormater(date)}',
                  style: TextStyle(
                    fontSize: 12,
                    color: Theme.of(context).colorScheme.onPrimary,
                  ),
                ),
                const SizedBox(height: 30),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 14),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CovidItemComponent(
                        data: formatNumber(item.totalTestResults ?? 0),
                        subtitle: 'Casos totales',
                      ),
                      CovidItemComponent(
                        data: formatNumber(item.positive ?? 0),
                        subtitle: 'Casos confirmados',
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 12),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 14),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CovidItemComponent(
                        data: formatNumber(item.negative ?? 0),
                        subtitle: 'Casos totales',
                      ),
                      CovidItemComponent(
                        data: formatNumber(item.death ?? 0),
                        subtitle: 'Casos confirmados',
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 12),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 14),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CovidItemComponent(
                        data: formatNumber(item.pending ?? 0),
                        subtitle: 'Casos totales',
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 40),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 14),
                  child: Text(
                    'El proyecto COVID Tracking ha finalizado toda recopilación de datos a partir del 7 de marzo de 2021”',
                    style: TextStyle(
                      fontSize: 12,
                      color: Theme.of(context).colorScheme.onPrimary,
                    ),
                  ),
                ),
              ],
            );
          }

          return Container();
        },
      ),
    );
  }
}
