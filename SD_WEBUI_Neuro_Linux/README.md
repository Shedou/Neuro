# Сборка Stable Diffusion Web UI Neuro Linux
## Пожалуйста, воздержитесь от использования любых файлов и информации из репозитория если вы не готовы взять ответственность за любые возможные и невозможные последствия!
## Внимание! Нейросеть может создавать неприемлемые изображения в зависимости от используемой модели и действий пользователя!
## Attention! The neural network can create inappropriate images depending on the model used AND user actions!
## Описание
Не умеете рисовать, но очень хочется? Позвольте это сделать приложению Stable Diffusion!

Нейросеть нарисует всё что пожелаете, конечно же в пределах возможностей используемой модели...
Для генерации изображения достаточно написать текст в поле ввода и нажать кнопку "Generate", но есть один нюанс, нейросеть понимает только слова на английском языке, впрочем, никто не запрещает использовать переводчик отдельно если с английским языком всё очень плохо...

### Примеры работы (SD WebUI Neuro Linux v3, не заполнено):

Общие для всех изображений параметры генерации:\
`Model:`  `Model hash:` \
`VAE:`  `Optimizations:`  `Size:` \
`GPU:`  `Driver:` \
`CPU:`  `RAM:`  `OS:`

| | | |
|:---|:---|:---|
| | | |

<details>
  <summary>Параметры генерации "не заполнено"</summary>
  
  `Promt:` \
  `Negative promt:` \
  `Sampler:` `Steps:` \
  `Seed:`  `Time taken:`
  
</details>

## Установка Stable Diffusion web UI Neuro
### [Скачать сборку Stable Diffusion Web UI Neuro Linux (v3)](https://github.com/Shedou/Neuro/releases/tag/SD_WEBUI_Linux_v3), установить или распаковать сборку, установить желаемые модели и использовать.

<details>
  <summary>Предыдущие версии</summary>
  
  ___
  [Stable Diffusion Web UI Neuro Linux v2](https://github.com/Shedou/Neuro/releases/tag/SD_WEBUI_Linux_v2)
  
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
  ОС: Chimbalix 24.7\
  ЦП: 64 разрядный процессор, 2 ядра.\
  ОЗУ: 16 ГБ и больше.\
  Видеокарта: GeForce 900 серии и новее.\
  Видеопамять: 4 ГБ и больше.
  
  **Системные требования (Режим работы без видеокарты):**\
  ОС: Chimbalix 24.7\
  ЦП: AMD Ryzen 7 2700 / Intel Core i7-9700 или лучше.\
  ОЗУ: 16 ГБ и больше.
  
  **Рекомендуемые системные требования:**\
  ОС: Chimbalix 24.7\
  ЦП: AMD Ryzen 7 2700 / Intel Core i7-9700 или лучше.\
  ОЗУ: 32 ГБ и больше.\
  Видеокарта: GeForce GTX 1070 или лучше.\
  Видеопамять: 8 ГБ и больше.
  
  ВНИМАНИЕ! Убедитесь что у вас установлен ПОЛНОЦЕННЫЙ драйвер NVIDIA! (https://developer.nvidia.com/cuda-toolkit-archive)\
  Для примера CUDA 12.8 v570.86.10 (GTX 900+): https://developer.download.nvidia.com/compute/cuda/12.8.0/local_installers/cuda_12.8.0_570.86.10_linux.run
	
  ВНИМАНИЕ! Для работы сборки необходимы: git, python3.11 и python3-venv! (возможен запуск с python3.12)\
  Сборка предназначена для Chimbalix (https://github.com/Shedou/Chimbalix)! Она не проверялась на работоспособность в сторонних дистрибутивах Linux!
  
  ___
  
</details>

## Использование
- Использовать ярлыки в меню приложений или на рабочем столе для запуска.

или

- ! ВНИМАНИЕ ! Рекомендуется использовать локальные версии моделей загруженные вручную, автоматическая загрузка моделей из репозиториев не рекомендуется, так как репозитории могут измениться в любой момент по желанию владельцев!
- download-models-base.sh - Загрузить основной набор моделей для Stable Diffusion из репозиториев, BLIP, Codeformer, ESRGAN, GFPGAN и т.д. (примерно 4.6 GiB).
- download-preprocessors-controlnet.sh - Загрузить набор препроцессоров ControlNet (Annotators) из репозиториев (примерно 10.2 GiB).
- download-models-controlnet-sd15.sh - Загрузить набор моделей ControlNet из репозиториев (примерно 18.8 GiB).

- start-xformers-medvram.sh - Обычный запуск с оптимизациями xformers.
- start-xformers-lowvram.sh - Запуск в режиме пониженного потребления видеопамяти с оптимизациями xformers.
- start-medvram.sh - Обычный запуск.
- start-lowvram.sh - Запуск в режиме пониженного потребления видеопамяти.
- start-cpu.sh - Использовать ЦП для работы

## Полезное для Stable Diffusion
В данном разделе будут оставлены ссылки на полезные материалы для Stable Diffusion.
### Где можно найти модели:
**[https://huggingface.co/models](https://huggingface.co/models)**\
**[https://civitai.com/](https://civitai.com/)**.

### Тема на форуме 4PDA с разными полезными материалами и информацией:
**[https://4pda.to/forum/index.php?showtopic=1064573](https://4pda.to/forum/index.php?showtopic=1064573)**

### Сборка SD WebUI Neuro Linux v3 основана на Stable Diffusion web UI v1.10.1
Репозиторий **[AUTOMATIC1111/stable-diffusion-webui](https://github.com/AUTOMATIC1111/stable-diffusion-webui).**
## Блог Overclockers
### [overclockers.ru/blog/Hard-Workshop](https://overclockers.ru/blog/Hard-Workshop)

**Дополнения в составе сборки:**

sd-extension-steps-animation\
https://github.com/vladmandic/sd-extension-steps-animation

sd-webui-controlnet\
https://github.com/Mikubill/sd-webui-controlnet

sd-webui-3d-open-pose-editor\
https://github.com/nonnonstop/sd-webui-3d-open-pose-editor
