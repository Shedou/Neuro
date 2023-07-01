# Сборка Stable Diffusion web UI Neuro
## Пожалуйста, воздержитесь от использования любых файлов и информации из репозитория если вы не готовы взять ответственность за любые возможные и невозможные последствия!
## Внимание! Нейросеть может создавать неприемлемые изображения в зависимости от используемой модели и действий пользователя!
## Описание
Не умеете рисовать, но очень хочется? Позвольте это сделать приложению Stable Diffusion!

Нейросеть нарисует всё что пожелаете, конечно же в пределах возможностей используемой модели...
Для генерации изображения достаточно написать текст в поле ввода и нажать кнопку "Generate", но есть один нюанс, нейросеть понимает только слова на английском языке, впрочем, никто не запрещает использовать переводчик отдельно если с английским языком всё очень плохо...

### Примеры работы (SD WebUI Neuro V3):

Общие для всех изображений параметры генерации:\
`Size:` 640x360 `Hires upscale:` 2x (1280x720) `Hires upscaler:` R-ESRGAN 2x+\
`CFG scale:` 6 `Steps:` 40 `RNG:` CPU `Model:` ChiMix_SF1-NED-AOM3_1 `Model hash:` 08c8bbb6f1\
`GPU:` MSI GeForce GTX 1070 AERO OC 8GB `Optimizations:` xformers

| Girl portrait | Heavy thunderstorm | Old wooden log house |
|:---|:---|:---|
| ![00020-2491313082](https://github.com/Shedou/Neuro/assets/19572158/bd75ce4e-f446-45e8-aa70-e7a23dfd1e5b) | ![00027-985896506](https://github.com/Shedou/Neuro/assets/19572158/2687dc1e-c5ae-47c8-97f1-4bdeb1d3cc46) | ![00043-136011147](https://github.com/Shedou/Neuro/assets/19572158/48516bc7-83f5-49c2-b5ff-cc508898c34c) |

<details>
  <summary>Параметры генерации "Girl portrait"</summary>
  
  `Promt:` girl, green eyes, blonde fluffy hairs, realistic, detailed, volumetric lighting, photo realistic, portrait\
  `Negative promt` low quality, worst quality, cross-eyed, bad proportions, fused fingers, bad eyeballs, artifacts, grayscale, bad geometry, bad face, error\
  `Seed:` 2491313082 `Denoising strength:` 0.7 `Sampler:` DPM2 a Karras
  
</details>

<details>
  <summary>Параметры генерации "Heavy thunderstorm"</summary>
  
  `Promt:` heavy thunderstorm, wide panorama, realistic, detailed, volumetric lighting, photo realistic\
  `Negative promt` low quality, worst quality, artifacts, grayscale, bad geometry, error\
  `Seed:` 985896506 `Denoising strength:` 0.45 `Sampler:` Heun
  
</details>

<details>
  <summary>Параметры генерации "Old wooden log house"</summary>
  
  `Promt:` old wooden log house, winter, realistic, detailed, volumetric lighting, photo realistic\
  `Negative promt` low quality, worst quality, bad geometry, error\
  `Seed:` 136011147 `Denoising strength:` 0.45 `Sampler:` Euler
  
</details>

## Установка Stable Diffusion web UI Neuro
### [Скачать сборку Stable Diffusion web UI Neuro (v3)](https://github.com/Shedou/Neuro/releases/tag/SD_WEBUI_v3) и распаковать архиватором [7-Zip](https://7-zip.org/).

<details>
  <summary>Что нового в версии v3:</summary>
  
 - За основу взят WebUI версии 1.3.2 (2023-06-05).

 - Добавллено расширение "stable-diffusion-webui-images-browser".

 - xformers (для видеокарт GTX 1000 серии и новее).

 - В файле "webui.py" добавлен код необходимый для автоматического запуска Firefox (строка #11, строка #415-423).

 - Проведена чистка, удалены файлы и папки которые не использовались явным образом при работе сборки (подробности см. в файле ReadMe).

</details>

<details>
  <summary>Предыдущие версии</summary>
  
  ___
  [Stable Diffusion web UI Neuro v2](https://github.com/Shedou/Neuro/releases/tag/SD_WEBUI_v2)
  
  [Stable Diffusion web UI Neuro v1](https://github.com/Shedou/Neuro/releases/tag/SD_WEBUI_v1)
  ___
</details>

## Системные требования
<details>
  <summary>Системные требования</summary>
  
  ___
  Минимальные системные требования:\
  ОС: 64 разрядная Microsoft Windows 7* / 10 / 11.\
  ЦП: 64 разрядный процессор, 2 ядра.\
  ОЗУ: 16 ГБ и больше.\
  Видеокарта: GeForce GTX 700 серии и новее (см. список поддерживаемых видеокарт в файле "ReadMe! Neuro.txt").\
  Видеопамять: 2 ГБ и больше.\
  \* - Подробности см. в файле ReadMe.
  ___
  
  Системные требования (Режим работы без видеокарты):\
  ОС: 64 разрядная Microsoft Windows 7* / 10 / 11.\
  ЦП: AMD Ryzen 7 2700 / Intel Core i7-9700 или лучше.\
  ОЗУ: 24 ГБ и больше.\
  \* - Подробности см. в файле ReadMe.
  ___
  
  Рекомендуемые системные требования:\
  ОС: 64 разрядная Microsoft Windows 10 / 11.\
  ЦП: AMD Ryzen 7 2700 / Intel Core i7-9700 или лучше.\
  ОЗУ: 64 ГБ.\
  Видеокарта: GeForce GTX 1070 или лучше.\
  Видеопамять: 8 ГБ и больше.
  ___
  
</details>

## Использование
- **Start WebUI CUDA.bat** - Обычный запуск.
- Start WebUI CUDA CPU.bat - Использовать ЦП для работы (Режим работы без видеокарты).
- **Start WebUI CUDA XFormers.bat** - Использовать xformers, экономит память видеокарты, может повысить производительность, для видеокарт начиная с GTX 1000 серии.

<details>
  <summary>Другие варианты запуска</summary>
  
  ___
  - Start WebUI CUDA Force XFormers.bat - Принудительно использовать xformers, не факт что это нужно.
  - WebUI CUDA LowVRAM.bat
  
  Режим низкого потребления памяти на видеокарте, полезно для видеокарт с 2-3 ГБ памяти, снижает скорость работы.
  
  - WebUI CUDA NoFP16.bat
  
  Запрет на работу с низкой точностью FP16, позволит работать устаревшим видеокартам, увеличивает расход памяти.
  
  - WebUI CUDA LowVRAM NoFP16.bat
  
  Комбинация двух предыдущих вариантов.
  ___
</details>

## Полезное для Stable Diffusion
В данном разделе будут оставлены ссылки на полезные материалы для Stable Diffusion.
### Где можно найти разнообразные модели:
**[https://huggingface.co/models](https://huggingface.co/models)** (необходима регистрация).\
**[https://civitai.com/](https://civitai.com/)** (модели доступны без регистрации).

### Тема на форуме 4PDA с разными полезными материалами и информацией:
**[https://4pda.to/forum/index.php?showtopic=1064573](https://4pda.to/forum/index.php?showtopic=1064573)**

### Сборка основана на Stable Diffusion web UI
Репозиторий **[AUTOMATIC1111/stable-diffusion-webui](https://github.com/AUTOMATIC1111/stable-diffusion-webui).**
## Блог Overclockers
### [overclockers.ru/blog/Hard-Workshop](https://overclockers.ru/blog/Hard-Workshop)
## Прочее
Модель ChiMix_SF1-NED-AOM3_1 основана на AOM3-r34-SF1-pruned, neverendingDreamNED_bakedVae и возможно AOM3_orangemixs, пропорции неизвестны.

Python:\
https://github.com/adang1345/PythonWin7

ffmpeg-6.0-full_build-shared:\
https://www.gyan.dev/ffmpeg/builds/

Mozilla Firefox:\
https://www.mozilla.org/

**Дополнения в составе сборки:**

multidiffusion-upscaler-for-automatic1111\
https://github.com/pkuliyi2015/multidiffusion-upscaler-for-automatic1111

sd-extension-steps-animation\
https://github.com/vladmandic/sd-extension-steps-animation

stable-diffusion-webui-images-browser\
https://github.com/AlUlkesh/stable-diffusion-webui-images-browser
