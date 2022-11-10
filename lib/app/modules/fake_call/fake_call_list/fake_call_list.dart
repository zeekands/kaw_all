class AudioResources{
  final String background;
  final String audiooke;
  final String imageList;

  AudioResources({
    required this.background,
    required this.audiooke,
    required this.imageList,
  });
}
var fakeCallAudioResources =
[
  AudioResources(
    background: "assets/images/bg_fc_boyfie.png",
    audiooke: "assets/audios/audio_boyfie_ringtone.wav",
    imageList: "assets/images/list_fc_boyfie.png",
  ),
  AudioResources(
    background: "assets/images/bg_fc_girlfie.png",
    audiooke: "assets/audios/audio_girlfie_ringtone.wav",
    imageList: "assets/images/list_fc_girlfie.png",
  ),
  AudioResources(
    background: "assets/images/bg_fc_bestie.png",
    audiooke: "assets/audios/audio_bestie_ringtone.wav",
    imageList: "assets/images/list_fc_bestie.png",
  ),
  AudioResources(
    background: "assets/images/bg_fc_kakak.png",
    audiooke: "assets/audios/audio_kakak_ringtone.wav",
    imageList: "assets/images/list_fc_kakak.png",
  ),
];