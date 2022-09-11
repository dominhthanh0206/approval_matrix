class ModelApproval {
  String name;
  int minRange;
  int maxRange;
  int numberApproval;
  ModelApproval(
      {required this.name,
      required this.maxRange,
      required this.minRange,
      required this.numberApproval});
  @override
  String toString() {
    // TODO: implement toString
    return numberApproval.toString();
  }
}
