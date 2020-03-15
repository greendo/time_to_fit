abstract class Repository {
  Future create(Object obj);
  Future update(Object obj);
  Future read(String name);
  Future<List> readAll();
  Future delete(String name);
}