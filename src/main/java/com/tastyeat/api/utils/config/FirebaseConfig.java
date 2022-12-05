package com.tastyeat.api.utils.config;

import com.google.auth.Credentials;
import com.google.auth.oauth2.GoogleCredentials;
import com.google.cloud.storage.*;
import com.google.firebase.FirebaseApp;
import com.google.firebase.FirebaseOptions;
import com.google.firebase.cloud.StorageClient;
import com.tastyeat.api.utils.functions.CommonFunctions;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.net.URLEncoder;
import java.nio.charset.StandardCharsets;
import java.nio.file.Files;
import java.util.HashMap;

@Component
@RequiredArgsConstructor
public class FirebaseConfig {
    @Value("${FIREBASE_BUCKET_NAME}")
    private String FIREBASE_BUCKET_NAME;

    @Value("${FIREBASE_DOWNLOAD_URL}")
    private String DOWNLOAD_URL;

    @Value("${SERVICE_ACCOUNT_KEY}")
    private String SERVICE_ACCOUNT_PATH;

    @Autowired
    private CommonFunctions commonFunctions;

    public void FirebaseConfig() throws IOException {
        FileInputStream serviceAccount = new FileInputStream(SERVICE_ACCOUNT_PATH);

        FirebaseOptions options = FirebaseOptions.builder()
                .setCredentials(GoogleCredentials.fromStream(serviceAccount))
                .setStorageBucket(FIREBASE_BUCKET_NAME)
                .build();
        FirebaseApp.initializeApp(options);

        Bucket bucket = StorageClient.getInstance().bucket();
    }

    public HashMap<String, Object> uploadImage(MultipartFile multipartFile) {
        HashMap<String, Object> response = new HashMap<>();

        try {
            String filename = commonFunctions.formatFileName(multipartFile);
            File file = this.convertToFile(multipartFile, filename);

            String uploadFileURL = this.uploadFile(file, filename);

            file.delete();

            response.put("success", true);
            response.put("imageUrl", uploadFileURL);

            return response;
        } catch (Exception e) {
            e.printStackTrace();

            response.put("success", false);
            response.put("Exception", e);
            return response;
        }
    }

    private String uploadFile(File file, String filename) throws IOException {
        BlobId blobId = BlobId.of(FIREBASE_BUCKET_NAME, filename);
        BlobInfo blobInfo = BlobInfo.newBuilder(blobId).setContentType("media").build();

        Credentials credentials = GoogleCredentials.fromStream(new FileInputStream(SERVICE_ACCOUNT_PATH));
        Storage storage = StorageOptions.newBuilder().setCredentials(credentials).build().getService();

        storage.create(blobInfo, Files.readAllBytes(file.toPath()));

        return String.format(
                DOWNLOAD_URL,
                FIREBASE_BUCKET_NAME,
                URLEncoder.encode(filename, StandardCharsets.UTF_8)
        );
    }

    private File convertToFile(MultipartFile multipartFile, String filename) throws IOException{
        File tempFile = new File(filename);

        try (FileOutputStream fos = new FileOutputStream(tempFile)) {
            fos.write(multipartFile.getBytes());
            fos.close();
        }

        return tempFile;
    }
}
