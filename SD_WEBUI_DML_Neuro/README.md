# Сборка Stable Diffusion web UI DirectML Neuro
## Пожалуйста, воздержитесь от использования любых файлов и информации из репозитория если вы не готовы взять ответственность за любые возможные и невозможные последствия!
## Внимание! Нейросеть может создавать неприемлемые изображения в зависимости от используемой модели и действий пользователя!
# Описание
Не умеете рисовать, но очень хочется? Позвольте это сделать приложению Stable Diffusion!

Нейросеть нарисует всё что пожелаете, конечно же в пределах возможностей используемой модели... Для генерации изображения достаточно написать текст в поле ввода и нажать кнопку "Generate", но есть один нюанс, нейросеть понимает только слова на английском языке, впрочем, никто не запрещает использовать переводчик отдельно если с английским языком всё очень плохо...

DirectML версия сборки способна работать на видеокартах AMD/NVIDIA и возможно Intel.

### Примеры работы:

`Model:` ChiMix_SF1-NED-AOM3_1 `Model hash:` 08c8bbb6f1 `Size:` 768x512 `Steps:` 80\
`GPU:` MSI GeForce GTX 1070 AERO OC 8GB `VRAM Used:` ~7GB.
|`Promt:` room with antique curtains, table and chair, flowers on pot, city background on window, realistic<br />`Negative prompt:` low quality, bad geometry|`Promt:` (realistic, photo-realistic:1.3), frosted glass bottle, grass<br />`Negative prompt:` low quality, bad geometry|`Promt:` girl, princess dress, photography, castle on background<br />`Negative prompt:` low quality, bad anatomy, bad hands, fused fingers, open mouth|
|:---|:---|:---|
|`Sampler:` Euler a `Seed:` 3211360489 `CFG scale:` 7 `Time Taken:` 2m 5s.|`Sampler:` DPM2 a `Seed:` 920613217 `CFG scale:` 14 `Time Taken:` 3m 58s.|`Sampler:` DPM++ 2S a Karras `Seed:` 3679921889 `CFG scale:` 14 `Time Taken:` 3m 59s.|
|![1](https://github.com/Shedou/Neuro/assets/19572158/4e3470a3-2ae0-45fa-a014-8b60e912728d)|![6](https://github.com/Shedou/Neuro/assets/19572158/9512d6e7-cd93-4d5c-b6f4-11203a885be2)|![5](https://github.com/Shedou/Neuro/assets/19572158/f15511c7-aa61-49e5-ae48-c43a78cee02e)|

# Установка Stable Diffusion web UI DirectML Neuro
### [Скачать сборку Stable Diffusion web UI DirectML Neuro (v2)](https://github.com/Shedou/Neuro/releases/tag/SD_WEBUI_DML_v2) и распаковать архиватором [7-Zip](https://7-zip.org/).

<details>
  <summary>Что нового в версии v2:</summary>

  - В сборку встроен браузер Mozilla Firefox: Теперь сборка не зависит от наличия браузера в системе пользователя.
  
  - Переименованы BAT файлы: Добавлено слово DML в имя BAT файлов, это в будущем поможет отличить CUDA и DirectML версии сборок при размещении в одной папке.

</details>

<details>
  <summary>Предыдущие версии</summary>
  
  ___
  [Stable Diffusion web UI DirectML Neuro v1](https://github.com/Shedou/Neuro/releases/tag/SD_WEBUI_DML_v1)
  ___
</details>

## Системные требования

<details>
  <summary>Минимальные системные требования</summary>
  
  **ОС:** 64 разрядная Microsoft Windows 10 / 11.\
  **ЦП:** 2 ядра.\
  **ОЗУ:** 16 ГБ.\
  **Видеокарта:** DirectML совместимая.\
  **Видеопамять:** 2 ГБ.
  
</details>
<details>
  <summary>Рекомендуемые системные требования (Режим работы без видеокарты)</summary>
  
  **ОС:** 64 разрядная Microsoft Windows 10 / 11.\
  **ЦП:** AMD Ryzen 7 2700 / Intel Core i7-9700 или лучше.\
  **ОЗУ:** 64 ГБ.
  
</details>
<details>
  <summary>Рекомендуемые системные требования</summary>
  
  **ОС:** 64 разрядная Microsoft Windows 10 / 11.\
  **ЦП:** AMD Ryzen 7 2700 / Intel Core i7-9700 или лучше.\
  **ОЗУ:** 64 ГБ.\
  **Видеокарта:** GeForce GTX 1070 / Radeon RX 6600 или лучше.\
  **Видеопамять:** 8 ГБ и больше.
  
</details>

# Использование
- **Start WebUI DML.bat** - Обычный запуск.
- Start WebUI DML CPU.bat - Использовать ЦП для работы (Режим работы без видеокарты).

<details>
  <summary>Другие варианты запуска</summary>
  
  ___
  - WebUI DML LowVRAM.bat
  
  Режим низкого потребления памяти на видеокарте, полезно для видеокарт с 2-3 ГБ памяти, снижает скорость работы.
  
  - WebUI DML NoFP16.bat
  
  Запрет на работу с низкой точностью FP16, вероятно позволит работать устаревшим видеокартам, увеличивает расход памяти.
  
  - WebUI DML LowVRAM NoFP16.bat
  
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

Репозиторий **[lshqqytiger/stable-diffusion-webui-directml](https://github.com/lshqqytiger/stable-diffusion-webui-directml).**
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
