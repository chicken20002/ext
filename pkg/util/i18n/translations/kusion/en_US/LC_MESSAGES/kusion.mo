��    C      4  Y   L      �  V  �  3    0  <    m	  B   {  �  �  �  E  �   ?  �   +  .   �  8  �  B     �   Z  �   �  �  �  �   R  �   %  z   "    �  <     @   Z  3   �  >   �  7        F  >   \  @   �     �     �  E     3   \  >   �  &   �  U   �  2   L  5     $   �     �  =   �  [   6  ,   �  Z   �  %     "   @  $   c  &   �  1   �     �     �  D         S      o      �   g   �   <   !  @   N!  a   �!  e   �!  -   W"  =   �"  ;   �"  $   �"     $#     ?#  )   Z#  S   �#  %  �#  V  �$  3  U&  0  �'    �(  B   �*  �  +  �  �,  �   �/  �   x0  .   �0  8  +1  B   d2  �   �2  �   03  �  4  �   �5  �   r6  z   o7    �7  <   j9  @   �9  3   �9  >   :  7   [:     �:  >   �:  @   �:     );     E;  E   c;  3   �;  >   �;  &   <  U   C<  2   �<  5   �<  $   =     '=  =   E=  [   �=  ,   �=  Z   >  %   g>  "   �>  $   �>  &   �>  1   �>     .?     C?  D   [?     �?     �?     �?  g   �?  <   ^@  @   �@  a   �@  e   >A  -   �A  =   �A  ;   B  $   LB     qB     �B  )   �B  S   �B     ,          @      #   +          6            7      <   )      B          (       
          5   $   "   %                            >             -   C             !   *   2             ?              9   '   =               	   .   /       ;   &       4      8   A   1   :          0   3                                  		Apply a series of resource changes within the stack.

		Create or update or delete resources according to the KCL files within a stack.
		By default, Kusion will generate an execution plan and present it for your approval before taking any action.

		You can check the plan details and then decide if the actions should be taken or aborted. 
		# Apply with specifying work directory
		kusion apply -w /path/to/workdir

		# Apply with specifying arguments
		kusion apply -D name=test -D age=18

		# Apply with specifying setting file
		kusion apply -Y settings.yaml

		# Skip interactive approval of plan details before applying
		kusion apply --yes 
		# Check configuration in main.k
		kusion check main.k

		# Check main.k with arguments
		kusion check main.k -D name=test -D age=18

		# Check main.k with arguments from settings.yaml
		kusion check main.k -Y settings.yaml

		# Check main.k with work directory
		kusion check main.k -w appops/demo/dev 
		# Compile configuration in main.k into YAML format
		kusion compile main.k

		# Compile main.k with arguments
		kusion compile main.k -D name=test -D age=18

		# Compile main.k with arguments from settings.yaml
		kusion compile main.k -Y settings.yaml

		# Compile main.k with work directory
		kusion compile main.k -w appops/demo/dev

		# Compile with override
		kusion compile -O __main__:appConfiguration.image=nginx:latest -a

		# Compile main.k and write result into output.yaml
		kusion compile main.k -o output.yaml 
		# Delete the configuration in pod.k
		kusion destroy -f ./pod.k 
		# Initialize a new KCL project from internal templates
		kusion init

		# Initialize a new KCL project from external default templates location
		kusion init --online=true

		# Initialize a new KCL project from specific templates location
		kusion init https://github.com/<user>/<repo> --online=true

		# Initialize a new KCL project from local directory
		kusion init /path/to/templates 
		# List all project and stack information in the current directory
		kusion ls

		# List all project and stack information in the specify directory
		kusion ls ./path/to/project_dir

		# List all project and stack information in the specify directory,
		# and output in a Tree format
		kusion ls ./path/to/project_dir --format=tree

		# List all project and stack information in the specify directory,
		# and output in a JSON format
		kusion ls ./path/to/project_dir --format=json

		# List all project and stack information in the specify directory,
		# and output in a YAML format
		kusion ls ./path/to/project_dir --format=yaml

		# List all project and stack by level, and output in a Tree format
		kusion ls ./path/to/project_dir --format=tree --level=1 
		# Preview with specifying work directory
		kusion preview -w /path/to/workdir

		# Preview with specifying arguments
		kusion preview -D name=test -D age=18

		# Preview with specifying setting file
		kusion preview -Y settings.yaml 
		# Print Kusion environment information
		kusion env

		# Print Kusion environment information as JSON format
		kusion env --json 
		# Print the kusion version
		kusion version 
		# The comparison object comes from the files
		kusion diff pod-1.yaml pod-2.yaml
		kusion diff pod-1.yaml pod-2.yaml --swap=true

		# The comparison object comes from the stdin
		cat pod-1.yaml > pod-full.yaml
		echo '---' >> pod-full.yaml
		cat pod-2.yaml >> pod-full.yaml
		cat pod-full.yaml | kusion diff - 
		Check if KCL configurations in current directory ok to compile. 
		Compare files differences and display the delta.
		Support input file types are: YAML (http://yaml.org/) and JSON (http://json.org/). 
		Compile one or more KCL files.

		The KCL filename must be specified.
		You can specify a list of arguments to replace the placeholders defined in KCL,
		and output the compiled results to a file when using --output flag. 
		Delete resources by resource spec.

		Only KCL files are accepted. Only one type of arguments may be specified: filenames,
		resources and names, or resources and label selector.

		Note that the destroy command does NOT do resource version checks, so if someone submits an
		update to a resource right when you submit a destroy, their update will be lost along with the
		rest of the resource. 
		List all project and stack information in the current directory or the
		specify directory.
		The default output is in a human friendly format, and it also supports
		a variety of formatted structure output. 
		Preview a series of resource changes within the stack.

		Create or update or delete resources according to the KCL files within a stack.
		By default, Kusion will generate an execution plan and present it for your approval before taking any action. 
		kusion init command helps you to generate an scaffolding KCL project.
		Try "kusion init" to simply get a demo project. 
Env prints Kusion environment information.

By default env prints information as a shell script
(on Windows, a batch file). If one or more variable
names is given as arguments, env prints the value of
each named variable on its own line.

The --json flag prints the environment in JSON format
instead of as a shell script.

For more about environment variables, see 'kusion env -h'. Apply a configuration stack to resource(s) by work directory Automatically approve and perform the update after previewing it Automatically show plan details after previewing it Check if KCL configurations in current directory ok to compile Compare differences between input files <from> and <to> Compile KCL into YAML Destroy a configuration stack to resource(s) by work directory Diff mode. One of normal and ignore-added. The default is normal Disable dumping None values Filename to write the profile Forces content to be generated even if it would change existing files Ignore order changes in lists. The default is false Initialize KCL file structure and base codes for a new project List all project and stack information Name of profile to capture. One of (none|cpu|heap|goroutine|threadcreate|block|mutex) Omit the dyff summary header. The default is false Preview a series of resource changes within the stack Print Kusion environment information Print the kusion version info Print the kusion version information for the current context. Set kusion develop log level, default is INFO, all options: DEBUG, INFO, ERROR, WARN, FATAL Skip prompts and proceed with default values Sort from and to by kubernetes resource order(non standard behavior). The default is false Specify the arguments for compile KCL Specify the arguments to apply KCL Specify the arguments to preview KCL Specify the command line setting files Specify the configuration override path and value Specify the operator Specify the output file Specify the output style. One of human and raw. The default is human Specify the override option Specify the top-level argument Specify the work directory Swap <from> and <to> for comparison. Note that it is invalid when <from> is stdin. The default is false The project name; if not specified, a prompt will request it Use locally cached templates without making any network requests dry-run to preview the execution effect (always successful) without actually applying the changes kusion is a cloud-native programmable technology stack, which manages the Kubernetes cluster by code. kusion manages the Kubernetes cluster by code max display depth of the project and stack tree. One of 0,1,2 no-style sets to RawOutput mode and disables all of styling print the environment in JSON format print version info as JSON print version info as YAML print version info as versionShort string the output format of the project information. valid values: json, yaml, tree, human Project-Id-Version: 
Report-Msgid-Bugs-To: EMAIL
PO-Revision-Date: 2022-11-22 16:23+0800
Last-Translator: 
Language-Team: 
Language: en
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=2; plural=(n != 1);
X-Generator: Poedit 3.2
 		Apply a series of resource changes within the stack.

		Create or update or delete resources according to the KCL files within a stack.
		By default, Kusion will generate an execution plan and present it for your approval before taking any action.

		You can check the plan details and then decide if the actions should be taken or aborted. 
		# Apply with specifying work directory
		kusion apply -w /path/to/workdir

		# Apply with specifying arguments
		kusion apply -D name=test -D age=18

		# Apply with specifying setting file
		kusion apply -Y settings.yaml

		# Skip interactive approval of plan details before applying
		kusion apply --yes 
		# Check configuration in main.k
		kusion check main.k

		# Check main.k with arguments
		kusion check main.k -D name=test -D age=18

		# Check main.k with arguments from settings.yaml
		kusion check main.k -Y settings.yaml

		# Check main.k with work directory
		kusion check main.k -w appops/demo/dev 
		# Compile configuration in main.k into YAML format
		kusion compile main.k

		# Compile main.k with arguments
		kusion compile main.k -D name=test -D age=18

		# Compile main.k with arguments from settings.yaml
		kusion compile main.k -Y settings.yaml

		# Compile main.k with work directory
		kusion compile main.k -w appops/demo/dev

		# Compile with override
		kusion compile -O __main__:appConfiguration.image=nginx:latest -a

		# Compile main.k and write result into output.yaml
		kusion compile main.k -o output.yaml 
		# Delete the configuration in pod.k
		kusion destroy -f ./pod.k 
		# Initialize a new KCL project from internal templates
		kusion init

		# Initialize a new KCL project from external default templates location
		kusion init --online=true

		# Initialize a new KCL project from specific templates location
		kusion init https://github.com/<user>/<repo> --online=true

		# Initialize a new KCL project from local directory
		kusion init /path/to/templates 
		# List all project and stack information in the current directory
		kusion ls

		# List all project and stack information in the specify directory
		kusion ls ./path/to/project_dir

		# List all project and stack information in the specify directory,
		# and output in a Tree format
		kusion ls ./path/to/project_dir --format=tree

		# List all project and stack information in the specify directory,
		# and output in a JSON format
		kusion ls ./path/to/project_dir --format=json

		# List all project and stack information in the specify directory,
		# and output in a YAML format
		kusion ls ./path/to/project_dir --format=yaml

		# List all project and stack by level, and output in a Tree format
		kusion ls ./path/to/project_dir --format=tree --level=1 
		# Preview with specifying work directory
		kusion preview -w /path/to/workdir

		# Preview with specifying arguments
		kusion preview -D name=test -D age=18

		# Preview with specifying setting file
		kusion preview -Y settings.yaml 
		# Print Kusion environment information
		kusion env

		# Print Kusion environment information as JSON format
		kusion env --json 
		# Print the kusion version
		kusion version 
		# The comparison object comes from the files
		kusion diff pod-1.yaml pod-2.yaml
		kusion diff pod-1.yaml pod-2.yaml --swap=true

		# The comparison object comes from the stdin
		cat pod-1.yaml > pod-full.yaml
		echo '---' >> pod-full.yaml
		cat pod-2.yaml >> pod-full.yaml
		cat pod-full.yaml | kusion diff - 
		Check if KCL configurations in current directory ok to compile. 
		Compare files differences and display the delta.
		Support input file types are: YAML (http://yaml.org/) and JSON (http://json.org/). 
		Compile one or more KCL files.

		The KCL filename must be specified.
		You can specify a list of arguments to replace the placeholders defined in KCL,
		and output the compiled results to a file when using --output flag. 
		Delete resources by resource spec.

		Only KCL files are accepted. Only one type of arguments may be specified: filenames,
		resources and names, or resources and label selector.

		Note that the destroy command does NOT do resource version checks, so if someone submits an
		update to a resource right when you submit a destroy, their update will be lost along with the
		rest of the resource. 
		List all project and stack information in the current directory or the
		specify directory.
		The default output is in a human friendly format, and it also supports
		a variety of formatted structure output. 
		Preview a series of resource changes within the stack.

		Create or update or delete resources according to the KCL files within a stack.
		By default, Kusion will generate an execution plan and present it for your approval before taking any action. 
		kusion init command helps you to generate an scaffolding KCL project.
		Try "kusion init" to simply get a demo project. 
Env prints Kusion environment information.

By default env prints information as a shell script
(on Windows, a batch file). If one or more variable
names is given as arguments, env prints the value of
each named variable on its own line.

The --json flag prints the environment in JSON format
instead of as a shell script.

For more about environment variables, see 'kusion env -h'. Apply a configuration stack to resource(s) by work directory Automatically approve and perform the update after previewing it Automatically show plan details after previewing it Check if KCL configurations in current directory ok to compile Compare differences between input files <from> and <to> Compile KCL into YAML Destroy a configuration stack to resource(s) by work directory Diff mode. One of normal and ignore-added. The default is normal Disable dumping None values Filename to write the profile Forces content to be generated even if it would change existing files Ignore order changes in lists. The default is false Initialize KCL file structure and base codes for a new project List all project and stack information Name of profile to capture. One of (none|cpu|heap|goroutine|threadcreate|block|mutex) Omit the dyff summary header. The default is false Preview a series of resource changes within the stack Print Kusion environment information Print the kusion version info Print the kusion version information for the current context. Set kusion develop log level, default is INFO, all options: DEBUG, INFO, ERROR, WARN, FATAL Skip prompts and proceed with default values Sort from and to by kubernetes resource order(non standard behavior). The default is false Specify the arguments for compile KCL Specify the arguments to apply KCL Specify the arguments to preview KCL Specify the command line setting files Specify the configuration override path and value Specify the operator Specify the output file Specify the output style. One of human and raw. The default is human Specify the override option Specify the top-level argument Specify the work directory Swap <from> and <to> for comparison. Note that it is invalid when <from> is stdin. The default is false The project name; if not specified, a prompt will request it Use locally cached templates without making any network requests dry-run to preview the execution effect (always successful) without actually applying the changes kusion is a cloud-native programmable technology stack, which manages the Kubernetes cluster by code. kusion manages the Kubernetes cluster by code max display depth of the project and stack tree. One of 0,1,2 no-style sets to RawOutput mode and disables all of styling print the environment in JSON format print version info as JSON print version info as YAML print version info as versionShort string the output format of the project information. valid values: json, yaml, tree, human 