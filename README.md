
# Flutter Project Structure Template

## Basic Page
in main.dart

AppBar ,
Drawer ,
BottomAppBar ,

![https://github.com/benznest/flutter-app-template-basic-1/blob/master/images/1.png](https://github.com/benznest/flutter-app-template-basic-1/blob/master/images/1.png)
![https://github.com/benznest/flutter-app-template-basic-1/blob/master/images/2.png](https://github.com/benznest/flutter-app-template-basic-1/blob/master/images/2.png)

## Project Structure

The structure of the project consists of various folders.

![https://github.com/benznest/flutter-app-template-basic-1/blob/master/images/project_structure_1.png](https://github.com/benznest/flutter-app-template-basic-1/blob/master/images/project_structure_1.png)

<b>Dao</b> : Store files about Dao (PODO)<br>
<b>Database</b> : Store files about Database.<br>
<b>Features</b> : Store files about project feature class and Manager class of features.<br>
<b>Routes</b> : Store files about route class.<br>
<b>Service</b> : Store files about App service and API.<br>
<b>Style</b> : Store files about global style and theme project.<br>
<b>UI</b> : Store files about User interface, pages , screens, custom widgets.<br>
<b>utils</b> : Store files about Utility files.<br>


### Database Folder

![https://github.com/benznest/flutter-app-template-basic-1/blob/master/images/project_structure_2.png](https://github.com/benznest/flutter-app-template-basic-1/blob/master/images/project_structure_2.png)

Example the database for Category data. 
Database folder will contain subfolder as a category. 

<b>category.dart</b> : Object class after query.<br>
<b>category_database.dart</b> : Define database, query and action.<br>
<b>category_database_manager.dart</b> :  Classes that prepare and serve data.<br>

### Features Folder

This is a folder that main of business logic and stored the file managing of features in the app. inside folder contain subfolders demand on a features. 

All files in the Features folder must fill prefix 'my_'

<b>Provider</b> : Manage the state and provide data.<br>
<b>Manager</b> : Working on business and bringing results as needed.<br>

### UI Folder

<b>builder</b> : Classes for creating widgets of frequently used.<br>
<b>dialog</b> : Dialog widget.<br>
<b>pages</b> : Component of widgets for re-use in screen.<br>
<b>screens</b> : The screens of app.<br>
<b>widget</b> : Your custom widget file.<br>



## Example : User Auth Diagram

Example of the step of calling a User Authentication.

![https://github.com/benznest/flutter-app-template-basic-1/blob/master/images/step_auth_diagram.png](https://github.com/benznest/flutter-app-template-basic-1/blob/master/images/step_auth_diagram.png)


<b>UI</b> : Page or Widgets<br>
<b>UserProvider</b> : Classes that manage the states of widgets.<br>
<b>UserManager</b> : Classes that collect services about users.<br>
<b>UserAuth</b> : Classes that prepare and serve all data about user authentication. <br>
<b>UserServiceManager</b> : Classes that managing about service of user. <br>
<b>UserApi</b> : Classes that define all method of api using.<br>
<b>UserDao</b> : Class that compatible with response.<br>
