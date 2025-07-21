# FROM ubuntu:20.04

# ENV DEBIAN_FRONTEND=noninteractive

# RUN apt-get update && apt-get install -y \
#     curl git unzip xz-utils zip libglu1-mesa \
#     clang cmake make pkg-config libgtk-3-dev \
#     liblzma-dev ca-certificates \
#     && apt-get clean

# ENV FLUTTER_HOME=/opt/flutter
# ENV PATH="$FLUTTER_HOME/bin:$FLUTTER_HOME/bin/cache/dart-sdk/bin:$PATH"

# RUN git clone https://github.com/flutter/flutter.git -b stable --depth 1 $FLUTTER_HOME

# RUN flutter doctor

# WORKDIR /app

# COPY . .

# RUN flutter pub get

# EXPOSE 8080

# CMD ["flutter", "run", "-d", "web-server", "--web-hostname=0.0.0.0", "--web-port=8080"]

FROM lmatrangolo/flutter-custom

WORKDIR /app
COPY . .
RUN flutter pub get

CMD ["flutter", "run", "-d", "web-server", "--web-hostname=0.0.0.0", "--web-port=8080"]

