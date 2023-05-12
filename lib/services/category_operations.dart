import '../models/category.dart';

class CategoryOperations {
  CategoryOperations._() {}
  static List<Category> getCategories() {
    return <Category>[
      Category('Top Songs','https://is1-ssl.mzstatic.com/image/thumb/Purple126/v4/44/17/3c/44173c67-fc77-2bc3-a54e-c275c89f71bd/AppIcon-0-1x_U007emarketing-0-7-0-85-220.png/256x256bb.jpg'),
      Category('90s Hits','https://play-lh.googleusercontent.com/M73zOu1lIPvNMNd-EEcdFzBUVUNWyeAzSI2vlbCA_Xu1yhs773eZgjhNpWWSRzEPGw=s256-rw'),
      Category('Hip Hop Mix','https://cachedimages.podchaser.com/256x256/aHR0cHM6Ly9kM3dvNXdvanZ1djdsLmNsb3VkZnJvbnQubmV0L3RfcnNzX2l0dW5lc19zcXVhcmVfMTQwMC9pbWFnZXMuc3ByZWFrZXIuY29tL29yaWdpbmFsL2U4ZDIzNmFlYzI5ZGE3MmY2NTQ0Mzg2OTRkNDc4MjMxLmpwZw%3D%3D/aHR0cHM6Ly93d3cucG9kY2hhc2VyLmNvbS9pbWFnZXMvbWlzc2luZy1pbWFnZS5wbmc%3D'),
      Category('Chill Hits','https://icon-library.com/images/cool-music-icon/cool-music-icon-9.jpg'),
      Category('Bollywood Hits','https://a10.gaanacdn.com/gn_pl_img/playlists/jBr3gybR1m/r3gex0lJbR/size_m_1515080889.webp'),
      Category('Pritam ','https://a10.gaanacdn.com/gn_img/artists/zLp36PvbrG/Lp36AR0KrG/size_xl_1516707336.webp'),

    ];
  }
}
