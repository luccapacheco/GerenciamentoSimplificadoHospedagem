import '../database.dart';

class CadastroUsuarioTable extends SupabaseTable<CadastroUsuarioRow> {
  @override
  String get tableName => 'CadastroUsuario';

  @override
  CadastroUsuarioRow createRow(Map<String, dynamic> data) =>
      CadastroUsuarioRow(data);
}

class CadastroUsuarioRow extends SupabaseDataRow {
  CadastroUsuarioRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => CadastroUsuarioTable();

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

  String? get genero => getField<String>('genero');
  set genero(String? value) => setField<String>('genero', value);

  String? get escolaridade => getField<String>('escolaridade');
  set escolaridade(String? value) => setField<String>('escolaridade', value);

  String? get estadoCivil => getField<String>('estado_civil');
  set estadoCivil(String? value) => setField<String>('estado_civil', value);

  String? get endereco => getField<String>('endereço');
  set endereco(String? value) => setField<String>('endereço', value);

  String? get bairro => getField<String>('bairro');
  set bairro(String? value) => setField<String>('bairro', value);

  String? get uf => getField<String>('uf');
  set uf(String? value) => setField<String>('uf', value);

  String? get email => getField<String>('email');
  set email(String? value) => setField<String>('email', value);

  String? get telefone => getField<String>('telefone');
  set telefone(String? value) => setField<String>('telefone', value);

  String? get profissao => getField<String>('profissão');
  set profissao(String? value) => setField<String>('profissão', value);

  String? get login => getField<String>('login');
  set login(String? value) => setField<String>('login', value);

  String? get senha => getField<String>('senha');
  set senha(String? value) => setField<String>('senha', value);

  String? get cidade => getField<String>('cidade');
  set cidade(String? value) => setField<String>('cidade', value);

  String? get cep => getField<String>('cep');
  set cep(String? value) => setField<String>('cep', value);
}
