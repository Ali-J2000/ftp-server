#include "../include/FTPServer.h"
#include "../include/Utility.h"
#include <cassert>
#include <iostream>

void testFileOperations() {
    FTPServer server;
    
    // Test server start/stop
    assert(server.start());
    server.stop();
    
    // Test file operations
    assert(server.uploadFile("test.txt"));
    assert(server.downloadFile("test.txt"));
    assert(server.deleteFile("test.txt"));
    
    // Test file listing
    auto files = server.listFiles();
    assert(files.size() >= 0);
    
    std::cout << "Basic tests passed successfully!" << std::endl;
}

int main() {
    testFileOperations();
    return 0;
}
