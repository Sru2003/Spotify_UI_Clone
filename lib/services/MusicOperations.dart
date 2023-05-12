import '../models/Music.dart';

class MusicOperations {
  MusicOperations._() {}

  static List<Music> getMusic() {
    return <Music>[
      Music(
          'Brahmastra',
          'https://c-cl.cdn.smule.com/smule-gg-uw1-s-8/arr/21/6a/35323c24-e581-4e76-b3ed-932a4e0920be.jpg',
          'Kesariya','https://audio-ssl.itunes.apple.com/itunes-assets/AudioPreview122/v4/db/a6/77/dba677db-5b64-0a2d-c19f-0f18d8fcc040/mzaf_18437633248411199823.plus.aac.p.m4a'),
      Music(
          'Yeh Jawaani Hai Deewani',
          'https://i.scdn.co/image/ab67616d0000b27388af6ffe6927ea6a859d0322',
          'Kabira',
          'https://audio-ssl.itunes.apple.com/itunes-assets/AudioPreview126/v4/71/54/91/7154910a-a02a-4ce3-9729-7aa4f1e583b8/mzaf_5359043392594599456.plus.aac.p.m4a'),
      Music(
          'Ae Dil Hai Mushkil','https://is3-ssl.mzstatic.com/image/thumb/Music125/v4/68/f3/c6/68f3c645-1b25-3d44-af6f-ebe4aea3df08/886446201597.jpg/316x316bb.webp',
          'Channa Mereya',
          'https://audio-ssl.itunes.apple.com/itunes-assets/AudioPreview113/v4/5c/c2/c9/5cc2c932-e065-e99d-8721-e0eac4e31872/mzaf_17529033236526534532.plus.aac.p.m4a'),

    ];
  }
}
