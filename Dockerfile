FROM bash
COPY runaction.sh /action/runaction
ENTRYPOINT ["bash", "/action/runaction"]
