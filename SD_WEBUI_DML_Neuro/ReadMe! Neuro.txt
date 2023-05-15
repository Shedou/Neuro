Stable Diffusion web UI DirectML Neuro v2.

Сборка создана для упрощения запуска и использования Stable Diffusion web UI.

Пожалуйста, воздержитесь от использования данной сборки если вы не готовы взять ответственность за любые возможные и невозможные последствия!
Внимание! Нейросеть может создавать неприемлемые изображения в зависимости от используемой модели и действий пользователя!

- Описание:
Не умеете рисовать, но очень хочется? Позвольте это сделать приложению Stable Diffusion!
Нейросеть нарисует всё что пожелаете, конечно же в пределах возможностей используемой модели...
Для генерации изображения достаточно написать текст в поле ввода и нажать кнопку "Generate",
но есть один нюанс, нейросеть понимает только слова на английском языке, впрочем,
никто не запрещает использовать переводчик отдельно если с английским языком всё очень плохо...

DirectML версия сборки способна работать на видеокартах AMD/NVIDIA и возможно Intel.

..........................................................
..........................................................

- Установка:
	Распаковать и использовать.

- Использование:
	Start WebUI DML.bat			Обычный запуск.
	Start WebUI DML CPU.bat		Использовать ЦП для работы (Режим работы без видеокарты).

	WebUI DML LowVRAM.bat			Режим низкого потребления памяти на видеокарте.
	WebUI DML NoFP16.bat			Работа в режиме полной точности (FP32), влияет на качество результата и может повлиять на скорость работы, нужно больше памяти.
	WebUI DML LowVRAM NoFP16.bat	Режим низкого потребления памяти на видеокарте и работа в режиме FP32.

- Внимание!
	В сборку встроен веб браузер Mozilla Firefox версии 112!
	Браузер Mozilla Firefox при первом(!) запуске вносит записи в раздел реестра "HKEY_CURRENT_USER\SOFTWARE\Mozilla\",
	они не обязательны для работы, но браузер их внесёт в реестр, и я не могу на это повлиять так как это делает сам браузер.
	Так как сборка портативная, рекомендую не устанавливать браузер из сборки как "браузер по умолчанию" в системе.

..........................................................
..........................................................
..........................................................
..........................................................
- Минимальные системные требования:
	ОС: 64 разрядная Microsoft Windows 10 / 11.
	ЦП: 2 ядра.
	ОЗУ: 16 ГБ.
	Видеокарта: DirectML совместимая.
	Видеопамять: 2 ГБ.
..........................................................
..........................................................
- Рекомендуемые системные требования:
	ОС: 64 разрядная Microsoft Windows 10 / 11.
	ЦП: AMD Ryzen 7 2700 / Intel Core i7-9700 или лучше.
	ОЗУ: 64 ГБ.
	Видеокарта: GeForce GTX 1070 / Radeon RX 6600 или лучше.
	Видеопамять: 8 ГБ и больше.
..........................................................
..........................................................
- Системные требования (Режим работы без видеокарты):
	ОС: 64 разрядная Microsoft Windows 10 / 11.
	ЦП: AMD Ryzen 7 2700 / Intel Core i7-9700 или лучше.
	ОЗУ: 64 ГБ.
	Видеокарта: Не имеет значения.
	Видеопамять: Не имеет значения.
..........................................................
..........................................................
..........................................................
..........................................................

Работа над сборкой: Chimbal(Shedou).

- Репозиторий с полезными сборками Neuro:
https://github.com/Shedou/Neuro

- Блог Overclockers:
https://overclockers.ru/blog/Hard-Workshop

Модель ChiMix_SF1-NED-AOM3_1 основана на AOM3-r34-SF1-pruned, neverendingDreamNED_bakedVae и возможно AOM3_orangemixs, пропорции неизвестны.
Ресурсы для поиска дополнительных моделей: https://huggingface.co/models, https://civitai.com/ и прочие подобные ресурсы.

- Сборка основана на Stable Diffusion web UI:
https://github.com/AUTOMATIC1111/stable-diffusion-webui

- Stable Diffusion web UI DirectML:
https://github.com/lshqqytiger/stable-diffusion-webui-directml

- Mozilla Firefox:
https://www.mozilla.org/

- Python:
https://github.com/adang1345/PythonWin7

- ffmpeg-6.0-full_build-shared:
https://www.gyan.dev/ffmpeg/builds/

Дополнения в составе сборки:

- multidiffusion-upscaler-for-automatic1111
https://github.com/pkuliyi2015/multidiffusion-upscaler-for-automatic1111

- sd-extension-steps-animation
https://github.com/vladmandic/sd-extension-steps-animation

..........................................................
..........................................................
..........................................................
..........................................................

- Список изменений:
2023-05-xx: Stable Diffusion web UI Neuro v2
1) Устранена зависимость от наличия современного веб браузера в системе пользователя.
Встроен портативный браузер Mozilla Firefox.
В файле "webui.py" добавлен код необходимый для автоматического запуска Firefox (строка #8, строка #272-280).

2023-04-xx: Stable Diffusion web UI Neuro
1) Первая версия сборки.

..........................................................
..........................................................

Список аргументов для опытных пользователей:

usage: launch.py [-h] [--update-all-extensions] [--skip-python-version-check] [--skip-torch-cuda-test]
                 [--reinstall-xformers] [--reinstall-torch] [--update-check] [--tests TESTS] [--no-tests]
                 [--skip-install] [--data-dir DATA_DIR] [--config CONFIG] [--ckpt CKPT] [--ckpt-dir CKPT_DIR]
                 [--vae-dir VAE_DIR] [--gfpgan-dir GFPGAN_DIR] [--gfpgan-model GFPGAN_MODEL] [--no-half]
                 [--no-half-vae] [--no-progressbar-hiding] [--max-batch-count MAX_BATCH_COUNT]
                 [--embeddings-dir EMBEDDINGS_DIR] [--textual-inversion-templates-dir TEXTUAL_INVERSION_TEMPLATES_DIR]
                 [--hypernetwork-dir HYPERNETWORK_DIR] [--localizations-dir LOCALIZATIONS_DIR] [--allow-code]
                 [--medvram] [--lowvram] [--lowram] [--always-batch-cond-uncond] [--unload-gfpgan]
                 [--precision {full,autocast}] [--upcast-sampling] [--share] [--ngrok NGROK]
                 [--ngrok-region NGROK_REGION] [--enable-insecure-extension-access]
                 [--codeformer-models-path CODEFORMER_MODELS_PATH] [--gfpgan-models-path GFPGAN_MODELS_PATH]
                 [--esrgan-models-path ESRGAN_MODELS_PATH] [--bsrgan-models-path BSRGAN_MODELS_PATH]
                 [--realesrgan-models-path REALESRGAN_MODELS_PATH] [--clip-models-path CLIP_MODELS_PATH] [--xformers]
                 [--force-enable-xformers] [--xformers-flash-attention] [--deepdanbooru] [--opt-split-attention]
                 [--opt-sub-quad-attention] [--sub-quad-q-chunk-size SUB_QUAD_Q_CHUNK_SIZE]
                 [--sub-quad-kv-chunk-size SUB_QUAD_KV_CHUNK_SIZE]
                 [--sub-quad-chunk-threshold SUB_QUAD_CHUNK_THRESHOLD] [--opt-split-attention-invokeai]
                 [--opt-split-attention-v1] [--opt-sdp-attention] [--opt-sdp-no-mem-attention]
                 [--disable-opt-split-attention] [--disable-nan-check] [--disable-experimental-memopt]
                 [--use-cpu USE_CPU [USE_CPU ...]] [--listen] [--port PORT] [--show-negative-prompt]
                 [--ui-config-file UI_CONFIG_FILE] [--hide-ui-dir-config] [--freeze-settings]
                 [--ui-settings-file UI_SETTINGS_FILE] [--gradio-debug] [--gradio-auth GRADIO_AUTH]
                 [--gradio-auth-path GRADIO_AUTH_PATH] [--gradio-img2img-tool GRADIO_IMG2IMG_TOOL]
                 [--gradio-inpaint-tool GRADIO_INPAINT_TOOL] [--opt-channelslast] [--styles-file STYLES_FILE]
                 [--autolaunch] [--theme THEME] [--use-textbox-seed] [--disable-console-progressbars]
                 [--enable-console-prompts] [--vae-path VAE_PATH] [--disable-safe-unpickle] [--api]
                 [--api-auth API_AUTH] [--api-log] [--nowebui] [--ui-debug-mode] [--device-id DEVICE_ID]
                 [--administrator] [--cors-allow-origins CORS_ALLOW_ORIGINS]
                 [--cors-allow-origins-regex CORS_ALLOW_ORIGINS_REGEX] [--tls-keyfile TLS_KEYFILE]
                 [--tls-certfile TLS_CERTFILE] [--server-name SERVER_NAME] [--gradio-queue] [--no-gradio-queue]
                 [--skip-version-check] [--no-hashing] [--no-download-sd-model]

options:
  -h, --help            show this help message and exit
  --update-all-extensions
                        launch.py argument: download updates for all extensions when starting the program
  --skip-python-version-check
                        launch.py argument: do not check python version
  --skip-torch-cuda-test
                        launch.py argument: do not check if CUDA is able to work properly
  --reinstall-xformers  launch.py argument: install the appropriate version of xformers even if you have some version
                        already installed
  --reinstall-torch     launch.py argument: install the appropriate version of torch even if you have some version
                        already installed
  --update-check        launch.py argument: chck for updates at startup
  --tests TESTS         launch.py argument: run tests in the specified directory
  --no-tests            launch.py argument: do not run tests even if --tests option is specified
  --skip-install        launch.py argument: skip installation of packages
  --data-dir DATA_DIR   base path where all user data is stored
  --config CONFIG       path to config which constructs model
  --ckpt CKPT           path to checkpoint of stable diffusion model; if specified, this checkpoint will be added to
                        the list of checkpoints and loaded
  --ckpt-dir CKPT_DIR   Path to directory with stable diffusion checkpoints
  --vae-dir VAE_DIR     Path to directory with VAE files
  --gfpgan-dir GFPGAN_DIR
                        GFPGAN directory
  --gfpgan-model GFPGAN_MODEL
                        GFPGAN model file name
  --no-half             do not switch the model to 16-bit floats
  --no-half-vae         do not switch the VAE model to 16-bit floats
  --no-progressbar-hiding
                        do not hide progressbar in gradio UI (we hide it because it slows down ML if you have hardware
                        acceleration in browser)
  --max-batch-count MAX_BATCH_COUNT
                        maximum batch count value for the UI
  --embeddings-dir EMBEDDINGS_DIR
                        embeddings directory for textual inversion (default: embeddings)
  --textual-inversion-templates-dir TEXTUAL_INVERSION_TEMPLATES_DIR
                        directory with textual inversion templates
  --hypernetwork-dir HYPERNETWORK_DIR
                        hypernetwork directory
  --localizations-dir LOCALIZATIONS_DIR
                        localizations directory
  --allow-code          allow custom script execution from webui
  --medvram             enable stable diffusion model optimizations for sacrificing a little speed for low VRM usage
  --lowvram             enable stable diffusion model optimizations for sacrificing a lot of speed for very low VRM
                        usage
  --lowram              load stable diffusion checkpoint weights to VRAM instead of RAM
  --always-batch-cond-uncond
                        disables cond/uncond batching that is enabled to save memory with --medvram or --lowvram
  --unload-gfpgan       does not do anything.
  --precision {full,autocast}
                        evaluate at this precision
  --upcast-sampling     upcast sampling. No effect with --no-half. Usually produces similar results to --no-half with
                        better performance while using less memory.
  --share               use share=True for gradio and make the UI accessible through their site
  --ngrok NGROK         ngrok authtoken, alternative to gradio --share
  --ngrok-region NGROK_REGION
                        The region in which ngrok should start.
  --enable-insecure-extension-access
                        enable extensions tab regardless of other options
  --codeformer-models-path CODEFORMER_MODELS_PATH
                        Path to directory with codeformer model file(s).
  --gfpgan-models-path GFPGAN_MODELS_PATH
                        Path to directory with GFPGAN model file(s).
  --esrgan-models-path ESRGAN_MODELS_PATH
                        Path to directory with ESRGAN model file(s).
  --bsrgan-models-path BSRGAN_MODELS_PATH
                        Path to directory with BSRGAN model file(s).
  --realesrgan-models-path REALESRGAN_MODELS_PATH
                        Path to directory with RealESRGAN model file(s).
  --clip-models-path CLIP_MODELS_PATH
                        Path to directory with CLIP model file(s).
  --xformers            enable xformers for cross attention layers
  --force-enable-xformers
                        enable xformers for cross attention layers regardless of whether the checking code thinks you
                        can run it; do not make bug reports if this fails to work
  --xformers-flash-attention
                        enable xformers with Flash Attention to improve reproducibility (supported for SD2.x or
                        variant only)
  --deepdanbooru        does not do anything
  --opt-split-attention
                        force-enables Doggettx's cross-attention layer optimization. By default, it's on for torch
                        cuda.
  --opt-sub-quad-attention
                        enable memory efficient sub-quadratic cross-attention layer optimization
  --sub-quad-q-chunk-size SUB_QUAD_Q_CHUNK_SIZE
                        query chunk size for the sub-quadratic cross-attention layer optimization to use
  --sub-quad-kv-chunk-size SUB_QUAD_KV_CHUNK_SIZE
                        kv chunk size for the sub-quadratic cross-attention layer optimization to use
  --sub-quad-chunk-threshold SUB_QUAD_CHUNK_THRESHOLD
                        the percentage of VRAM threshold for the sub-quadratic cross-attention layer optimization to
                        use chunking
  --opt-split-attention-invokeai
                        force-enables InvokeAI's cross-attention layer optimization. By default, it's on when cuda is
                        unavailable.
  --opt-split-attention-v1
                        enable older version of split attention optimization that does not consume all the VRAM it can
                        find
  --opt-sdp-attention   enable scaled dot product cross-attention layer optimization; requires PyTorch 2.*
  --opt-sdp-no-mem-attention
                        enable scaled dot product cross-attention layer optimization without memory efficient
                        attention, makes image generation deterministic; requires PyTorch 2.*
  --disable-opt-split-attention
                        force-disables cross-attention layer optimization
  --disable-nan-check   do not check if produced images/latent spaces have nans; useful for running without a
                        checkpoint in CI
  --disable-experimental-memopt
                        Disable experimental graphic memory optimizations
  --use-cpu USE_CPU [USE_CPU ...]
                        use CPU as torch device for specified modules
  --listen              launch gradio with 0.0.0.0 as server name, allowing to respond to network requests
  --port PORT           launch gradio with given server port, you need root/admin rights for ports < 1024, defaults to
                        7860 if available
  --show-negative-prompt
                        does not do anything
  --ui-config-file UI_CONFIG_FILE
                        filename to use for ui configuration
  --hide-ui-dir-config  hide directory configuration from webui
  --freeze-settings     disable editing settings
  --ui-settings-file UI_SETTINGS_FILE
                        filename to use for ui settings
  --gradio-debug        launch gradio with --debug option
  --gradio-auth GRADIO_AUTH
                        set gradio authentication like "username:password"; or comma-delimit multiple like
                        "u1:p1,u2:p2,u3:p3"
  --gradio-auth-path GRADIO_AUTH_PATH
                        set gradio authentication file path ex. "/path/to/auth/file" same auth format as --gradio-auth
  --gradio-img2img-tool GRADIO_IMG2IMG_TOOL
                        does not do anything
  --gradio-inpaint-tool GRADIO_INPAINT_TOOL
                        does not do anything
  --opt-channelslast    change memory type for stable diffusion to channels last
  --styles-file STYLES_FILE
                        filename to use for styles
  --autolaunch          open the webui URL in the system's default browser upon launch
  --theme THEME         launches the UI with light or dark theme
  --use-textbox-seed    use textbox for seeds in UI (no up/down, but possible to input long seeds)
  --disable-console-progressbars
                        do not output progressbars to console
  --enable-console-prompts
                        print prompts to console when generating with txt2img and img2img
  --vae-path VAE_PATH   Checkpoint to use as VAE; setting this argument disables all settings related to VAE
  --disable-safe-unpickle
                        disable checking pytorch models for malicious code
  --api                 use api=True to launch the API together with the webui (use --nowebui instead for only the
                        API)
  --api-auth API_AUTH   Set authentication for API like "username:password"; or comma-delimit multiple like
                        "u1:p1,u2:p2,u3:p3"
  --api-log             use api-log=True to enable logging of all API requests
  --nowebui             use api=True to launch the API instead of the webui
  --ui-debug-mode       Don't load model to quickly launch UI
  --device-id DEVICE_ID
                        Select the default CUDA device to use (export CUDA_VISIBLE_DEVICES=0,1,etc might be needed
                        before)
  --administrator       Administrator rights
  --cors-allow-origins CORS_ALLOW_ORIGINS
                        Allowed CORS origin(s) in the form of a comma-separated list (no spaces)
  --cors-allow-origins-regex CORS_ALLOW_ORIGINS_REGEX
                        Allowed CORS origin(s) in the form of a single regular expression
  --tls-keyfile TLS_KEYFILE
                        Partially enables TLS, requires --tls-certfile to fully function
  --tls-certfile TLS_CERTFILE
                        Partially enables TLS, requires --tls-keyfile to fully function
  --server-name SERVER_NAME
                        Sets hostname of server
  --gradio-queue        does not do anything
  --no-gradio-queue     Disables gradio queue; causes the webpage to use http requests instead of websockets; was the
                        defaul in earlier versions
  --skip-version-check  Do not check versions of torch and xformers
  --no-hashing          disable sha256 hashing of checkpoints to help loading performance
  --no-download-sd-model
                        don't download SD1.5 model even if no model is found in --ckpt-dir