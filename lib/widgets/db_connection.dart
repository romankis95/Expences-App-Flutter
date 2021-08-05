import 'package:mongo_dart/mongo_dart.dart' show Db, DbCollection;

class DBConnection {
  static DBConnection _instance;

  final String _host = "192.168.1.149";
  final String _port = "27017";
  final String _dbName = "progettotestesi12";
  Db _db;

  static getInstance() {
    if (_instance == null) {
      _instance = DBConnection();
    }
    return _instance;
  }

  Future<Db> getConnection() async {
    if (_db == null) {
      try {
        _db = Db(_getConnectionString());
        await _db.open();
        print("connessione al db riuscita");
        var coll = _db.collection('find');
        print(coll);
      } catch (e) {
        print(e);
      }
    }
    return _db;
  }

  _getConnectionString() {
    print("mongodb://$_host:$_port/$_dbName");
    return "mongodb://$_host:$_port/$_dbName";
  }

  closeConnection() {
    _db.close();
  }
}
