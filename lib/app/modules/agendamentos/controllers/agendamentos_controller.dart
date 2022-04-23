// ignore_for_file: unnecessary_overrides, unused_local_variable
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:hospital_maraba/app/data/database.dart';
import 'package:hospital_maraba/app/models/agendamento.dart';
import 'package:hospital_maraba/app/models/especialidade.dart';
import 'package:hospital_maraba/app/models/local.dart';
import 'package:hospital_maraba/app/widgets/radio_box.dart';

class AgendamentosController extends GetxController {
  final count = 0.obs;
  DatabaseService databaseService = Get.find<DatabaseService>();
  Future<List<Local>> allLocais = Get.find<DatabaseService>().getAllLocais();

  List<Especialidade> especialidades = [];
  RadioBox? selectedEspecialidade;
  RadioBox? selectedLocal;

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() async {
    await allLocais;
    super.onReady();
  }

  Future<void> getData() async {}

  Future<void> createAgendamento() async {
    Agendamento newAgendamento = Agendamento(
      paciente: databaseService.userDataCollectionRef
          .doc(FirebaseAuth.instance.currentUser?.uid),
      local: databaseService.locaisCollectionRef
          .doc(selectedLocal?.selectedItem?.id as String),
      especialidade: databaseService.especialidadesCollectionRef
          .doc(selectedEspecialidade?.selectedItem?.id as String),
      agendadoEm: DateTime.now(),
      agendadoPara: DateTime.now(), // TODO: Specify datetime,
      agendadoPor: databaseService.userDataCollectionRef
          .doc(FirebaseAuth.instance.currentUser?.uid),
      estadoAgendamento: EstagioDoAgendamento.marcado,
    );
    return Get.find<DatabaseService>().createAgendamento(newAgendamento);
  }

  Future<List<Local>> getAllLocaisWithSelectedEspecialidade() async {
    print("Call por locais");
    return databaseService
        .getAllLocaisWithEspecialidade(selectedEspecialidade!.selectedItem!.id);
  }

  Future<List<Especialidade>> getAllEspecialidades() async {
    return databaseService.getAllEspecialidades();
  }
}
