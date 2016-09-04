#Community Resharper External Annotations

The Community ReSharper External Annotations Project is an open source project for ReSharper External Annotations.  It is meant to augment the [official ReSharper External Annotations extension](https://resharper-plugins.jetbrains.com/packages/ReSharper.ExternalAnnotations/ "ReSharper.ExternalAnnotation extension").

##Installation

###ReSharper

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
* IBM.Data.DB2.iSeries 12.0.0.0 (Partially annotated)
* System.Web.Http 5.2.3.0 (Partially annotated)
* Prism 5.0 (Partially annotated)

##Annotated .Net Framework Classes

The following classes, properties, and methods are either partially implemented or missing from the official ReSharper External Annotations package.  If they are added to the official package in the future, they will be removed from this project.

* mscorlib
	* Version 4.0.0.0
		* T:System.Threading.Tasks.Task (includes all members)
		* T:System.Threading.Tasks.Task&lt;T&gt; (includes all members)
		* T:System.Threading.Tasks.TaskCompletionSource (includes all members)
		* M:System.Reflection.Assembly.GetEntryAssembly
* System
	* Version 4.0.0.0
		* M:System.Diagnostics.FileVersionInfo.GetVersionInfo(string)
* System.Configuration
	* Version 4.0.0.0
		* P:System.Configuration.ConfigurationManager.ConnectionStrings
		* M:System.Configuration.ConfigurationManager.GetSection(string)
* System.Data
	* Version 4.0.0.0
		* T:System.Data.Common.DbCommand (includes async members)
		* T:System.Data.Common.DbDataReader (includes async members)
		* T:System.Data.SqlClient.SqlCommand (includes async members)
		* M:System.Data.SqlClient.SqlParameterCollection.Add (all overloads)
		* M:System.Data.SqlClient.SqlParameterCollection.AddWithValue(System.String, System.Object)
		* P:System.Data.DataTable.Rows
* System.Net.Http
	* Version 4.0.0.0
		* M:System.Net.Http.HttpContent.CopyToAsync (all overloads)
		* M:System.Net.Http.HttpContent.CreateContentReadStreamAsync
		* M:System.Net.Http.HttpContent.LoadIntoBufferAsync
		* M:System.Net.Http.HttpContent.ReadAsByteArrayAsync
		* M:System.Net.Http.HttpContent.ReadAsStreamAsync
		* M:System.Net.Http.HttpContent.ReadAsStringAsync
		* M:System.Net.Http.HttpContent.SerializeToStreamAsync(System.IO.Stream,System.Net.TransportContext)
* System.Runtime.Serialization
	* Version 4.0.0.0
		* P:System.Runtime.Serialization.IExtensibleDataObject.ExtensionData
* System.Runtime.Caching
	* Version 4.0.0.0
		* P:System.Runtime.Caching.MemoryCache.Default
* System.ServiceModel
	* Version 4.0.0.0
		* M:System.ServiceModel.Channels.MessageVersion.CreateVersion(System.ServiceModel.EnvelopeVersion)
		* M:System.ServiceModel.Channels.MessageVersion.CreateVersion(System.ServiceModel.EnvelopeVersion, System.ServiceModel.Channels.AddressingVersion)
		* M:System.ServiceModel.Dispatcher.IErrorHandler.HandleError(System.Exception)
		* M:System.ServiceModel.Dispatcher.IErrorHandler.ProvideFault(System.Exception,System.ServiceModel.Channels.MessageVersion,System.ServiceModel.Channels.Message@)
		* P:System.ServiceModel.Channels.Message.Headers
		* P:System.ServiceModel.Channels.Message.Properties
		* P:System.ServiceModel.Channels.MessageVersion.Addressing
		* P:System.ServiceModel.Channels.MessageVersion.Default
		* P:System.ServiceModel.Channels.MessageVersion.Envelope
		* P:System.ServiceModel.Channels.MessageVersion.None
		* P:System.ServiceModel.Channels.MessageVersion.Soap11
		* P:System.ServiceModel.Channels.MessageVersion.Soap11WSAddressing10
		* P:System.ServiceModel.Channels.MessageVersion.Soap12
		* P:System.ServiceModel.Channels.MessageVersion.Soap12WSAddressing10
		* P:System.ServiceModel.Channels.MessageVersion.Soap12WSAddressingAugust2004
		* P:System.ServiceModel.ClientBase`1.Channel
		* P:System.ServiceModel.Description.ServiceDescription.Behaviors
		* P:System.ServiceModel.Dispatcher.ChannelDispatcher.ErrorHandlers
		* P:System.ServiceModel.Dispatcher.DispatchRuntime.MessageInspectors
		* P:System.ServiceModel.OperationContext.IncomingMessageProperties
		* P:System.ServiceModel.ServiceHostBase.ChannelDispatchers
		* P:System.ServiceModel.ServiceHostBase.Description
* Microsoft.Extensions.Logging.Abstractions
	* Version 1.0.0.0
		* M:Microsoft.Extensions.Logging.Internal.FormattedLogValues.#ctor(System.String,System.Object[])
		* M:Microsoft.Extensions.Logging.LoggerExtensions.BeginScope
		* M:Microsoft.Extensions.Logging.LoggerExtensions.LogCritical (all overloads)
		* M:Microsoft.Extensions.Logging.LoggerExtensions.LogDebug (all overloads)
		* M:Microsoft.Extensions.Logging.LoggerExtensions.LogError (all overloads)
		* M:Microsoft.Extensions.Logging.LoggerExtensions.LogInformation (all overloads)
		* M:Microsoft.Extensions.Logging.LoggerExtensions.LogTrace (all overloads)
		* M:Microsoft.Extensions.Logging.LoggerExtensions.LogWarning (all overloads)(Microsoft.Extensions.Logging.ILogger,System.String,System.Object[])

## Contributing

The annotations provided by this plugin are installed into AppData\Local\JetBrains\Installations\ReSharperPlatformVsXX\Extensions\Community.External.Annotations.R90\annotations.

Modifications to these external annotation files can be tested by editing the files in that directory and then restarting Visual Studio.
