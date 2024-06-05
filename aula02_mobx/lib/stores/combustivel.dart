import 'dart:ui';

import 'package:mobx/mobx.dart';

part 'combustivel.g.dart';

class Combustivel = _Combustivel with _$Combustivel;

abstract class _Combustivel with Store {
  @observable
  double _vlrEtanol = 0;

  @observable
  double _vlrGasolina = 0;

  @observable
  String melhorOpcao = '';

  @observable
  bool melhorEtanol = false;

  @observable
  bool melhorGasolina = false;

  @action
  void setEtanol(String valor) => _vlrEtanol = double.tryParse(valor) ?? 0;

  @action
  void setGasolina(String valor) => _vlrGasolina = double.tryParse(valor) ?? 0;

  @computed
  bool get isDadosValidos => (_vlrEtanol > 0 && _vlrGasolina > 0);

  @computed
  VoidCallback? get calcular => isDadosValidos ? _calcular : null;

  @action
  void _calcular() {
    if (_vlrEtanol <= (_vlrGasolina * 0.7)) {
      melhorOpcao = 'Melhor abastecer com Etanol';
      melhorGasolina = false;
      melhorEtanol = true;
    }
    else {
      melhorOpcao = 'Melhor abastecer com Gasolina';
      melhorEtanol = false;
      melhorGasolina = true;
    }
  }
}