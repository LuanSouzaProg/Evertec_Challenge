import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';

import '../bloc/region_details_bloc.dart';

class RegionDetailsPage extends StatefulWidget {
  final String state;

  const RegionDetailsPage({super.key, required this.state});

  @override
  State<RegionDetailsPage> createState() => _RegionDetailsPageState();
}

class _RegionDetailsPageState extends State<RegionDetailsPage> {
  RegionDetailsBloc regionDetailsBloc = Modular.get();

  @override
  void initState() {
    regionDetailsBloc.add(GetRegionDetails(widget.state));

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
      ),
      body: Center(
        child: Text(widget.state),
      ),
    );
  }
}
