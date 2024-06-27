

bool? studentVerification(String? email) {
  var list = {"student.aisd.net"};
  if (list.contains(email!.split("@")[1])) {
    return true;
  } else {
    return false;
  }
}
