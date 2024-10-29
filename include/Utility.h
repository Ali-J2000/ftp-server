#ifndef FTP_UTILITY_H
#define FTP_UTILITY_H

#include <string>

namespace FTPUtil {
    // Function declarations for utility functions
    bool validatePath(const std::string& path);
    std::string getFileExtension(const std::string& filename);
    bool isValidFileName(const std::string& filename);
    
    // Optional: Data encryption functions
    std::string encryptData(const std::string& data);
    std::string decryptData(const std::string& encryptedData);
}

#endif // FTP_UTILITY_H
