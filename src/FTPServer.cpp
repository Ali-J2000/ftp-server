#include "../include/FTPServer.h"
#include <iostream>
#include <thread>
#include <unistd.h>
#include <cstring>
#include <ifaddrs.h>

FTPServer::FTPServer(int port) : port_(port), running_(false) {
    server_socket_ = socket(AF_INET, SOCK_STREAM, 0);
    if (server_socket_ < 0) {
        std::cerr << "Error creating socket" << std::endl;
        return;
    }

    // Allow socket reuse
    int opt = 1;
    setsockopt(server_socket_, SOL_SOCKET, SO_REUSEADDR, &opt, sizeof(opt));

    // Setup server address structure
    memset(&server_address_, 0, sizeof(server_address_));
    server_address_.sin_family = AF_INET;
    server_address_.sin_addr.s_addr = INADDR_ANY;
    server_address_.sin_port = htons(port_);
}

FTPServer::~FTPServer() {
    if (running_) {
        stop();
    }
    close(server_socket_);
}

std::string FTPServer::getIPAddress() const {
    struct ifaddrs *ifAddrStruct = nullptr;
    std::string ip_address = "127.0.0.1"; // Default to localhost

    getifaddrs(&ifAddrStruct);

    for (struct ifaddrs *ifa = ifAddrStruct; ifa != nullptr; ifa = ifa->ifa_next) {
        if (!ifa->ifa_addr) {
            continue;
        }
        if (ifa->ifa_addr->sa_family == AF_INET) { // Check if it's IP4
            void *tmpAddrPtr = &((struct sockaddr_in *)ifa->ifa_addr)->sin_addr;
            char addressBuffer[INET_ADDRSTRLEN];
            inet_ntop(AF_INET, tmpAddrPtr, addressBuffer, INET_ADDRSTRLEN);
            
            // Skip localhost address
            if (std::string(addressBuffer) != "127.0.0.1") {
                ip_address = addressBuffer;
                break;
            }
        }
    }
    
    if (ifAddrStruct != nullptr) {
        freeifaddrs(ifAddrStruct);
    }
    
    return ip_address;
}

bool FTPServer::start() {
    if (bind(server_socket_, (struct sockaddr *)&server_address_, sizeof(server_address_)) < 0) {
        std::cerr << "Error binding socket" << std::endl;
        return false;
    }

    if (listen(server_socket_, 5) < 0) {
        std::cerr << "Error listening on socket" << std::endl;
        return false;
    }

    running_ = true;
    std::string ip = getIPAddress();
    std::cout << "FTP server starting on IP: " << ip << ", Port: " << port_ << std::endl;
    std::cout << "To connect from FileZilla or other FTP clients:" << std::endl;
    std::cout << "Host: " << ip << std::endl;
    std::cout << "Port: " << port_ << std::endl;
    std::cout << "Username: anonymous (for now)" << std::endl;
    std::cout << "Password: (leave empty for now)" << std::endl;
    
    return true;
}

void FTPServer::stop() {
    if (running_) {
        std::cout << "Stopping FTP server" << std::endl;
        running_ = false;
        close(server_socket_);
    }
}
