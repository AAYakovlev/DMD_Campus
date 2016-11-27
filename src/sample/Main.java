package sample;

import javafx.application.Application;
import javafx.fxml.FXMLLoader;
import javafx.scene.Parent;
import javafx.scene.Scene;
import javafx.stage.Stage;
import org.postgresql.ds.PGPoolingDataSource;

public class Main extends Application {

    @Override
    public void start(Stage primaryStage) throws Exception{
        PGPoolingDataSource source = new PGPoolingDataSource();
        source.setDataSourceName("CampusData");

        source.setServerName("localhost");      //EDIT THIS
        source.setDatabaseName("campus");      //EDIT THIS
        source.setUser("postgres");      //EDIT THIS
        source.setPassword("");      //EDIT THIS
        source.setMaxConnections(10);

        DataAccess dataAccess = new DataAccess(source);
        Controller controller = new Controller(dataAccess);
        FXMLLoader loader = new FXMLLoader(getClass().getResource("MainWindow.fxml"));
        loader.setController(controller);

        Parent root = loader.load();
        primaryStage.setTitle("Campus administration");
        primaryStage.setScene(new Scene(root, 900, 540));
        primaryStage.setResizable(false);
        primaryStage.show();
    }


    public static void main(String[] args) {
        launch(args);
    }
}