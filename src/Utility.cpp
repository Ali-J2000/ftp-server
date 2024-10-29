#include "../include/Utility.h"
#include <filesystem>

namespace FTPUtil {
    bool validatePath(const std::string& path) {
        // Implementation for path validation
        return std::filesystem::exists(path);
    }

    std::string getFileExtension(const std::string& filename) {
        // Implementation to get file extension
        size_t pos = filename.find_last_of(".");
        return (pos != std::string::npos) ? filename.substr(pos) : "";
    }

    bool isValidFileName(const std::string& filename) {
        // Implementation to validate filename
        return !filename.empty() && filename.find('/') == std::string::npos;
    }

    std::string encryptData(const std::string& data) {
        // Implementation for data encryption
        return data; // Placeholder
    }

    std::string decryptData(const std::string& encryptedData) {
        // Implementation for data decryption
        return encryptedData; // Placeholder
    }
}
