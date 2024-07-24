class Pokemon {
  late int id;
  late String num;
  late String name;
  late String img;
  late List<String> type;
  late String height;
  late String weight;
  late String candy;

  Pokemon({
    required this.id,
    required this.num,
    required this.name,
    required this.img,
    required this.type,
    required this.height,
    required this.weight,
    required this.candy
  });

  //List<Map<String, dynamic>> -> Arquivo Json Completo
  //Map<String, dynamic> -> Item do Json

  Pokemon.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    num = json['num'];
    name = json['name'];
    img = json['img'];
    type = json['type'].cast<String>();
    height = json['height'];
    weight = json['weight'];
    candy = json['candy'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> dados = {};

    dados['id'] = id;
    dados['num'] = num;
    dados['name'] = name;
    dados['img'] = img;
    dados['type'] = type;
    dados['height'] = height;
    dados['weight'] = weight;
    dados['candy'] = candy;

    return dados;
  }

  String getImagem() {
    return 'https://raw.githubusercontent.com/fanzeyi/pokemon.json/master/images/$num.png';
  }
}