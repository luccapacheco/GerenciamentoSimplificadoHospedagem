import '../database.dart';

class CadastroProdutoTable extends SupabaseTable<CadastroProdutoRow> {
  @override
  String get tableName => 'cadastroProduto';

  @override
  CadastroProdutoRow createRow(Map<String, dynamic> data) =>
      CadastroProdutoRow(data);
}

class CadastroProdutoRow extends SupabaseDataRow {
  CadastroProdutoRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => CadastroProdutoTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get nome => getField<String>('nome');
  set nome(String? value) => setField<String>('nome', value);

  String? get quantidadeEstoque => getField<String>('quantidadeEstoque');
  set quantidadeEstoque(String? value) =>
      setField<String>('quantidadeEstoque', value);

  String? get valorProduto => getField<String>('valorProduto');
  set valorProduto(String? value) => setField<String>('valorProduto', value);

  String? get categoria => getField<String>('categoria');
  set categoria(String? value) => setField<String>('categoria', value);

  String? get codigoProduto => getField<String>('codigoProduto');
  set codigoProduto(String? value) => setField<String>('codigoProduto', value);

  String? get descricao => getField<String>('descricao');
  set descricao(String? value) => setField<String>('descricao', value);
}
