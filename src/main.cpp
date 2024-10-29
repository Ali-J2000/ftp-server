#include "../include/FTPServer.h"
#include <iostream>
#include <signal.h>
#include <atomic>
#include <thread>
#include <chrono>

std::atomic<bool> running(true);

void signalHandler(int signum) {
    std::cout << "\nSignal (" << signum << ") received. Shutting down...\n";
    running = false;
}

int main() {
    signal(SIGINT, signalHandler);
    
    FTPServer server;
    if (!server.start()) {
        std::cerr << "Failed to start FTP server!" << std::endl;
        return 1;
    }
    
    std::cout << "\nServer is running. Press Ctrl+C to stop." << std::endl;
    
    while (running) {
        std::this_thread::sleep_for(std::chrono::seconds(1));
    }
    
    server.stop();
    std::cout << "Server shutdown complete." << std::endl;
    
    return 0;
}
