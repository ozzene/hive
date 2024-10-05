class SampleData {
  final String name;
  final int value;

  SampleData(this.name, this.value);

  static List<SampleData> getData() {
    return [
      SampleData('Item 1', 100),
      SampleData('Item 2', 200),
    ];
  }
}
