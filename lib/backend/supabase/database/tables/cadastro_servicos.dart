import '../database.dart';

class CadastroServicosTable extends SupabaseTable<CadastroServicosRow> {
  @override
  String get tableName => 'cadastroServicos';

  @override
  CadastroServicosRow createRow(Map<String, dynamic> data) =>
      CadastroServicosRow(data);
}

class CadastroServicosRow extends SupabaseDataRow {
  CadastroServicosRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => CadastroServicosTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get servico => getField<String>('servico');
  set servico(String? value) => setField<String>('servico', value);

  String? get hora => getField<String>('hora');
  set hora(String? value) => setField<String>('hora', value);

  String? get dataField => getField<String>('data');
  set dataField(String? value) => setField<String>('data', value);

  String? get funcionario => getField<String>('funcionário');
  set funcionario(String? value) => setField<String>('funcionário', value);

  String? get status => getField<String>('status');
  set status(String? value) => setField<String>('status', value);

  String? get acomodacao => getField<String>('acomodacao');
  set acomodacao(String? value) => setField<String>('acomodacao', value);
}
