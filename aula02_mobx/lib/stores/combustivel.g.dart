// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'combustivel.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$Combustivel on _Combustivel, Store {
  Computed<bool>? _$isDadosValidosComputed;

  @override
  bool get isDadosValidos =>
      (_$isDadosValidosComputed ??= Computed<bool>(() => super.isDadosValidos,
              name: '_Combustivel.isDadosValidos'))
          .value;
  Computed<VoidCallback?>? _$calcularComputed;

  @override
  VoidCallback? get calcular =>
      (_$calcularComputed ??= Computed<VoidCallback?>(() => super.calcular,
              name: '_Combustivel.calcular'))
          .value;

  late final _$_vlrEtanolAtom =
      Atom(name: '_Combustivel._vlrEtanol', context: context);

  @override
  double get _vlrEtanol {
    _$_vlrEtanolAtom.reportRead();
    return super._vlrEtanol;
  }

  @override
  set _vlrEtanol(double value) {
    _$_vlrEtanolAtom.reportWrite(value, super._vlrEtanol, () {
      super._vlrEtanol = value;
    });
  }

  late final _$_vlrGasolinaAtom =
      Atom(name: '_Combustivel._vlrGasolina', context: context);

  @override
  double get _vlrGasolina {
    _$_vlrGasolinaAtom.reportRead();
    return super._vlrGasolina;
  }

  @override
  set _vlrGasolina(double value) {
    _$_vlrGasolinaAtom.reportWrite(value, super._vlrGasolina, () {
      super._vlrGasolina = value;
    });
  }

  late final _$melhorOpcaoAtom =
      Atom(name: '_Combustivel.melhorOpcao', context: context);

  @override
  String get melhorOpcao {
    _$melhorOpcaoAtom.reportRead();
    return super.melhorOpcao;
  }

  @override
  set melhorOpcao(String value) {
    _$melhorOpcaoAtom.reportWrite(value, super.melhorOpcao, () {
      super.melhorOpcao = value;
    });
  }

  late final _$melhorEtanolAtom =
      Atom(name: '_Combustivel.melhorEtanol', context: context);

  @override
  bool get melhorEtanol {
    _$melhorEtanolAtom.reportRead();
    return super.melhorEtanol;
  }

  @override
  set melhorEtanol(bool value) {
    _$melhorEtanolAtom.reportWrite(value, super.melhorEtanol, () {
      super.melhorEtanol = value;
    });
  }

  late final _$melhorGasolinaAtom =
      Atom(name: '_Combustivel.melhorGasolina', context: context);

  @override
  bool get melhorGasolina {
    _$melhorGasolinaAtom.reportRead();
    return super.melhorGasolina;
  }

  @override
  set melhorGasolina(bool value) {
    _$melhorGasolinaAtom.reportWrite(value, super.melhorGasolina, () {
      super.melhorGasolina = value;
    });
  }

  late final _$_CombustivelActionController =
      ActionController(name: '_Combustivel', context: context);

  @override
  void setEtanol(String valor) {
    final _$actionInfo = _$_CombustivelActionController.startAction(
        name: '_Combustivel.setEtanol');
    try {
      return super.setEtanol(valor);
    } finally {
      _$_CombustivelActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setGasolina(String valor) {
    final _$actionInfo = _$_CombustivelActionController.startAction(
        name: '_Combustivel.setGasolina');
    try {
      return super.setGasolina(valor);
    } finally {
      _$_CombustivelActionController.endAction(_$actionInfo);
    }
  }

  @override
  void _calcular() {
    final _$actionInfo = _$_CombustivelActionController.startAction(
        name: '_Combustivel._calcular');
    try {
      return super._calcular();
    } finally {
      _$_CombustivelActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
melhorOpcao: ${melhorOpcao},
melhorEtanol: ${melhorEtanol},
melhorGasolina: ${melhorGasolina},
isDadosValidos: ${isDadosValidos},
calcular: ${calcular}
    ''';
  }
}
