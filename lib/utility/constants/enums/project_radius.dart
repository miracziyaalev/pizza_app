enum ProjectRadius {
  /// Small radius -> 8
  small(8),

  /// Normal radius -> 16
  medium(16),

  /// Large radius -> 20
  large(20);

  final double value;
  const ProjectRadius(this.value);
}
