# ActionScript & MXML App and Library Project

Demonstrates how to create a workspace in [Visual Studio Code](https://code.visualstudio.com/) that contains two sub-projects, an [Adobe AIR](https://airsdk.dev/) application project and a SWC library project. The AIR app project requires the SWC library project as a dependency.

The workspace includes default build task that compiles the library and then the AIR app. There is also a launch configuration that can run the AIR app in the AIR SDK's debug simulator.

## Requirements

- [Visual Studio Code](https://code.visualstudio.com/)
- [Adobe AIR SDK](https://airsdk.harman.com/)
- [ActionScript & MXML language extension](https://marketplace.visualstudio.com/items?itemName=bowlerhatllc.vscode-as3mxml)
- [Debugger for SWF extension](https://marketplace.visualstudio.com/items?itemName=bowlerhatllc.vscode-swf-debug)

## Notes

- Clone the repository. Then, in Visual Studio Code, go to the **File** menu and choose **Open Folder…**. Select the root directory of this repository. Do **not** add the _App_ and _Library_ folders as separate workspace root folders. This workspace is configured with a single root folder that contains two sub-projects.

- The _.vscode/tasks.json_ file uses the `dependsOn` field to require that _Library/asconfig.json_ is built before _App/asconfig.json_.

- The _.vscode/launch.json_ file uses the `asconfigPath` field to specify that _App/asconfig.json_ is the project file to use for debugging.

- When you first open the workspace, you may see the following error:

	> unable to open 'Library/bin/Library.swc'.

	This is because _Library.swc_ has not been built yet. To resolve this error, go to the **Terminal** menu and choose **Run Build Task…**. Then, restart Visual Studio Code.