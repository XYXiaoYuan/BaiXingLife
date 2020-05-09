class HomeModel {
  List<Slide> slides;
  ShopInfo shopInfo;
  AdvertesPicture integralMallPic;
  AdvertesPicture toShareCode;
  List<Recommend> recommend;
  AdvertesPicture advertesPicture;
  List<Floor> floor1;
  List<Floor> floor2;
  List<Floor> floor3;
  AdvertesPicture saoma;
  AdvertesPicture newUser;
  AdvertesPicture floor1Pic;
  AdvertesPicture floor2Pic;
  AdvertesPicture floor3Pic;
  FloorName floorName;
  List<Category> category;
  List<dynamic> reservationGoods;

  HomeModel({
    this.slides,
    this.shopInfo,
    this.integralMallPic,
    this.toShareCode,
    this.recommend,
    this.advertesPicture,
    this.floor1,
    this.floor2,
    this.floor3,
    this.saoma,
    this.newUser,
    this.floor1Pic,
    this.floor2Pic,
    this.floorName,
    this.category,
    this.floor3Pic,
    this.reservationGoods,
  });

  factory HomeModel.fromJson(Map<String, dynamic> json) => HomeModel(
    slides: List<Slide>.from(json["slides"].map((x) => Slide.fromJson(x))),
    shopInfo: ShopInfo.fromJson(json["shopInfo"]),
    integralMallPic: AdvertesPicture.fromJson(json["integralMallPic"]),
    toShareCode: AdvertesPicture.fromJson(json["toShareCode"]),
    recommend: List<Recommend>.from(json["recommend"].map((x) => Recommend.fromJson(x))),
    advertesPicture: AdvertesPicture.fromJson(json["advertesPicture"]),
    floor1: List<Floor>.from(json["floor1"].map((x) => Floor.fromJson(x))),
    floor2: List<Floor>.from(json["floor2"].map((x) => Floor.fromJson(x))),
    floor3: List<Floor>.from(json["floor3"].map((x) => Floor.fromJson(x))),
    saoma: AdvertesPicture.fromJson(json["saoma"]),
    newUser: AdvertesPicture.fromJson(json["newUser"]),
    floor1Pic: AdvertesPicture.fromJson(json["floor1Pic"]),
    floor2Pic: AdvertesPicture.fromJson(json["floor2Pic"]),
    floorName: FloorName.fromJson(json["floorName"]),
    category: List<Category>.from(json["category"].map((x) => Category.fromJson(x))),
    floor3Pic: AdvertesPicture.fromJson(json["floor3Pic"]),
    reservationGoods: List<dynamic>.from(json["reservationGoods"].map((x) => x)),
  );

  Map<String, dynamic> toJson() => {
    "slides": List<dynamic>.from(slides.map((x) => x.toJson())),
    "shopInfo": shopInfo.toJson(),
    "integralMallPic": integralMallPic.toJson(),
    "toShareCode": toShareCode.toJson(),
    "recommend": List<dynamic>.from(recommend.map((x) => x.toJson())),
    "advertesPicture": advertesPicture.toJson(),
    "floor1": List<dynamic>.from(floor1.map((x) => x.toJson())),
    "floor2": List<dynamic>.from(floor2.map((x) => x.toJson())),
    "floor3": List<dynamic>.from(floor3.map((x) => x.toJson())),
    "saoma": saoma.toJson(),
    "newUser": newUser.toJson(),
    "floor1Pic": floor1Pic.toJson(),
    "floor2Pic": floor2Pic.toJson(),
    "floorName": floorName.toJson(),
    "category": List<dynamic>.from(category.map((x) => x.toJson())),
    "floor3Pic": floor3Pic.toJson(),
    "reservationGoods": List<dynamic>.from(reservationGoods.map((x) => x)),
  };
}

class AdvertesPicture {
  String pictureAddress;
  String toPlace;
  int urlType;

  AdvertesPicture({
    this.pictureAddress,
    this.toPlace,
    this.urlType,
  });

  factory AdvertesPicture.fromJson(Map<String, dynamic> json) => AdvertesPicture(
    pictureAddress: json["PICTURE_ADDRESS"],
    toPlace: json["TO_PLACE"],
    urlType: json["urlType"],
  );

  Map<String, dynamic> toJson() => {
    "PICTURE_ADDRESS": pictureAddress,
    "TO_PLACE": toPlace,
    "urlType": urlType,
  };
}

class Category {
  String mallCategoryId;
  String mallCategoryName;
  List<BxMallSubDto> bxMallSubDto;
  dynamic comments;
  String image;

  Category({
    this.mallCategoryId,
    this.mallCategoryName,
    this.bxMallSubDto,
    this.comments,
    this.image,
  });

  factory Category.fromJson(Map<String, dynamic> json) => Category(
    mallCategoryId: json["mallCategoryId"],
    mallCategoryName: json["mallCategoryName"],
    bxMallSubDto: List<BxMallSubDto>.from(json["bxMallSubDto"].map((x) => BxMallSubDto.fromJson(x))),
    comments: json["comments"],
    image: json["image"],
  );

  Map<String, dynamic> toJson() => {
    "mallCategoryId": mallCategoryId,
    "mallCategoryName": mallCategoryName,
    "bxMallSubDto": List<dynamic>.from(bxMallSubDto.map((x) => x.toJson())),
    "comments": comments,
    "image": image,
  };
}

class BxMallSubDto {
  String mallSubId;
  String mallCategoryId;
  String mallSubName;
  String comments;

  BxMallSubDto({
    this.mallSubId,
    this.mallCategoryId,
    this.mallSubName,
    this.comments,
  });

  factory BxMallSubDto.fromJson(Map<String, dynamic> json) => BxMallSubDto(
    mallSubId: json["mallSubId"],
    mallCategoryId: json["mallCategoryId"],
    mallSubName: json["mallSubName"],
    comments: json["comments"] == null ? null : json["comments"],
  );

  Map<String, dynamic> toJson() => {
    "mallSubId": mallSubId,
    "mallCategoryId": mallCategoryId,
    "mallSubName": mallSubName,
    "comments": comments == null ? null : comments,
  };
}

class Floor {
  String image;
  String goodsId;

  Floor({
    this.image,
    this.goodsId,
  });

  factory Floor.fromJson(Map<String, dynamic> json) => Floor(
    image: json["image"],
    goodsId: json["goodsId"],
  );

  Map<String, dynamic> toJson() => {
    "image": image,
    "goodsId": goodsId,
  };
}

class FloorName {
  String floor1;
  String floor2;
  String floor3;

  FloorName({
    this.floor1,
    this.floor2,
    this.floor3,
  });

  factory FloorName.fromJson(Map<String, dynamic> json) => FloorName(
    floor1: json["floor1"],
    floor2: json["floor2"],
    floor3: json["floor3"],
  );

  Map<String, dynamic> toJson() => {
    "floor1": floor1,
    "floor2": floor2,
    "floor3": floor3,
  };
}

class Recommend {
  String image;
  double mallPrice;
  String goodsName;
  String goodsId;
  double price;

  Recommend({
    this.image,
    this.mallPrice,
    this.goodsName,
    this.goodsId,
    this.price,
  });

  factory Recommend.fromJson(Map<String, dynamic> json) => Recommend(
    image: json["image"],
    mallPrice: json["mallPrice"].toDouble(),
    goodsName: json["goodsName"],
    goodsId: json["goodsId"],
    price: json["price"].toDouble(),
  );

  Map<String, dynamic> toJson() => {
    "image": image,
    "mallPrice": mallPrice,
    "goodsName": goodsName,
    "goodsId": goodsId,
    "price": price,
  };
}

class ShopInfo {
  String shopCode;
  String leaderPhone;
  String leaderImage;
  String shopName;

  ShopInfo({
    this.shopCode,
    this.leaderPhone,
    this.leaderImage,
    this.shopName,
  });

  factory ShopInfo.fromJson(Map<String, dynamic> json) => ShopInfo(
    shopCode: json["SHOP_CODE"],
    leaderPhone: json["leaderPhone"],
    leaderImage: json["leaderImage"],
    shopName: json["SHOP_NAME"],
  );

  Map<String, dynamic> toJson() => {
    "SHOP_CODE": shopCode,
    "leaderPhone": leaderPhone,
    "leaderImage": leaderImage,
    "SHOP_NAME": shopName,
  };
}

class Slide {
  String image;
  int urlType;
  String goodsId;

  Slide({
    this.image,
    this.urlType,
    this.goodsId,
  });

  factory Slide.fromJson(Map<String, dynamic> json) => Slide(
    image: json["image"],
    urlType: json["urlType"],
    goodsId: json["goodsId"],
  );

  Map<String, dynamic> toJson() => {
    "image": image,
    "urlType": urlType,
    "goodsId": goodsId,
  };
}