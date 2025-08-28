// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'records_repository.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$RecordsRepository on RecordsRepositoryBase, Store {
  late final _$recordsRadiantAtom =
      Atom(name: 'RecordsRepositoryBase.recordsRadiant', context: context);

  @override
  Map<dynamic, dynamic> get recordsRadiant {
    _$recordsRadiantAtom.reportRead();
    return super.recordsRadiant;
  }

  @override
  set recordsRadiant(Map<dynamic, dynamic> value) {
    _$recordsRadiantAtom.reportWrite(value, super.recordsRadiant, () {
      super.recordsRadiant = value;
    });
  }

  late final _$recordsNormalAtom =
      Atom(name: 'RecordsRepositoryBase.recordsNormal', context: context);

  @override
  Map<dynamic, dynamic> get recordsNormal {
    _$recordsNormalAtom.reportRead();
    return super.recordsNormal;
  }

  @override
  set recordsNormal(Map<dynamic, dynamic> value) {
    _$recordsNormalAtom.reportWrite(value, super.recordsNormal, () {
      super.recordsNormal = value;
    });
  }

  late final _$RecordsRepositoryBaseActionController =
      ActionController(name: 'RecordsRepositoryBase', context: context);

  @override
  dynamic loadRecords() {
    final _$actionInfo = _$RecordsRepositoryBaseActionController.startAction(
        name: 'RecordsRepositoryBase.loadRecords');
    try {
      return super.loadRecords();
    } finally {
      _$RecordsRepositoryBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
recordsRadiant: ${recordsRadiant},
recordsNormal: ${recordsNormal}
    ''';
  }
}
