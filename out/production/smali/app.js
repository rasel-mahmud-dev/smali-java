class Player {
    constructor() {
        this.isPlaying = false;
        this.playbackTime = 0;
        this.emitListener = null;
    }

    setOnEmitListener(listener) {
        this.emitListener = listener;
    }

    play() {
        this.isPlaying = true;
        const interval = setInterval(() => {
            if (!this.isPlaying) {
                clearInterval(interval); // Stop the interval when playback is stopped
                return;
            }
            this.playbackTime += 1000;
            if (this.emitListener) {
                this.emitListener(this.playbackTime);
            }
        }, 1000); // Emit every 1000ms (1 second)
    }

    stop() {
        this.isPlaying = false;
    }
}

function main() {
    for (let i = 0; i < 1000; i++) {
        const player = new Player();
        player.play();

        console.log(`Player ${i} isPlaying: ${player.isPlaying}`);

        const finalI = i;
        player.setOnEmitListener((playbackTime) => {
            console.log(`Current playback time for Player ${finalI}: ${playbackTime / 1000} seconds`);
        });
    }
}

// Call main to start the simulation
main();
