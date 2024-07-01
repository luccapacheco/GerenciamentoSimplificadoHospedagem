import '../database.dart';

class CadastroHospedeTable extends SupabaseTable<CadastroHospedeRow> {
  @override
  String get tableName => 'CadastroHospede';

  @override
  CadastroHospedeRow createRow(Map<String, dynamic> data) =>
      CadastroHospedeRow(data);
}

class CadastroHospedeRow extends SupabaseDataRow {
  CadastroHospedeRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => CadastroHospedeTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get nome => getField<String>('nome');
  set nome(String? value) => setField<String>('nome', value);

  String? get cpf => getField<String>('cpf');
  set cpf(String? value) => setField<String>('cpf', value);

  String? get rg => getField<String>('rg');
  set rg(String? value) => setField<String>('rg', value);

  String? get cidade => getField<String>('cidade');
  set cidade(String? value) => setField<String>('cidade', value);

  String? get uf => getField<String>('uf');
  set uf(String? value) => setField<String>('uf', value);

  String? get email => getField<String>('email');
  set email(String? value) => setField<String>('email', value);

  String? get dataAniversario => getField<String>('dataAniversario');
  set dataAniversario(String? value) =>
      setField<String>('dataAniversario', value);

  String? get telefone => getField<String>('telefone');
  set telefone(String? value) => setField<String>('telefone', value);
}
