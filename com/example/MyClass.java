package com.example;

interface OnEmitListener {
    void onEmit(Integer playbackTime);
}

class Player {
    public Boolean isPlaying = false;
    public Integer playbackTime = 0;
    private OnEmitListener emitListener;

    public void setOnEmitListener(OnEmitListener listener) {
        this.emitListener = listener;
    }

    public void play() {
        this.isPlaying = true;
        new Thread(() -> {
            while (isPlaying) {
                try {
                    Thread.sleep(1000);
                } catch (InterruptedException e) {
                    e.printStackTrace();
                }
                playbackTime += 1000;
                if (emitListener != null) {
                    emitListener.onEmit(playbackTime);
                }
            }
        }).start();
    }
}

public class MyClass {

    public static void main(String[] args) {

        for (int i = 0; i < 1000; i++) {
            Player player = new Player();
            player.play();

            System.out.println("Player " + i + " isPlaying: " + player.isPlaying);
            int finalI = i;
            player.setOnEmitListener(playbackTime -> {
                System.out.println("Current playback time for Player " + finalI + ": " + playbackTime / 1000 + " seconds");
            });
        }
    }
}
