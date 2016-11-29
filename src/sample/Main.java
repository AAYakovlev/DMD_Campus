package sample;

import javafx.application.Application;
import javafx.fxml.FXMLLoader;
import javafx.scene.Parent;
import javafx.scene.Scene;
import javafx.stage.Stage;
import org.postgresql.ds.PGPoolingDataSource;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.Properties;

public class Main extends Application {

    @Override
    public void start(Stage primaryStage) throws IOException {
        Properties config = new Properties();
        try {
            config.load(new FileInputStream(new File("config.properties")));
        } catch (IOException e) {
            Controller.alert("Error", "Can't find config.properties file");
            return;
        }
        String dbHost = config.getProperty("database.host");
        String dbName = config.getProperty("database.name");
        String dbUser = config.getProperty("database.user");
        String dbPassword = config.getProperty("database.password");

        PGPoolingDataSource source = new PGPoolingDataSource();
        source.setDataSourceName("CampusData");

        source.setServerName(dbHost);
        source.setDatabaseName(dbName);
        source.setUser(dbUser);
        source.setPassword(dbPassword);
        source.setMaxConnections(10);

        DataAccess dataAccess = new DataAccess(source);
        Controller controller = new Controller(dataAccess);
        FXMLLoader loader = new FXMLLoader(getClass().getResource("MainWindow.fxml"));
        loader.setController(controller);

        Parent root = loader.load();
        primaryStage.setTitle("Campus administration");
        primaryStage.setScene(new Scene(root, 900, 560));
        primaryStage.setResizable(false);
        primaryStage.show();
    }


    public static void main(String[] args) {
        launch(args);
    }
}