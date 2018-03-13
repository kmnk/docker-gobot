FROM golang:latest

RUN go get github.com/bwmarrin/discordgo\
 && mkdir -p $GOPATH/src/github.com/kmnk/docker-gobot

WORKDIR $GOPATH/src/github.com/kmnk/docker-gobot

COPY main.go $GOPATH/src/github.com/kmnk/docker-gobot

ENTRYPOINT ["go", "run", "main.go"]
