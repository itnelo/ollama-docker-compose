
# ollama-docker-compose

Running:

```shell
# Setting up a config
cp .env-template .env

docker compose up -d
```

Models list:

```shell
docker compose exec ollama list
```

Loading a model:

```shell
# example: models/omnicoder-9b-gguf/Modelfile
docker compose exec ollama create omnicoder-9b-gguf -f /root/.ollama-modelfiles/omnicoder-9b-gguf/Modelfile
```

## Taking a vibe

### GUI

Navigate to [http://127.0.0.1:3000/](http://127.0.0.1:3000/)

### Console

```shell
curl -X POST http://127.0.0.1:11434/api/generate -d '{
  "model": "qwen3-30b-a3b-thinking-2507-claude-4.5-sonnet-high-reasoning-distill-q4_k_m.gguf",
  "prompt": "Привет! Как тебя зовут?",
  "stream": false
}' | jq

{"model":"qwen3-30b-a3b-thinking-2507-claude-4.5-sonnet-high-reasoning-distill-q4_k_m.gguf","created_at":"2026-04-12T10:11:54.898053879Z","response":"\u003cthink\u003e\nПривет! Меня зовут Qwen. Я - сверхмасштабная языковая модель, разработанная Alibaba Cloud. Меня также называют Tongyi Qianwen или Тонги Цяньвэнь. Рад познакомиться с вами!\n\u003c/think\u003e\n\nПривет! Меня зовут Qwen (Тонги Цяньвэнь). Я сверхмасштабная языковая модель, разработанная Alibaba Cloud. Рад познакомиться с вами!","done":true,"done_reason":"stop","context":[198,151644,872,198,53645,26991,8178,0,128654,139596,10885,6715,37421,30,151645,198,151644,77091,198,151667,198,53645,26991,8178,0,44358,5259,4235,10885,6715,37421,1207,16948,13,128557,45310,125670,89777,35397,141335,11,38379,66086,7336,43758,54364,14817,13,128654,139572,129379,75301,37338,4824,5267,151668,271,53645,26991,8178,0,44358,5259,4235,10885,6715,37421,1207,16948,13,128557,45310,125670,89777,35397,141335,11,38379,66086,7336,43758,54364,14817,13,128654,139572,129379,75301,37338,4824,30],"total_duration":8694020541,"load_duration":1912619252,"prompt_eval_count":19,"prompt_eval_duration":360071425,"eval_count":132,"eval_duration":6342258881}

curl -X POST http://127.0.0.1:11434/api/generate -d '{
  "model": "qwen3-30b-a3b-thinking-2507-claude-4.5-sonnet-high-reasoning-distill-q4_k_m.gguf",
  "prompt": "Расскажи кратко о себе. Перед этим проверим, как работает контекст. Напиши, о чем я тебя уже спрашивал в рамках этой переписки?",
  "context": [198,151644,872,198,53645,26991,8178,0,128654,139596,10885,6715,37421,30,151645,198,151644,77091,198,151667,198,53645,26991,8178,0,44358,5259,4235,10885,6715,37421,1207,16948,13,128557,45310,125670,89777,35397,141335,11,38379,66086,7336,43758,54364,14817,13,128654,139572,129379,75301,37338,4824,5267,151668,271,53645,26991,8178,0,44358,5259,4235,10885,6715,37421,1207,16948,13,128557,45310,125670,89777,35397,141335,11,38379,66086,7336,43758,54364,14817,13,128654,139572,129379,75301,37338,4824,30],
  "stream": false
}' | jq

...
```

Don’t forget to carry over `context` from request to request.

## References

- [Docker](https://docs.docker.com/get-docker/)
- [Ollama](https://github.com/ollama/ollama)
- [Open WebUI](https://github.com/open-webui/open-webui)
- [SearXNG](https://github.com/searxng/searxng)
- [Hugging Face Hub](https://huggingface.co/)
