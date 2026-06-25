
ARG OLLAMA_VERSION
FROM ollama/ollama:${OLLAMA_VERSION}

# Upstream (verified on ollama/ollama): ENTRYPOINT ["/bin/ollama"] CMD ["serve"].
# Wrapper chains to the same binary so behavior matches the stock image.
# --chmod needs BuildKit (default in recent Docker / `docker compose build`).
COPY --chmod=755 entrypoint.sh /usr/local/bin/ollama-entrypoint
COPY --chmod=755 bin/ollama-exec-shim /usr/local/lib/ollama-compose/ollama-exec-shim
RUN for _c in serve create show run stop pull push signin signout list ps cp rm launch help; do \
         ln -sf /usr/local/lib/ollama-compose/ollama-exec-shim "/usr/local/bin/${_c}"; \
       done

ENTRYPOINT ["/usr/local/bin/ollama-entrypoint"]
CMD ["serve"]
