# Сборка Stable Diffusion web UI Neuro
## Пожалуйста, воздержитесь от использования любых файлов и информации из репозитория если вы не готовы взять ответственность за любые возможные и невозможные последствия!
## Внимание! Нейросеть может создавать неприемлемые изображения в зависимости от используемой модели и действий пользователя!
## Описание
Не умеете рисовать, но очень хочется? Позвольте это сделать приложению Stable Diffusion!

Нейросеть нарисует всё что пожелаете, конечно же в пределах возможностей используемой модели...
Для генерации изображения достаточно написать текст в поле ввода и нажать кнопку "Generate", но есть один нюанс, нейросеть понимает только слова на английском языке, впрочем, никто не запрещает использовать переводчик отдельно если с английским языком всё очень плохо...

### Что нового в версии v2:

<details>
<summary>В сборку встроен браузер Mozilla Firefox</summary>

___
Теперь сборка не зависит от наличия браузера в системе пользователя.
___
</details>

<details>
<summary>По умолчанию использован cudart v11.4 вместо v 11.7</summary>

___

Это позволило упростить BAT файлы для запуска сборки и сохранить совместимость с Windows 7/10/11 одновременно.

При необходимости возможна смена версии cudart с помощью BAT файлов специально предназначенных для этого в папке Redist.
___
</details>

<details>

___
<summary>Переименованы BAT файлы</summary>

Добавлено слово CUDA в имя BAT файлов, это в будущем поможет отличить CUDA и DirectML версии сборок при размещении в одной папке.
___
</details>

### Примеры работы:

`Model:` ChiMix_SF1-NED-AOM3_1 `Model hash:` 08c8bbb6f1 `Size:` 1280x720 `CFG scale:` 7 `Steps:` 100\
`GPU:` MSI GeForce GTX 1070 AERO OC 8GB `VRAM Used:` ~6.2GB
|`Promt:` snow weather, two lane road, forest, mountains<br />`Negative prompt:` low quality|`Promt:` desert, mountains, graceful girl sitting on a chair, long blue detailed dress, anime<br />`Negative prompt:` low quality, water|`Promt:` truck, city<br />`Negative prompt:` low quality|
|:---|:---|:---|
|`Sampler:` UniPC `Seed:` 3158812105<br />Time Taken: 5m 45s.|`Sampler:` DPM2 a `Seed:` 2684654605<br />Time Taken: 11m 17s.|`Sampler:` UniPC `Seed:` 3898112984<br />Time Taken: 5m 39s.|
|![1_](https://github.com/Shedou/Neuro/assets/19572158/b3a79ea3-9fb8-489f-a4df-6fc3de0c7459)|![6_](https://github.com/Shedou/Neuro/assets/19572158/ed4e64de-0d41-4c5c-8844-2f7a46e7863d)|![5_](https://github.com/Shedou/Neuro/assets/19572158/f1e7dd15-5725-4377-88da-5541c0dab7ec)|

## Установка Stable Diffusion web UI Neuro
### [Скачать сборку Stable Diffusion web UI Neuro (v2)](https://github.com/Shedou/Neuro/releases/tag/SD_WEBUI_v2) и распаковать архиватором [7-Zip](https://7-zip.org/).

<details>
<summary>Предыдущие версии</summary>

___
[Stable Diffusion web UI Neuro v1](https://github.com/Shedou/Neuro/releases/tag/SD_WEBUI_v1)
___
</details>

## Системные требования
<details>
<summary>Минимальные системные требования</summary>

___
ОС: 64 разрядная Microsoft Windows 7 / 10 / 11.\
ЦП: 64 разрядный процессор, 2 ядра.\
ОЗУ: 16 ГБ и больше.\
Видеокарта: GeForce GTX 700 серии и новее (см. список поддерживаемых видеокарт в файле "ReadMe! Neuro.txt").\
Видеопамять: 2 ГБ и больше.
___
</details>
<details>
<summary>Системные требования (Режим работы без видеокарты)</summary>

___
ОС: 64 разрядная Microsoft Windows 7 / 10 / 11.\
ЦП: AMD Ryzen 7 2700 / Intel Core i7-9700 или лучше.\
ОЗУ: 24 ГБ и больше.
___
</details>
<details>
<summary>Рекомендуемые системные требования</summary>

___
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

Описание остальных файлов смотреть в файле "ReadMe! Neuro.txt".
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
