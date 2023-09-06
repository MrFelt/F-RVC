<div align="center">

<h1>F-RVC (Based on Retrieval-based-Voice-Conversion-WebUI)</h1>




</div>

------

 

(Windows)  
Using system path python (tested on 3.10.11):
```bash
run setup.bat

run launch-webui.bat *OR* launch_realtime.bat
```
(Assets subfolder must be populated with AT LEAST:)

* rmvpe / rmvpe.pt
* hubert / hubert_base.pt
* pretrained_v2 / "f0D48k.pth", "f0G48k.pth" (other respective files will be required for 40 kHz trains, and/or using no F0)



## 参考项目
+ [ContentVec](https://github.com/auspicious3000/contentvec/)
+ [VITS](https://github.com/jaywalnut310/vits)
+ [HIFIGAN](https://github.com/jik876/hifi-gan)
+ [Gradio](https://github.com/gradio-app/gradio)
+ [FFmpeg](https://github.com/FFmpeg/FFmpeg)
+ [Ultimate Vocal Remover](https://github.com/Anjok07/ultimatevocalremovergui)
+ [audio-slicer](https://github.com/openvpi/audio-slicer)
+ [Vocal pitch extraction:RMVPE](https://github.com/Dream-High/RMVPE)
  + The pretrained model is trained and tested by [yxlllc](https://github.com/yxlllc/RMVPE) and [RVC-Boss](https://github.com/RVC-Boss).

## 感谢所有贡献者作出的努力
<a href="https://github.com/RVC-Project/Retrieval-based-Voice-Conversion-WebUI/graphs/contributors" target="_blank">
  <img src="https://contrib.rocks/image?repo=RVC-Project/Retrieval-based-Voice-Conversion-WebUI" />
</a>
