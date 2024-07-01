import '../database.dart';

class CadastroReservasTable extends SupabaseTable<CadastroReservasRow> {
  @override
  String get tableName => 'cadastroReservas';

  @override
  CadastroReservasRow createRow(Map<String, dynamic> data) =>
      CadastroReservasRow(data);
}

class CadastroReservasRow extends SupabaseDataRow {
  CadastroReservasRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => CadastroReservasTable();

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

  String? get dataNascimento => getField<String>('dataNascimento');
  set dataNascimento(String? value) =>
      setField<String>('dataNascimento', value);

  String? get acomodacao => getField<String>('acomodação');
  set acomodacao(String? value) => setField<String>('acomodação', value);

  String? get checkIn => getField<String>('checkIn');
  set checkIn(String? value) => setField<String>('checkIn', value);

  String? get checkOut => getField<String>('checkOut');
  set checkOut(String? value) => setField<String>('checkOut', value);

  String? get email => getField<String>('email');
  set email(String? value) => setField<String>('email', value);

  String? get telefone => getField<String>('telefone');
  set telefone(String? value) => setField<String>('telefone', value);
}
