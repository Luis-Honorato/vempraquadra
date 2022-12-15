
class ConnectionRest {

  String? endrees = "http://localhost:3000/api/";

  String? pathUrl;

  get getPathUrl => this.pathUrl;

  set setPathUrl(pathUrl) => this.pathUrl = pathUrl;

  ConnectionRest(String? _pathUrl) {
    _pathUrl = this.pathUrl;
  }

  String getUrl() {
    return "$endrees/$pathUrl";
  }
}
