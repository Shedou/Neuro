# Сборка Stable Diffusion Web UI Neuro Linux
## Пожалуйста, воздержитесь от использования любых файлов и информации из репозитория если вы не готовы взять ответственность за любые возможные и невозможные последствия!
## Внимание! Нейросеть может создавать неприемлемые изображения в зависимости от используемой модели и действий пользователя!
## Attention! The neural network can create inappropriate images depending on the model used AND user actions!
## Описание
Не умеете рисовать, но очень хочется? Позвольте это сделать приложению Stable Diffusion!

Нейросеть нарисует всё что пожелаете, конечно же в пределах возможностей используемой модели...
Для генерации изображения достаточно написать текст в поле ввода и нажать кнопку "Generate", но есть один нюанс, нейросеть понимает только слова на английском языке, впрочем, никто не запрещает использовать переводчик отдельно если с английским языком всё очень плохо...

### Примеры работы (SD WebUI Neuro Linux v1):

Общие для всех изображений параметры генерации:\
`Model:` ChiMix_SF1-NED-AOM3_1 `Model hash:` 08c8bbb6f1\
`VAE:` vae-ft-mse-840000-ema-pruned.ckpt `Optimizations:` xformers `Size:` 1280x720\
`GPU:` MSI GeForce GTX 1070 AERO OC 8GB `Driver:` 545.23.08 (cuda_12.3.1_545.23.08_linux.run)\
`CPU:` Ryzen 7 2700X `RAM:` 64GB `OS:` [Chimbalix 23.1 Alphachi](https://github.com/Shedou/Chimbalix)

| Autumn landscape | City in the background | Penguin |
|:---|:---|:---|
| ![00000-2475027556](https://github.com/Shedou/Neuro/assets/19572158/d9514f90-7f3b-49ad-8bde-eeee1b4fed86) | ![00004-542172519](https://github.com/Shedou/Neuro/assets/19572158/3863873f-b43b-4051-8180-c26273867399) | ![00005-2984056617](https://github.com/Shedou/Neuro/assets/19572158/7874b789-998b-4f5a-889a-a9fb5deb026c) |

<details>
  <summary>Параметры генерации "Autumn landscape"</summary>
  
  `Promt:` landscape, autumn, sunset on the horizon, forest in the distance, sand road, bushes, green grass, hdr, 4k photo, contrast\
  `Negative promt:` noise, bad quality, low quality, two suns\
  `Sampler:` DPM++ 2M Karras `Steps:` 60\
  `Seed:` 2475027556 `Time taken:` 2 min. 37.2 sec.
  
</details>

<details>
  <summary>Параметры генерации "City in the background"</summary>
  
  `Promt:` 1girl, detailed, purple eyes, black jacket, white hair, volumetric lighting, city in the background, contrast, depth of field, standing, sunny, sky clouds\
  `Negative promt:` bad quality, bad anatomy, bad geometry, weird fingers, fused fingers, deformed hands, deformed fingers, open mouth, fused eyes, text, watermark, bow tie in hair, canvas, 2girls\
  `Sampler:` DPM++ 3M SDE Karras `Steps:` 70\
  `Seed:` 542172519 `Time taken:` 3 min. 19.6 sec.
  
</details>

<details>
  <summary>Параметры генерации "Penguin"</summary>
  
  `Promt:` penguin, snow, solo\
  `Negative promt:` bad quality, bad anatomy, bad geometry, text, watermark\
  `Sampler:` DPM++ 2M Karras `Steps:` 80\
  `Seed:` 2984056617 `Time taken:` 3 min. 32.7 sec.
  
</details>

## Установка Stable Diffusion web UI Neuro
### [Скачать сборку Stable Diffusion Web UI Neuro Linux (v2)](https://github.com/Shedou/Neuro/releases/tag/SD_WEBUI_Linux_v2) и распаковать архиватором.

<details>
  <summary>Предыдущие версии</summary>
  
  ___
  [Stable Diffusion Web UI Neuro Linux v1](https://github.com/Shedou/Neuro/releases/tag/SD_WEBUI_Linux_v1)
  ___
</details>

## Пакет расширений для SD WebUI (~280 шт., zip архив, ~1.5 ГиБ, 2024-01-16)
### [Скачать sd-webui-extensions-2024-01-16](https://github.com/Shedou/Neuro/releases/tag/SD_WEBUI_EXT_1) - [![Github Releases](https://img.shields.io/github/downloads/Shedou/Neuro/SD_WEBUI_EXT_1/total.svg)](https://github.com/Shedou/Neuro/releases/tag/SD_WEBUI_EXT_1).

## Системные требования
<details>
  <summary>Системные требования</summary>
  
  ___
  **Минимальные системные требования:**\
  ОС: Chimbalix 23.1 SP1 / 24.1 Alphachi\
  ЦП: 64 разрядный процессор, 2 ядра.\
  ОЗУ: 8 ГБ и больше.\
  Видеокарта: GeForce 900 серии и новее.\
  Видеопамять: 4 ГБ и больше.
  
  **Системные требования (Режим работы без видеокарты):**\
  ОС: Chimbalix 23.1 SP1 / 24.1 Alphachi\
  ЦП: AMD Ryzen 7 2700 / Intel Core i7-9700 или лучше.\
  ОЗУ: 16 ГБ и больше.
  
  **Рекомендуемые системные требования:**\
  ОС: Chimbalix 23.1 SP1 / 24.1 Alphachi\
  ЦП: AMD Ryzen 7 2700 / Intel Core i7-9700 или лучше.\
  ОЗУ: 32 ГБ и больше.\
  Видеокарта: GeForce GTX 1070 или лучше.\
  Видеопамять: 8 ГБ и больше.
  
  ВНИМАНИЕ! Убедитесь что у вас установлен ПОЛНОЦЕННЫЙ драйвер NVIDIA! (https://developer.nvidia.com/cuda-toolkit-archive)\
  Для примера 545.24.08 (GTX 900+): https://developer.download.nvidia.com/compute/cuda/12.3.1/local_installers/cuda_12.3.1_545.23.08_linux.run
	
  ВНИМАНИЕ! Для работы сборки необходимы: git, python3.11 и python3-venv! (возможен запуск с python3.12)\
  Сборка не проверялась на работоспособность в сторонних дистрибутивах Linux!
  
  - Chimbalix Linux:
  https://github.com/Shedou/Chimbalix
  ___
  
</details>

## Использование
- install.sh (по желанию) - Установить сборку в стандартный каталог portsoft (Program Files), (см. системные требования!). Так же создаёт ярлыки в меню "Пуск" для всех пользователей, для установки необходимы root права.
- uninstall.sh	Удаляет установленную сборку из системы, появляется в основном каталоге только после установки приложения.
- download-models-base.sh - Загрузить основной набор моделей для Stable Diffusion из репозиториев, BLIP, Codeformer, ESRGAN, GFPGAN и т.д. (примерно 4.6 GiB).
- download-preprocessors-controlnet.sh - Загрузить набор препроцессоров ControlNet (Annotators) из репозиториев (примерно 10.2 GiB).
- download-models-controlnet-sd15.sh - Загрузить набор моделей ControlNet из репозиториев (примерно 18.8 GiB).

- start.sh - Обычный запуск.
- start-cpu.sh - Использовать ЦП для работы (Режим работы без видеокарты).
- start-xformers.sh - Использовать xformers, экономит память видеокарты, может повысить производительность.

## Полезное для Stable Diffusion
В данном разделе будут оставлены ссылки на полезные материалы для Stable Diffusion.
### Где можно найти модели:
**[https://huggingface.co/models](https://huggingface.co/models)**\
**[https://civitai.com/](https://civitai.com/)**.

### Тема на форуме 4PDA с разными полезными материалами и информацией:
**[https://4pda.to/forum/index.php?showtopic=1064573](https://4pda.to/forum/index.php?showtopic=1064573)**

### Сборка основана на Stable Diffusion web UI
Репозиторий **[AUTOMATIC1111/stable-diffusion-webui](https://github.com/AUTOMATIC1111/stable-diffusion-webui).**
## Блог Overclockers
### [overclockers.ru/blog/Hard-Workshop](https://overclockers.ru/blog/Hard-Workshop)
## Прочее
Модель ChiMix_SF1-NED-AOM3_1 основана на AOM3-r34-SF1-pruned, neverendingDreamNED_bakedVae и возможно AOM3_orangemixs, пропорции неизвестны.

**Дополнения в составе сборки:**

sd-extension-steps-animation\
https://github.com/vladmandic/sd-extension-steps-animation

sd-webui-controlnet\
https://github.com/Mikubill/sd-webui-controlnet

sd-webui-3d-open-pose-editor\
https://github.com/nonnonstop/sd-webui-3d-open-pose-editor

multidiffusion-upscaler-for-automatic1111\
https://github.com/pkuliyi2015/multidiffusion-upscaler-for-automatic1111

stable-diffusion-webui-images-browser\
https://github.com/AlUlkesh/stable-diffusion-webui-images-browser
