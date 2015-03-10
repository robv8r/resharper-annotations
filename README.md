#Community Resharper External Annotations

The Community ReSharper External Annotations Project is an open source project for ReSharper External Annotations.  It is meant to augment the [official ReSharper External Annotations extension](https://resharper-plugins.jetbrains.com/packages/ReSharper.ExternalAnnotations/ "ReSharper.ExternalAnnotation extension").

##Installation

###ReSharper 9.0

1. Open Visual Studio
2. Click ReSharper | Extension Manager...
3. Find the "Community ReSharper External Annotations" package in the list.
4. Click the "Install" button to the right of the package.
5. Click "Install" at the bottom of the Extenstion Manager window.
6. **Restart Visual Studio!**

##Code Annotations

ReSharper performs code inspection and analysis at design time.  It provides feedback based on this analysis to help the developer write better code.  ReSharper relies on [Code Annotations](https://www.jetbrains.com/resharper/help/Code_Analysis__Code_Annotations.html) to better understand the meaning and purpose of source code.    

##Embedding Annotations in Source Code

The easiest way to use Code Annotations is to [embed them in your source code](https://www.jetbrains.com/resharper/help/Code_Analysis__Annotations_in_Source_Code.html).  However, this is not always practical, feasible, or desirable.

##External Annotations

JetBrains introduced [External Annotations](https://www.jetbrains.com/resharper/help/Code_Analysis__External_Annotations.html) to allow developers to annotate third-party assemblies.  External Annotations are defined in XML using syntax similar to C# XML Documentation.  The External Annotations XML file can then be included in the same directory as the assembly being annotated or distributed in a ReSharper extension.

##Goal
The goal of this project is to augment the official ReSharper.ExternalAnnotations package with additional External Annotations that are either missing from or outside the scope of the official package. 

##Annotated Third-Party APIs

* FluentValidation 5.5.0.0
* Ninject 3.2.0.0 (includes 3.2.x)
* EntityFramework 6.0.0.0 (Partially annotated, includes 6.x)
* Prism 5.0 (Partially annotated)

##Annotated .Net Framework Classes

The following classes, properties, and methods are either partially implemented or missing from the official ReSharper External Annotations package.  If they are added to the official package in the future, they will be removed from this project.

* mscorlib
	* Version 4.0.0.0
		* T:System.Threading.Tasks.Task
		* T:System.Threading.Tasks.Task&lt;T&gt;
		* T:System.Threading.Tasks.TaskCompletionSource
* System
	* Version 4.0.0.0
		* M:System.Diagnostics.FileVersionInfo.GetVersionInfo(string)
* System.ComponentModel
	* Version 4.0.0.0
		* P:System.ServiceModel.Channels.Message.Headers
		* P:System.ServiceModel.Channels.Message.Properties
		* P:System.ServiceModel.ClientBase`1.Channel
		* P:System.ServiceModel.Description.ServiceDescription.Behaviors
		* P:System.ServiceModel.Dispatcher.ChannelDispatcher.ErrorHandlers
		* P:System.ServiceModel.Dispatcher.DispatchRuntime.MessageInspectors
		* P:System.ServiceModel.OperationContext.IncomingMessageProperties
		* P:System.ServiceModel.ServiceHostBase.ChannelDispatchers
		* P:System.ServiceModel.ServiceHostBase.Description

