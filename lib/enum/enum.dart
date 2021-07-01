import 'package:vtrakh/core.dart';

enum VehiclesStatus {
  RUNNING,
  IDLE,
  NO_RESPONE,
  STOP,
}

extension CatExtension on VehiclesStatus {
  VehiclesStatusModel get status {
    switch (this) {
      case VehiclesStatus.RUNNING:
        return VehiclesStatusModel(cPrimary, 'Running');
      case VehiclesStatus.IDLE:
        return VehiclesStatusModel(cWarning, 'Idle');
      case VehiclesStatus.NO_RESPONE:
        return VehiclesStatusModel(cSecondary, 'No Respone');
      default:
        return VehiclesStatusModel(cAccent, 'Stop');
    }
  }
}

class VehiclesStatusModel {
  Color color;
  String text;
  VehiclesStatusModel(this.color, this.text);
}
