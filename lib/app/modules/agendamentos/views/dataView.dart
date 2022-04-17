import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:hospital_maraba/app/models/radioItem.dart';
import 'package:hospital_maraba/app/modules/scheduleDesign.dart';
import 'package:hospital_maraba/app/utils/color_theme.dart';
import 'package:hospital_maraba/app/utils/common.sizes.dart';
import 'package:hospital_maraba/app/widgets/radioBox.dart';

import '../../../widgets/input_text.dart';
import '../../MainDesign.dart';
import '../controllers/agendamentos_controller.dart';

class DataView extends GetView<AgendamentosController> {
  @override
  Widget build(BuildContext context) {
    List<Widget> itemList = [
      Padding(
        padding: EdgeInsets.symmetric(vertical: 10),
        child: Text(
          "Selecione A Data de Atendimento:",
          style: TextStyle(
              color: cardGray,
              fontWeight: FontWeight.bold,
              fontSize: titleFontSize / context.textScaleFactor),
        ),
      ),
      RadioBox(
        icon: Icon(Icons.local_activity),
        items: [RadioItem(title: "Teste", description: "testando", id: 0)],
      )
    ];
    return ScheduleDesign(
      onPressed: () {},
      actionText: "Agendar Consulta",
      body: itemList,
      appBarContent: CustomInputText(
        height: 50,
        hintText: "Pesquisar Data",
        icon: Icon(Icons.search),
      ),
    );
  }
}