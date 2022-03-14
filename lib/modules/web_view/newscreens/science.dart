
import 'package:first/layout/news/cubit/cubit.dart';
import 'package:first/layout/news/cubit/states.dart';
import 'package:first/shared/components/component.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
class Science extends StatelessWidget {
  const Science({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<NewsCubit,NewsStates>
      (
        listener: (context,state){},
        builder: (context,state){
          var artical=NewsCubit.get(context).science;
          return NewsArticales(artical,context);

        });

  }
}
