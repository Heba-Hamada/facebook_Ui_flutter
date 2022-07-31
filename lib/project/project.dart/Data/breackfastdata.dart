import 'package:flutter/cupertino.dart';

class breakfast {
  String image;
  String title;
  String sutitle;

  breakfast(this.title, this.sutitle, this.image);
}

List<breakfast> breakfasts = [
  breakfast("Parsley omelette", "breakfast",
      "https://media.istockphoto.com/photos/omelet-picture-id685775630?b=1&k=20&m=685775630&s=170667a&w=0&h=ilwsFjFIak3RyyJVpLT8LHZDi6FTB9GvgKrmzQVKLho="),
  breakfast("Egg eyes with cheese", "breakfast",
      "https://media.istockphoto.com/photos/cheese-roasted-rice-with-egg-vegetable-and-sausage-picture-id1132684244?b=1&k=20&m=1132684244&s=170667a&w=0&h=EOPa0AR6XpBYOX5sCrNRbZCzlXhgeFrs-kgWFflN47g="),
  breakfast("Yogurt", "breakfast",
      "https://media.istockphoto.com/photos/yogurt-in-bowl-on-rustic-black-table-photo-of-plain-natural-organic-picture-id1008860374?b=1&k=20&m=1008860374&s=170667a&w=0&h=ykZIqEpPlRNeGw7EztwFkCB1x1p--ONoJkPHcRAlYf0="),
];
