import 'package:bloc_instance/core/bloc/selctcheckbox_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: List.generate(10, (index) => SAMPLEONE()),
          ),
        ),
      ),
    );
  }
}

class SAMPLEONE extends StatelessWidget {
  const SAMPLEONE({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    // Create a unique BLoC instance for each SAMPLEONE widget
    final selctcheckboxBloc = SelctcheckboxBloc();

    return Column(
      children: [
        BlocBuilder<SelctcheckboxBloc, SelctcheckboxState>(
          bloc: selctcheckboxBloc,
          builder: (context, state) {
            return Row(
              children: [
                Checkbox(
                  value: state.first,
                  onChanged: (_) {
                    selctcheckboxBloc
                        .add(const SelctcheckboxEvent.firstcheck());
                  },
                ),
                Checkbox(
                  value: state.second,
                  onChanged: (_) {
                    selctcheckboxBloc
                        .add(const SelctcheckboxEvent.secondcheck());
                  },
                ),
                Checkbox(
                  value: state.third,
                  onChanged: (_) {
                    selctcheckboxBloc
                        .add(const SelctcheckboxEvent.thirdcheck());
                  },
                ),
              ],
            );
          },
        )
      ],
    );
  }
}
