#ifndef FTP_SERVER_H
#define FTP_SERVER_H

#include <string>
#include <atomic>
#include <sys/socket.h>
#include <netinet/in.h>
#include <arpa/inet.h>

class FTPServer {
public:
    FTPServer(int port = 21);
    ~FTPServer();

    bool start();
    void stop();
    
    // Get server information
    std::string getIPAddress() const;
    int getPort() const { return port_; }

private:
    int port_;
    int server_socket_;
    std::atomic<bool> running_;
    struct sockaddr_in server_address_;
    
    void handleClient(int client_socket);
};

#endif
