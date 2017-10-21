package com.cookbook.utilities.files;

import com.cookbook.utilities.constants.Constants;
import org.springframework.web.multipart.MultipartFile;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;

public class FileManager {
    public static void upload(MultipartFile file) {
        if (!file.isEmpty()) {
            try {
                String filePath = System.getProperty("user.dir") + Constants.FILE_UPLOAD_FOLDER;
                String fileName = file.getOriginalFilename();
                FileOutputStream fileOutputStream = new FileOutputStream(new File(filePath + fileName));
                BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(fileOutputStream);
                bufferedOutputStream.write(file.getBytes());
                bufferedOutputStream.close();
            } catch (Exception e) {
                System.out.println(e.getMessage());
            }
        }
    }

    public static void unload(String fileName) {
        try {
            String filePath = System.getProperty("user.dir") + Constants.FILE_UPLOAD_FOLDER;
            File file = new File(filePath + fileName);
            file.delete();
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
    }
}
