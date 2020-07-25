class Story {
  final List<String> image, tag1, tag2, title, subtitle;

  Story({this.image, this.tag1, this.tag2, this.title, this.subtitle});
}

List<Story> stories = [
  Story(
    image: [
      'assets/images/img4.jpg',
      'assets/images/img3.jpg',
    ],
    tag1: [
      'Nature',
      'Nat',
    ],
    tag2: [
      'Jelly',
      'Jey',
    ],
    title: [
      'An amazingly beautiful jelly',
      'An amazingly be',
    ],
    subtitle: [
      'Its was a rare click caught on the camera of matt.ferr',
      'Its was a rare click caught on err',
    ],
  ),
];
