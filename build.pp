The target "_ConvertPdbFiles" listed in a BeforeTargets attribute at "C:\Program Files (x86)\MSBuild\14.0\Microsoft.Common.targets\ImportAfter\Xamarin.Common.targets (34,37)" does not exist in the project, and will be ignored.
The target "_CollectPdbFiles" listed in an AfterTargets attribute at "C:\Program Files (x86)\MSBuild\14.0\Microsoft.Common.targets\ImportAfter\Xamarin.Common.targets (34,70)" does not exist in the project, and will be ignored.
The target "_CollectMdbFiles" listed in a BeforeTargets attribute at "C:\Program Files (x86)\MSBuild\14.0\Microsoft.Common.targets\ImportAfter\Xamarin.Common.targets (41,38)" does not exist in the project, and will be ignored.
The target "_CopyMdbFiles" listed in an AfterTargets attribute at "C:\Program Files (x86)\MSBuild\14.0\Microsoft.Common.targets\ImportAfter\Xamarin.Common.targets (41,71)" does not exist in the project, and will be ignored.
<?xml version="1.0" encoding="IBM437"?>
<!--
============================================================================================================================================
F:\git\CSharpTemplate\CSharpTemplate.csproj
============================================================================================================================================
-->
<Project ToolsVersion="14.0" DefaultTargets="Build" xmlns="http://schemas.microsoft.com/developer/msbuild/2003" InitialTargets="_CheckForInvalidConfigurationAndPlatform">
  <!--
============================================================================================================================================
  <Import Project="$(MSBuildExtensionsPath)\$(MSBuildToolsVersion)\Microsoft.Common.props" Condition="Exists('$(MSBuildExtensionsPath)\$(MSBuildToolsVersion)\Microsoft.Common.props')">

C:\Program Files (x86)\MSBuild\14.0\Microsoft.Common.props
============================================================================================================================================
-->
  <!--
***********************************************************************************************
Microsoft.Common.props

WARNING:  DO NOT MODIFY this file unless you are knowledgeable about MSBuild and have
          created a backup copy.  Incorrect changes to this file will make it
          impossible to load or build your projects from the command-line or the IDE.

Copyright (C) Microsoft Corporation. All rights reserved.
***********************************************************************************************
-->
  <PropertyGroup>
    <ImportByWildcardBeforeMicrosoftCommonProps Condition="'$(ImportByWildcardBeforeMicrosoftCommonProps)' == ''">true</ImportByWildcardBeforeMicrosoftCommonProps>
    <ImportByWildcardAfterMicrosoftCommonProps Condition="'$(ImportByWildcardAfterMicrosoftCommonProps)' == ''">true</ImportByWildcardAfterMicrosoftCommonProps>
    <ImportUserLocationsByWildcardBeforeMicrosoftCommonProps Condition="'$(ImportUserLocationsByWildcardBeforeMicrosoftCommonProps)' == ''">true</ImportUserLocationsByWildcardBeforeMicrosoftCommonProps>
    <ImportUserLocationsByWildcardAfterMicrosoftCommonProps Condition="'$(ImportUserLocationsByWildcardAfterMicrosoftCommonProps)' == ''">true</ImportUserLocationsByWildcardAfterMicrosoftCommonProps>
  </PropertyGroup>
  <!-- 
        Import wildcard "ImportBefore" props files if we're actually in a 12.0+ project (rather than a project being
        treated as 4.0)
    -->
  <!--<ImportGroup Condition="'$(MSBuildAssemblyVersion)' != ''">-->
  <!-- 
            Wildcard imports come from $(MSBuildExtensionsPath)\$(MSBuildToolsVersion)\Microsoft.Common.props.d folder.
            This is very similar to the same extension point used in Microsoft.Common.targets, which is located in
            the $(MSBuildExtensionsPath)\$(MSBuildToolsVersion)\Microsoft.Common.targets\ directory. Unfortunately, there
            is already a file named "Microsoft.Common.props" in this directory so we have to have a slightly different
            directory name to hold extensions.
        -->
  <!--<Import Project="$(MSBuildUserExtensionsPath)\$(MSBuildToolsVersion)\Imports\Microsoft.Common.props\ImportBefore\*" Condition="'$(ImportUserLocationsByWildcardBeforeMicrosoftCommonProps)' == 'true' and exists('$(MSBuildUserExtensionsPath)\$(MSBuildToolsVersion)\Imports\Microsoft.Common.props\ImportBefore')" />-->
  <!--
============================================================================================================================================
  <Import Project="$(MSBuildExtensionsPath)\$(MSBuildToolsVersion)\Imports\Microsoft.Common.props\ImportBefore\*" Condition="'$(ImportByWildcardBeforeMicrosoftCommonProps)' == 'true' and exists('$(MSBuildExtensionsPath)\$(MSBuildToolsVersion)\Imports\Microsoft.Common.props\ImportBefore')">

C:\Program Files (x86)\MSBuild\14.0\Imports\Microsoft.Common.props\ImportBefore\Microsoft.NuGet.ImportBefore.props
============================================================================================================================================
-->
  <!--
***********************************************************************************************
Microsoft.NuGet.ImportBefore.props

WARNING:  DO NOT MODIFY this file unless you are knowledgeable about MSBuild and have
          created a backup copy.  Incorrect changes to this file will make it
          impossible to load or build your projects from the command-line or the IDE.

Copyright (c) .NET Foundation. All rights reserved. 
***********************************************************************************************
-->
  <PropertyGroup>
    <NuGetProps Condition="'$(NuGetProps)'==''">$(MSBuildExtensionsPath)\Microsoft\NuGet\Microsoft.NuGet.props</NuGetProps>
  </PropertyGroup>
  <!--
============================================================================================================================================
  <Import Project="$(NuGetProps)" Condition="Exists('$(NuGetProps)')">

C:\Program Files (x86)\MSBuild\Microsoft\NuGet\Microsoft.NuGet.props
============================================================================================================================================
-->
  <!--
***********************************************************************************************
Microsoft.NuGet.props

WARNING:  DO NOT MODIFY this file unless you are knowledgeable about MSBuild and have
          created a backup copy.  Incorrect changes to this file will make it
          impossible to load or build your projects from the command-line or the IDE.

Copyright (c) .NET Foundation. All rights reserved. 
***********************************************************************************************
-->
  <!--<Import Project="$(MSBuildProjectDirectory)\$(MSBuildProjectName).nuget.props" Condition="Exists('$(MSBuildProjectDirectory)\$(MSBuildProjectName).nuget.props') AND '$(IncludeNuGetImports)' != 'false'" />-->
  <!--
============================================================================================================================================
  </Import>

C:\Program Files (x86)\MSBuild\14.0\Imports\Microsoft.Common.props\ImportBefore\Microsoft.NuGet.ImportBefore.props
============================================================================================================================================
-->
  <!--
============================================================================================================================================
  </Import>

C:\Program Files (x86)\MSBuild\14.0\Microsoft.Common.props
============================================================================================================================================
-->
  <!--</ImportGroup>-->
  <!-- 
        In VS 2010 SP1 and VS 2012, both supported for asset compatibility, the MSBuild installed 
        as part of them did not enforce using the local ToolsVersion (4.0) in all cases, but instead 
        just used whatever ToolsVersion was in the project file if it existed on the machine, and 
        only forced 4.0 if that ToolsVersion did not exist.  

        Moving forward, we do want to enforce a single acting ToolsVersion per version of Visual Studio, 
        but in order to approximate this behavior on VS 2010 SP1 and VS 2012 as well, we've redirected 
        the targets:  If we're building using 4.X MSBuild (which doesn't define the new reserved 
        property, MSBuildAssemblyVersion), we'll point right back at the 4.0 targets, which still exist 
        as part of the .NET Framework.  Only if we're using the new MSBuild will we point to the current
        targets. 
   -->
  <PropertyGroup Condition="'$(MSBuildAssemblyVersion)' == '' and ('$(VisualStudioVersion)' != '' and '$(VisualStudioVersion)' &gt;= '12.0')">
    <!--
           Reset VisualStudioVersion if it's 12.0+: Should be 10.0 if VS 2010 is installed or 11.0 otherwise, 
           but since we don't have a good way of telling whether VS 2010 is installed, make it 11.0 if 
           VS 2012 is installed or 10.0 otherwise.  The reset should be safe because if it was already 
           set to something (e.g. 11.0 in a VS 2012 command prompt) then MSBuild's internal 
           VisualStudioVersion-defaulting code should never come into the picture, so the only way it could 
           be 12.0+ when building a TV 12.0 project (because we're in this file) using MSBuild 4.5 (because 
           MSBuildAssemblyVersion hasn't been set) is if it's a TV 12.0 project on an empty command prompt. 
      -->
    <VisualStudioVersion Condition="Exists('$(MSBuildExtensionsPath)\4.0\Microsoft.Common.props')">11.0</VisualStudioVersion>
    <VisualStudioVersion Condition="!Exists('$(MSBuildExtensionsPath)\4.0\Microsoft.Common.props')">10.0</VisualStudioVersion>
  </PropertyGroup>
  <!-- If building using 4.X MSBuild, we want to act like this project is TV 4.0, so override 
         the custom extensibility target locations with the hard-coded 4.0 equivalent. -->
  <PropertyGroup Condition="'$(MSBuildAssemblyVersion)' == ''">
    <CustomBeforeMicrosoftCommonProps Condition="'$(CustomBeforeMicrosoftCommonProps)'==''">$(MSBuildExtensionsPath)\v4.0\Custom.Before.$(MSBuildThisFile)</CustomBeforeMicrosoftCommonProps>
    <CustomAfterMicrosoftCommonProps Condition="'$(CustomAfterMicrosoftCommonProps)'==''">$(MSBuildExtensionsPath)\v4.0\Custom.After.$(MSBuildThisFile)</CustomAfterMicrosoftCommonProps>
  </PropertyGroup>
  <!-- If building using 4.X MSBuild, we want to act like this project is TV 4.0, so import
         Microsoft.Common.props from the 4.0 location, and make sure everything else in here is 
         set up such that if it's defaulted to something there, it won't be overridden here. -->
  <!--<Import Project="$(MSBuildExtensionsPath)\4.0\Microsoft.Common.props" Condition="'$(MSBuildAssemblyVersion)' == '' and Exists('$(MSBuildExtensionsPath)\4.0\Microsoft.Common.props')" />-->
  <PropertyGroup>
    <CustomBeforeMicrosoftCommonProps Condition="'$(CustomBeforeMicrosoftCommonProps)'==''">$(MSBuildExtensionsPath)\v$(MSBuildToolsVersion)\Custom.Before.$(MSBuildThisFile)</CustomBeforeMicrosoftCommonProps>
    <CustomAfterMicrosoftCommonProps Condition="'$(CustomAfterMicrosoftCommonProps)'==''">$(MSBuildExtensionsPath)\v$(MSBuildToolsVersion)\Custom.After.$(MSBuildThisFile)</CustomAfterMicrosoftCommonProps>
  </PropertyGroup>
  <!-- 
         Only import the extension targets if we're actually in a 12.0 project here (rather than one we're attempting 
         to treat as 4.0) OR if the Dev11 Microsoft.Common.props don't exist.  If it's a 12.0 project we're redirecting 
         to 4.0 and the Dev11 Microsoft.Common.props do exist, the extension targets will have been imported already 
         so there's no need to import them twice.
     -->
  <!--<Import Project="$(CustomBeforeMicrosoftCommonProps)" Condition="'$(CustomBeforeMicrosoftCommonProps)' != '' and Exists('$(CustomBeforeMicrosoftCommonProps)') and ('$(MSBuildAssemblyVersion)' != '' or !Exists('$(MSBuildExtensionsPath)\4.0\Microsoft.Common.props'))" />-->
  <!-- This is used to determine whether Microsoft.Common.targets needs to import 
         Microsoft.Common.props itself, or whether it has been imported previously,
         e.g. by the project itself. -->
  <PropertyGroup>
    <MicrosoftCommonPropsHasBeenImported>true</MicrosoftCommonPropsHasBeenImported>
  </PropertyGroup>
  <PropertyGroup>
    <Configuration Condition=" '$(Configuration)' == '' and '$(DefaultProjectConfiguration)' != '' ">$(DefaultProjectConfiguration)</Configuration>
    <Platform Condition=" '$(Platform)' == '' and '$(DefaultProjectPlatform)' != '' ">$(DefaultProjectPlatform)</Platform>
  </PropertyGroup>
  <PropertyGroup>
    <WMSJSProject Condition="'$(WMSJSProject)' == ''">WJProject</WMSJSProject>
    <WMSJSProjectDirectory Condition="'$(WMSJSProjectDirectory)' == ''">JavaScript</WMSJSProjectDirectory>
  </PropertyGroup>
  <!--<Import Project="$(MSBuildExtensionsPath)\$(MSBuildToolsVersion)\Microsoft.VisualStudioVersion.v*.Common.props" Condition="'$(VisualStudioVersion)' == ''" />-->
  <!-- 
         Only import the extension targets if we're actually in a 12.0 project here (rather than one we're attempting 
         to treat as 4.0) OR if the Dev11 Microsoft.Common.props don't exist.  If it's a 12.0 project we're redirecting 
         to 4.0 and the Dev11 Microsoft.Common.props do exist, the extension targets will have been imported already 
         so there's no need to import them twice.
     -->
  <!--<Import Project="$(CustomAfterMicrosoftCommonProps)" Condition="'$(CustomAfterMicrosoftCommonProps)' != '' and Exists('$(CustomAfterMicrosoftCommonProps)') and ('$(MSBuildAssemblyVersion)' != '' or !Exists('$(MSBuildExtensionsPath)\4.0\Microsoft.Common.props'))" />-->
  <!-- 
        Import wildcard "ImportAfter" props files if we're actually in a 12.0+ project (rather than a project being
        treated as 4.0)
    -->
  <!--<ImportGroup Condition="'$(MSBuildAssemblyVersion)' != ''">-->
  <!--<Import Project="$(MSBuildUserExtensionsPath)\$(MSBuildToolsVersion)\Imports\Microsoft.Common.props\ImportAfter\*" Condition="'$(ImportUserLocationsByWildcardAfterMicrosoftCommonProps)' == 'true' and exists('$(MSBuildUserExtensionsPath)\$(MSBuildToolsVersion)\Imports\Microsoft.Common.props\ImportAfter')" />-->
  <!--<Import Project="$(MSBuildExtensionsPath)\$(MSBuildToolsVersion)\Imports\Microsoft.Common.props\ImportAfter\*" Condition="'$(ImportByWildcardAfterMicrosoftCommonProps)' == 'true' and exists('$(MSBuildExtensionsPath)\$(MSBuildToolsVersion)\Imports\Microsoft.Common.props\ImportAfter')" />-->
  <!--</ImportGroup>-->
  <!--
============================================================================================================================================
  </Import>

F:\git\CSharpTemplate\CSharpTemplate.csproj
============================================================================================================================================
-->
  <PropertyGroup>
    <Configuration Condition=" '$(Configuration)' == '' ">Debug</Configuration>
    <Platform Condition=" '$(Platform)' == '' ">AnyCPU</Platform>
    <ProjectGuid>{5F7213FD-AAC9-478D-A78B-58846A6282CC}</ProjectGuid>
    <OutputType>Library</OutputType>
    <AppDesignerFolder>Properties</AppDesignerFolder>
    <RootNamespace>CSharpTemplate</RootNamespace>
    <AssemblyName>CSharpTemplate</AssemblyName>
    <TargetFrameworkVersion>v4.5.2</TargetFrameworkVersion>
    <FileAlignment>512</FileAlignment>
  </PropertyGroup>
  <PropertyGroup Condition=" '$(Configuration)|$(Platform)' == 'Debug|AnyCPU' ">
    <DebugSymbols>true</DebugSymbols>
    <DebugType>full</DebugType>
    <Optimize>false</Optimize>
    <OutputPath>bin\Debug\</OutputPath>
    <DefineConstants>DEBUG;TRACE</DefineConstants>
    <ErrorReport>prompt</ErrorReport>
    <WarningLevel>4</WarningLevel>
  </PropertyGroup>
  <PropertyGroup Condition=" '$(Configuration)|$(Platform)' == 'Release|AnyCPU' ">
    <DebugType>pdbonly</DebugType>
    <Optimize>true</Optimize>
    <OutputPath>bin\Release\</OutputPath>
    <DefineConstants>TRACE</DefineConstants>
    <ErrorReport>prompt</ErrorReport>
    <WarningLevel>4</WarningLevel>
  </PropertyGroup>
  <ItemGroup>
    <Reference Include="System" />
    <Reference Include="System.Core" />
    <Reference Include="System.Xml.Linq" />
    <Reference Include="System.Data.DataSetExtensions" />
    <Reference Include="Microsoft.CSharp" />
    <Reference Include="System.Data" />
    <Reference Include="System.Net.Http" />
    <Reference Include="System.Xml" />
  </ItemGroup>
  <ItemGroup>
    <Compile Include="Class1.cs" />
    <Compile Include="Properties\AssemblyInfo.cs" />
  </ItemGroup>
  <ItemGroup>
    <ProjectReference Include="ReferencedProject\ReferencedProject.csproj">
      <Project>{fa03276b-d69a-46ec-85dc-19d42a26f55c}</Project>
      <Name>ReferencedProject</Name>
    </ProjectReference>
  </ItemGroup>
  <!--
============================================================================================================================================
  <Import Project="$(MSBuildToolsPath)\Microsoft.CSharp.targets">

C:\Program Files (x86)\MSBuild\14.0\bin\Microsoft.CSharp.targets
============================================================================================================================================
-->
  <!--
***********************************************************************************************
Microsoft.CSharp.targets

WARNING:  DO NOT MODIFY this file unless you are knowledgeable about MSBuild and have
          created a backup copy.  Incorrect changes to this file will make it
          impossible to load or build your projects from the command-line or the IDE.

This file defines the steps in the standard build process specific for C# .NET projects.
For example, it contains the step that actually calls the C# compiler.  The remainder
of the build process is defined in Microsoft.Common.targets, which is imported by 
this file.

Copyright (C) Microsoft Corporation. All rights reserved.
***********************************************************************************************
-->
  <!-- 
        In VS 2010 SP1 and VS 2012, both supported for asset compatibility, the MSBuild installed 
        as part of them did not enforce using the local ToolsVersion (4.0) in all cases, but instead 
        just used whatever ToolsVersion was in the project file if it existed on the machine, and 
        only forced 4.0 if that ToolsVersion did not exist.  

        Moving forward, we do want to enforce a single acting ToolsVersion per version of Visual Studio, 
        but in order to approximate this behavior on VS 2010 SP1 and VS 2012 as well, we've redirected 
        the targets:  If we're building using 4.X MSBuild (which doesn't define the new reserved 
        property, MSBuildAssemblyVersion), we'll point right back at the 4.0 targets, which still exist 
        as part of the .NET Framework.  Only if we're using the new MSBuild will we point to the current
        targets. 
   -->
  <Choose>
    <When Condition="'$(MSBuildAssemblyVersion)' == ''">
      <PropertyGroup>
        <CSharpTargetsPath>$(MSBuildFrameworkToolsPath)\Microsoft.CSharp.targets</CSharpTargetsPath>
        <!-- Same condition as in .NET 4.5 C# targets so that we can override the behavior where it defaults to 
                 MSBuildToolsPath, which would be incorrect in this case -->
        <CscToolPath Condition="'$(CscToolPath)' == '' and '$(BuildingInsideVisualStudio)' != 'true'">$(MsBuildFrameworkToolsPath)</CscToolPath>
      </PropertyGroup>
    </When>
    <Otherwise>
      <PropertyGroup>
        <CSharpTargetsPath>$(MSBuildToolsPath)\Microsoft.CSharp.CurrentVersion.targets</CSharpTargetsPath>
      </PropertyGroup>
    </Otherwise>
  </Choose>
  <PropertyGroup Condition="'$(MSBuildAssemblyVersion)' == ''">
    <!-- 
           Overrides for the Microsoft.Common.targets extension targets. Used to make sure that only the imports we specify 
           (hard-coded to 4.0 locations) are used, not the 12.0 locations that would be used by default. Defined here because 
           Microsoft.CSharp.targets imports Microsoft.Common.targets from the current directory rather than using MSBuildToolsPath, 
           so defining these in Microsoft.Common.targets alone would not suffice for C# projects.

           NOTE: This logic is duplicated in Microsoft.VisualBasic.targets (VB has the same problem) and in Microsoft.Common.targets
           (for anyone who DOES import it directly), so for any changes to this logic in this file, please also edit the other two. 
       -->
    <ImportByWildcardBefore40MicrosoftCommonTargets Condition="'$(ImportByWildcardBefore40MicrosoftCommonTargets)' == ''">$(ImportByWildcardBeforeMicrosoftCommonTargets)</ImportByWildcardBefore40MicrosoftCommonTargets>
    <ImportByWildcardBefore40MicrosoftCommonTargets Condition="'$(ImportByWildcardBefore40MicrosoftCommonTargets)' == ''">true</ImportByWildcardBefore40MicrosoftCommonTargets>
    <ImportByWildcardAfter40MicrosoftCommonTargets Condition="'$(ImportByWildcardAfter40MicrosoftCommonTargets)' == ''">$(ImportByWildcardAfterMicrosoftCommonTargets)</ImportByWildcardAfter40MicrosoftCommonTargets>
    <ImportByWildcardAfter40MicrosoftCommonTargets Condition="'$(ImportByWildcardAfter40MicrosoftCommonTargets)' == ''">true</ImportByWildcardAfter40MicrosoftCommonTargets>
    <ImportUserLocationsByWildcardBefore40MicrosoftCommonTargets Condition="'$(ImportUserLocationsByWildcardBefore40MicrosoftCommonTargets)' == ''">$(ImportUserLocationsByWildcardBeforeMicrosoftCommonTargets)</ImportUserLocationsByWildcardBefore40MicrosoftCommonTargets>
    <ImportUserLocationsByWildcardBefore40MicrosoftCommonTargets Condition="'$(ImportUserLocationsByWildcardBefore40MicrosoftCommonTargets)' == ''">true</ImportUserLocationsByWildcardBefore40MicrosoftCommonTargets>
    <ImportUserLocationsByWildcardAfter40MicrosoftCommonTargets Condition="'$(ImportUserLocationsByWildcardAfter40MicrosoftCommonTargets)' == ''">$(ImportUserLocationsByWildcardAfterMicrosoftCommonTargets)</ImportUserLocationsByWildcardAfter40MicrosoftCommonTargets>
    <ImportUserLocationsByWildcardAfter40MicrosoftCommonTargets Condition="'$(ImportUserLocationsByWildcardAfter40MicrosoftCommonTargets)' == ''">true</ImportUserLocationsByWildcardAfter40MicrosoftCommonTargets>
    <ImportByWildcardBeforeMicrosoftCommonTargets>false</ImportByWildcardBeforeMicrosoftCommonTargets>
    <ImportByWildcardAfterMicrosoftCommonTargets>false</ImportByWildcardAfterMicrosoftCommonTargets>
    <ImportUserLocationsByWildcardBeforeMicrosoftCommonTargets>false</ImportUserLocationsByWildcardBeforeMicrosoftCommonTargets>
    <ImportUserLocationsByWildcardAfterMicrosoftCommonTargets>false</ImportUserLocationsByWildcardAfterMicrosoftCommonTargets>
    <CustomBeforeMicrosoftCommonTargets Condition="'$(CustomBeforeMicrosoftCommonTargets)' == ''">$(MSBuildExtensionsPath)\v4.0\Custom.Before.Microsoft.Common.targets</CustomBeforeMicrosoftCommonTargets>
    <CustomAfterMicrosoftCommonTargets Condition="'$(CustomAfterMicrosoftCommonTargets)' == ''">$(MSBuildExtensionsPath)\v4.0\Custom.After.Microsoft.Common.targets</CustomAfterMicrosoftCommonTargets>
    <!-- Overrides for the Microsoft.CSharp.targets extension targets -->
    <ImportByWildcardBefore40MicrosoftCSharpTargets Condition="'$(ImportByWildcardBefore40MicrosoftCSharpTargets)' == ''">$(ImportByWildcardBeforeMicrosoftCSharpTargets)</ImportByWildcardBefore40MicrosoftCSharpTargets>
    <ImportByWildcardBefore40MicrosoftCSharpTargets Condition="'$(ImportByWildcardBefore40MicrosoftCSharpTargets)' == ''">true</ImportByWildcardBefore40MicrosoftCSharpTargets>
    <ImportByWildcardAfter40MicrosoftCSharpTargets Condition="'$(ImportByWildcardAfter40MicrosoftCSharpTargets)' == ''">$(ImportByWildcardAfterMicrosoftCSharpTargets)</ImportByWildcardAfter40MicrosoftCSharpTargets>
    <ImportByWildcardAfter40MicrosoftCSharpTargets Condition="'$(ImportByWildcardAfter40MicrosoftCSharpTargets)' == ''">true</ImportByWildcardAfter40MicrosoftCSharpTargets>
    <ImportUserLocationsByWildcardBefore40MicrosoftCSharpTargets Condition="'$(ImportUserLocationsByWildcardBefore40MicrosoftCSharpTargets)' == ''">$(ImportUserLocationsByWildcardBeforeMicrosoftCSharpTargets)</ImportUserLocationsByWildcardBefore40MicrosoftCSharpTargets>
    <ImportUserLocationsByWildcardBefore40MicrosoftCSharpTargets Condition="'$(ImportUserLocationsByWildcardBefore40MicrosoftCSharpTargets)' == ''">true</ImportUserLocationsByWildcardBefore40MicrosoftCSharpTargets>
    <ImportUserLocationsByWildcardAfter40MicrosoftCSharpTargets Condition="'$(ImportUserLocationsByWildcardAfter40MicrosoftCSharpTargets)' == ''">$(ImportUserLocationsByWildcardAfterMicrosoftCSharpTargets)</ImportUserLocationsByWildcardAfter40MicrosoftCSharpTargets>
    <ImportUserLocationsByWildcardAfter40MicrosoftCSharpTargets Condition="'$(ImportUserLocationsByWildcardAfter40MicrosoftCSharpTargets)' == ''">true</ImportUserLocationsByWildcardAfter40MicrosoftCSharpTargets>
    <ImportByWildcardBeforeMicrosoftCSharpTargets>false</ImportByWildcardBeforeMicrosoftCSharpTargets>
    <ImportByWildcardAfterMicrosoftCSharpTargets>false</ImportByWildcardAfterMicrosoftCSharpTargets>
    <ImportUserLocationsByWildcardBeforeMicrosoftCSharpTargets>false</ImportUserLocationsByWildcardBeforeMicrosoftCSharpTargets>
    <ImportUserLocationsByWildcardAfterMicrosoftCSharpTargets>false</ImportUserLocationsByWildcardAfterMicrosoftCSharpTargets>
    <CustomBeforeMicrosoftCSharpTargets Condition="'$(CustomBeforeMicrosoftCSharpTargets)' == ''">$(MSBuildExtensionsPath)\v4.0\Custom.Before.Microsoft.CSharp.targets</CustomBeforeMicrosoftCSharpTargets>
    <CustomAfterMicrosoftCSharpTargets Condition="'$(CustomAfterMicrosoftCSharpTargets)' == ''">$(MSBuildExtensionsPath)\v4.0\Custom.After.Microsoft.CSharp.targets</CustomAfterMicrosoftCSharpTargets>
  </PropertyGroup>
  <PropertyGroup Condition="'$(MSBuildAssemblyVersion)' == '' and ('$(TargetFrameworkIdentifier)' == '.NETFramework' or '$(TargetFrameworkIdentifier)' == 'Silverlight' or ('$(TargetFrameworkIdentifier)' == '' and ('$(TargetRuntime)' == 'Managed' or '$(TargetRuntime)' == '')))">
    <!-- 
            Overrides for the Microsoft.NETFramework.props extension targets. Used to make sure that only the imports we specify 
            (hard-coded to 4.0 locations) are used, not the 12.0 locations that would be used by default. Required because 
            Microsoft.Common.targets imports it from the current directory, so we don't get a chance to redirect these in its 
            own redirection targets.

            NOTE: This logic is duplicated in Microsoft.VisualBasic.targets and in Microsoft.Common.targets because VB and C#
            import Microsoft.Common.targets from the current directory and thus don't get the benefit of these redirections either, 
            so for any changes to this logic in this file, please also edit the other two. 
        -->
    <ImportByWildcardBefore40MicrosoftNetFrameworkProps Condition="'$(ImportByWildcardBefore40MicrosoftNetFrameworkProps)' == ''">$(ImportByWildcardBeforeMicrosoftNetFrameworkProps)</ImportByWildcardBefore40MicrosoftNetFrameworkProps>
    <ImportByWildcardBefore40MicrosoftNetFrameworkProps Condition="'$(ImportByWildcardBefore40MicrosoftNetFrameworkProps)' == ''">true</ImportByWildcardBefore40MicrosoftNetFrameworkProps>
    <ImportByWildcardAfter40MicrosoftNetFrameworkProps Condition="'$(ImportByWildcardAfter40MicrosoftNetFrameworkProps)' == ''">$(ImportByWildcardAfterMicrosoftNetFrameworkProps)</ImportByWildcardAfter40MicrosoftNetFrameworkProps>
    <ImportByWildcardAfter40MicrosoftNetFrameworkProps Condition="'$(ImportByWildcardAfter40MicrosoftNetFrameworkProps)' == ''">true</ImportByWildcardAfter40MicrosoftNetFrameworkProps>
    <ImportUserLocationsByWildcardBefore40MicrosoftNetFrameworkProps Condition="'$(ImportUserLocationsByWildcardBefore40MicrosoftNetFrameworkProps)' == ''">$(ImportUserLocationsByWildcardBeforeMicrosoftNetFrameworkProps)</ImportUserLocationsByWildcardBefore40MicrosoftNetFrameworkProps>
    <ImportUserLocationsByWildcardBefore40MicrosoftNetFrameworkProps Condition="'$(ImportUserLocationsByWildcardBefore40MicrosoftNetFrameworkProps)' == ''">true</ImportUserLocationsByWildcardBefore40MicrosoftNetFrameworkProps>
    <ImportUserLocationsByWildcardAfter40MicrosoftNetFrameworkProps Condition="'$(ImportUserLocationsByWildcardAfter40MicrosoftNetFrameworkProps)' == ''">$(ImportUserLocationsByWildcardAfterMicrosoftNetFrameworkProps)</ImportUserLocationsByWildcardAfter40MicrosoftNetFrameworkProps>
    <ImportUserLocationsByWildcardAfter40MicrosoftNetFrameworkProps Condition="'$(ImportUserLocationsByWildcardAfter40MicrosoftNetFrameworkProps)' == ''">true</ImportUserLocationsByWildcardAfter40MicrosoftNetFrameworkProps>
    <ImportByWildcardBeforeMicrosoftNetFrameworkProps>false</ImportByWildcardBeforeMicrosoftNetFrameworkProps>
    <ImportByWildcardAfterMicrosoftNetFrameworkProps>false</ImportByWildcardAfterMicrosoftNetFrameworkProps>
    <ImportUserLocationsByWildcardBeforeMicrosoftNetFrameworkProps>false</ImportUserLocationsByWildcardBeforeMicrosoftNetFrameworkProps>
    <ImportUserLocationsByWildcardAfterMicrosoftNetFrameworkProps>false</ImportUserLocationsByWildcardAfterMicrosoftNetFrameworkProps>
  </PropertyGroup>
  <!--<ImportGroup Condition="'$(MSBuildAssemblyVersion)' == ''">-->
  <!--<Import Project="$(MSBuildUserExtensionsPath)\4.0\Microsoft.CSharp.targets\ImportBefore\*" Condition="'$(ImportUserLocationsByWildcardBefore40MicrosoftCSharpTargets)' == 'true' and exists('$(MSBuildUserExtensionsPath)\4.0\Microsoft.CSharp.targets\ImportBefore')" />-->
  <!--<Import Project="$(MSBuildExtensionsPath)\4.0\Microsoft.CSharp.targets\ImportBefore\*" Condition="'$(ImportByWildcardBefore40MicrosoftCSharpTargets)' == 'true' and exists('$(MSBuildExtensionsPath)\4.0\Microsoft.CSharp.targets\ImportBefore')" />-->
  <!--</ImportGroup>-->
  <!-- Really should be imported right before Microsoft.Common.targets, but because Microsoft.CSharp.targets imports 
        Microsoft.Common.targets from the current directory rather than using MSBuildToolsPath (which would redirect to our
        targets), we're stuck doing it this way instead. -->
  <!--<ImportGroup Condition="'$(MSBuildAssemblyVersion)' == ''">-->
  <!--<Import Project="$(MSBuildUserExtensionsPath)\4.0\Microsoft.Common.targets\ImportBefore\*" Condition="'$(ImportUserLocationsByWildcardBefore40MicrosoftCommonTargets)' == 'true' and exists('$(MSBuildUserExtensionsPath)\4.0\Microsoft.Common.targets\ImportBefore')" />-->
  <!--<Import Project="$(MSBuildExtensionsPath)\4.0\Microsoft.Common.targets\ImportBefore\*" Condition="'$(ImportByWildcardBefore40MicrosoftCommonTargets)' == 'true' and exists('$(MSBuildExtensionsPath)\4.0\Microsoft.Common.targets\ImportBefore')" />-->
  <!--</ImportGroup>-->
  <!-- Really should be imported right before Microsoft.NETFramework.props, but because Microsoft.CSharp.targets imports 
        Microsoft.Common.targets from the current directory rather than using MSBuildToolsPath (which would redirect to our
        targets), and Microsoft.Common.targets does likewise with Microsoft.NETFramework.props, we're stuck doing it this 
        way instead. -->
  <!--<ImportGroup Condition="'$(MSBuildAssemblyVersion)' == ''">-->
  <!--<Import Project="$(MSBuildUserExtensionsPath)\4.0\Microsoft.NETFramework.props\ImportBefore\*" Condition="'$(ImportUserLocationsByWildcardBefore40MicrosoftNetFrameworkProps)' == 'true' and exists('$(MSBuildUserExtensionsPath)\4.0\Microsoft.NETFramework.props\ImportBefore')" />-->
  <!--<Import Project="$(MSBuildExtensionsPath)\4.0\Microsoft.NETFramework.props\ImportBefore\*" Condition="'$(ImportByWildcardBefore40MicrosoftNetFrameworkProps)' == 'true' and exists('$(MSBuildExtensionsPath)\4.0\Microsoft.NETFramework.props\ImportBefore')" />-->
  <!--</ImportGroup>-->
  <!--
============================================================================================================================================
  <Import Project="$(CSharpTargetsPath)">

C:\Program Files (x86)\MSBuild\14.0\bin\Microsoft.CSharp.CurrentVersion.targets
============================================================================================================================================
-->
  <!--
***********************************************************************************************
Microsoft.CSharp.CurrentVersion.targets

WARNING:  DO NOT MODIFY this file unless you are knowledgeable about MSBuild and have
          created a backup copy.  Incorrect changes to this file will make it
          impossible to load or build your projects from the command-line or the IDE.

This file defines the steps in the standard build process specific for C# .NET projects.
For example, it contains the step that actually calls the C# compiler.  The remainder
of the build process is defined in Microsoft.Common.targets, which is imported by 
this file.

Copyright (C) Microsoft Corporation. All rights reserved.
***********************************************************************************************
-->
  <PropertyGroup>
    <ImportByWildcardBeforeMicrosoftCSharpTargets Condition="'$(ImportByWildcardBeforeMicrosoftCSharpTargets)' == ''">true</ImportByWildcardBeforeMicrosoftCSharpTargets>
    <ImportByWildcardAfterMicrosoftCSharpTargets Condition="'$(ImportByWildcardAfterMicrosoftCSharpTargets)' == ''">true</ImportByWildcardAfterMicrosoftCSharpTargets>
    <ImportUserLocationsByWildcardBeforeMicrosoftCSharpTargets Condition="'$(ImportUserLocationsByWildcardBeforeMicrosoftCSharpTargets)' == ''">true</ImportUserLocationsByWildcardBeforeMicrosoftCSharpTargets>
    <ImportUserLocationsByWildcardAfterMicrosoftCSharpTargets Condition="'$(ImportUserLocationsByWildcardAfterMicrosoftCSharpTargets)' == ''">true</ImportUserLocationsByWildcardAfterMicrosoftCSharpTargets>
  </PropertyGroup>
  <!--<Import Project="$(MSBuildUserExtensionsPath)\$(MSBuildToolsVersion)\Microsoft.CSharp.targets\ImportBefore\*" Condition="'$(ImportUserLocationsByWildcardBeforeMicrosoftCSharpTargets)' == 'true' and exists('$(MSBuildUserExtensionsPath)\$(MSBuildToolsVersion)\Microsoft.CSharp.targets\ImportBefore')" />-->
  <!--<Import Project="$(MSBuildExtensionsPath)\$(MSBuildToolsVersion)\Microsoft.CSharp.targets\ImportBefore\*" Condition="'$(ImportByWildcardBeforeMicrosoftCSharpTargets)' == 'true' and exists('$(MSBuildExtensionsPath)\$(MSBuildToolsVersion)\Microsoft.CSharp.targets\ImportBefore')" />-->
  <PropertyGroup>
    <CustomBeforeMicrosoftCSharpTargets Condition="'$(CustomBeforeMicrosoftCSharpTargets)'==''">$(MSBuildExtensionsPath)\v$(MSBuildToolsVersion)\Custom.Before.Microsoft.CSharp.targets</CustomBeforeMicrosoftCSharpTargets>
    <CustomAfterMicrosoftCSharpTargets Condition="'$(CustomAfterMicrosoftCSharpTargets)'==''">$(MSBuildExtensionsPath)\v$(MSBuildToolsVersion)\Custom.After.Microsoft.CSharp.targets</CustomAfterMicrosoftCSharpTargets>
  </PropertyGroup>
  <!--<Import Project="$(CustomBeforeMicrosoftCSharpTargets)" Condition="'$(CustomBeforeMicrosoftCSharpTargets)' != '' and Exists('$(CustomBeforeMicrosoftCSharpTargets)')" />-->
  <PropertyGroup>
    <MSBuildAllProjects>$(MSBuildAllProjects);$(MSBuildThisFileFullPath)</MSBuildAllProjects>
    <DefaultLanguageSourceExtension>.cs</DefaultLanguageSourceExtension>
    <Language>C#</Language>
    <TargetRuntime>Managed</TargetRuntime>
    <AlwaysUseNumericalSuffixInItemNames>true</AlwaysUseNumericalSuffixInItemNames>
    <DefineCommonItemSchemas Condition=" '$(DefineCommonItemSchemas)' == '' ">true</DefineCommonItemSchemas>
    <DefineCommonReferenceSchemas Condition=" '$(DefineCommonReferenceSchemas)' == '' ">true</DefineCommonReferenceSchemas>
    <DefineCommonCapabilities Condition=" '$(DefineCommonCapabilities)' == '' ">true</DefineCommonCapabilities>
    <SynthesizeLinkMetadata Condition=" '$(SynthesizeLinkMetadata)' == '' and '$(HasSharedItems)' == 'true' ">true</SynthesizeLinkMetadata>
  </PropertyGroup>
  <ItemGroup>
    <PropertyPageSchema Include="$(CommonXamlResourcesDirectory)CSharp.ProjectItemsSchema.xaml;" />
    <PropertyPageSchema Include="$(CommonXamlResourcesDirectory)CSharp.xaml;">
      <Context>File</Context>
    </PropertyPageSchema>
    <PropertyPageSchema Include="$(CommonXamlResourcesDirectory)CSharp.BrowseObject.xaml;">
      <Context>BrowseObject</Context>
    </PropertyPageSchema>
    <ProjectCapability Include="CSharp;Managed" />
  </ItemGroup>
  <ItemGroup Condition=" '$(DefineCommonCapabilities)' == 'true' ">
    <ProjectCapability Include="ReferencesFolder;LanguageService" />
    <ProjectCapability Include="ProjectConfigurationsInferredFromUsage" />
  </ItemGroup>
  <!--
    The CreateManifestResourceNames target create the manifest resource names from the .RESX
    files.
    
        [IN]
        @(EmbeddedResource) - The list of EmbeddedResource items that have been pre-processed to add metadata about resource type
                              Expected Metadata "Type" can either be "Resx" or "Non-Resx"

        [OUT]
        @(EmbeddedResource) - EmbeddedResource items with metadata         
        
    For C# applications the transformation is like:

        Resources1.resx => RootNamespace.Resources1 => Build into main assembly
        SubFolder\Resources1.resx => RootNamespace.SubFolder.Resources1 => Build into main assembly
        Resources1.fr.resx => RootNamespace.Resources1.fr => Build into satellite assembly
        Resources1.notaculture.resx => RootNamespace.Resources1.notaculture => Build into main assembly

    For other project systems, this transformation may be different.
    -->
  <PropertyGroup>
    <CreateManifestResourceNamesDependsOn />
  </PropertyGroup>
  <Target Name="CreateManifestResourceNames" Condition="'@(EmbeddedResource)' != ''" DependsOnTargets="$(CreateManifestResourceNamesDependsOn)">
    <ItemGroup>
      <_Temporary Remove="@(_Temporary)" />
    </ItemGroup>
    <!-- Create manifest names for culture and non-culture Resx files, and for non-culture Non-Resx resources -->
    <CreateCSharpManifestResourceName ResourceFiles="@(EmbeddedResource)" RootNamespace="$(RootNamespace)" Condition="'%(EmbeddedResource.ManifestResourceName)' == '' and ('%(EmbeddedResource.WithCulture)' == 'false' or '%(EmbeddedResource.Type)' == 'Resx')">
      <Output TaskParameter="ResourceFilesWithManifestResourceNames" ItemName="_Temporary" />
    </CreateCSharpManifestResourceName>
    <!-- Create manifest names for all culture non-resx resources -->
    <CreateCSharpManifestResourceName ResourceFiles="@(EmbeddedResource)" RootNamespace="$(RootNamespace)" PrependCultureAsDirectory="false" Condition="'%(EmbeddedResource.ManifestResourceName)' == '' and '%(EmbeddedResource.WithCulture)' == 'true' and '%(EmbeddedResource.Type)' == 'Non-Resx'">
      <Output TaskParameter="ResourceFilesWithManifestResourceNames" ItemName="_Temporary" />
    </CreateCSharpManifestResourceName>
    <ItemGroup>
      <EmbeddedResource Remove="@(EmbeddedResource)" Condition="'%(EmbeddedResource.ManifestResourceName)' == ''" />
      <EmbeddedResource Include="@(_Temporary)" />
      <_Temporary Remove="@(_Temporary)" />
    </ItemGroup>
  </Target>
  <Target Name="ResolveCodeAnalysisRuleSet" Condition="'$(CodeAnalysisRuleSet)' != ''">
    <ResolveCodeAnalysisRuleSet CodeAnalysisRuleSet="$(CodeAnalysisRuleSet)" CodeAnalysisRuleSetDirectories="$(CodeAnalysisRuleSetDirectories)" MSBuildProjectDirectory="$(MSBuildProjectDirectory)">
      <Output TaskParameter="ResolvedCodeAnalysisRuleSet" PropertyName="ResolvedCodeAnalysisRuleSet" />
    </ResolveCodeAnalysisRuleSet>
  </Target>
  <ItemGroup>
    <!-- Activate CPS projects to track folder names in namespace. -->
    <ProjectCapability Include="RelativePathDerivedDefaultNamespace" />
  </ItemGroup>
  <PropertyGroup>
    <!-- Provide a facility to override UseHostCompilerIfAvailable-->
    <UseHostCompilerIfAvailable Condition=" '$(UseHostCompilerIfAvailable)' == ''">true</UseHostCompilerIfAvailable>
  </PropertyGroup>
  <ItemGroup>
    <DocFileItem Include="$(DocumentationFile)" Condition="'$(DocumentationFile)'!=''" />
  </ItemGroup>
  <ItemGroup Condition="'$(_DebugSymbolsProduced)' == 'true' and '$(PdbFile)' != ''">
    <_DebugSymbolsIntermediatePathTemporary Include="$(PdbFile)" />
    <!-- Add any missing .pdb extension, as the compiler does -->
    <_DebugSymbolsIntermediatePath Include="@(_DebugSymbolsIntermediatePathTemporary->'%(RootDir)%(Directory)%(Filename).pdb')" />
  </ItemGroup>
  <PropertyGroup>
    <CoreCompileDependsOn>_ComputeNonExistentFileProperty;ResolveCodeAnalysisRuleSet</CoreCompileDependsOn>
    <ExportWinMDFile Condition="'$(ExportWinMDFile)' == '' and '$(OutputType)' == 'WinMDObj'">true</ExportWinMDFile>
  </PropertyGroup>
  <!--
      The XamlPreCompile target must remain identical to
      the CoreCompile target in Microsoft.CSharp.Core.targets.
      Any updates to one must be made to the other.
-->
  <Target Name="XamlPreCompile" Inputs="$(MSBuildAllProjects);&#xD;&#xA;                @(Compile);&#xD;&#xA;                @(_CoreCompileResourceInputs);&#xD;&#xA;                $(ApplicationIcon);&#xD;&#xA;                $(AssemblyOriginatorKeyFile);&#xD;&#xA;                @(ReferencePath);&#xD;&#xA;                @(CompiledLicenseFile);&#xD;&#xA;                @(LinkResource);&#xD;&#xA;                @(EmbeddedDocumentation); &#xD;&#xA;                $(Win32Resource);&#xD;&#xA;                $(Win32Manifest);&#xD;&#xA;                @(CustomAdditionalCompileInputs);&#xD;&#xA;                @(Page);&#xD;&#xA;                @(ApplicationDefinition);&#xD;&#xA;                $(ResolvedCodeAnalysisRuleSet)" Outputs="@(DocFileItem);&#xD;&#xA;                 @(XamlIntermediateAssembly);&#xD;&#xA;                 @(_DebugSymbolsIntermediatePath);&#xD;&#xA;                 $(NonExistentFile);&#xD;&#xA;                 @(CustomAdditionalCompileOutputs)" Condition="'@(Page)' != '' Or '@(ApplicationDefinition)' != ''" Returns="" DependsOnTargets="$(CoreCompileDependsOn)">
    <!-- These two compiler warnings are raised when a reference is bound to a different version
             than specified in the assembly reference version number.  MSBuild raises the same warning in this case,
             so the compiler warning would be redundant. -->
    <PropertyGroup Condition="('$(TargetFrameworkVersion)' != 'v1.0') and ('$(TargetFrameworkVersion)' != 'v1.1')">
      <NoWarn>$(NoWarn);1701;1702</NoWarn>
    </PropertyGroup>
    <PropertyGroup>
      <!-- To match historical behavior, when inside VS11+ disable the warning from csc.exe indicating that no sources were passed in-->
      <NoWarn Condition=" '$(BuildingInsideVisualStudio)' == 'true' and '$(VisualStudioVersion)' != '' and '$(VisualStudioVersion)' &gt; '10.0' ">$(NoWarn);2008</NoWarn>
    </PropertyGroup>
    <ItemGroup Condition="'$(TargetingClr2Framework)'=='true'">
      <ReferencePath>
        <EmbedInteropTypes />
      </ReferencePath>
    </ItemGroup>
    <PropertyGroup>
      <!-- If the user has specified AppConfigForCompiler, we'll use it. If they have not, but they set UseAppConfigForCompiler,
                 then we'll use AppConfig -->
      <AppConfigForCompiler Condition="'$(AppConfigForCompiler)' == '' and '$(UseAppConfigForCompiler)' == 'true'">$(AppConfig)</AppConfigForCompiler>
      <!-- If we are targeting winmdobj we want to specifically the pdbFile property since we do not want it to collide with the output of winmdexp-->
      <PdbFile Condition="'$(PdbFile)' == '' and '$(OutputType)' == 'winmdobj' and '$(_DebugSymbolsProduced)' == 'true'">$(IntermediateOutputPath)$(TargetName).compile.pdb</PdbFile>
    </PropertyGroup>
    <!-- Prefer32Bit was introduced in .NET 4.5. Set it to false if we are targeting 4.0 -->
    <PropertyGroup Condition="('$(TargetFrameworkVersion)' == 'v4.0')">
      <Prefer32Bit>false</Prefer32Bit>
    </PropertyGroup>
    <ItemGroup Condition="('$(AdditionalFileItemNames)' != '')">
      <AdditionalFileItems Include="$(AdditionalFileItemNames)" />
      <AdditionalFiles Include="@(%(AdditionalFileItems.Identity))" />
    </ItemGroup>
    <!-- Don't run analyzers for Csc task on XamlPrecompile pass, we only want to run them on core compile. -->
    <!-- Analyzers="@(Analyzer)" -->
    <PropertyGroup Condition="'$(UseSharedCompilation)' == ''">
      <UseSharedCompilation>true</UseSharedCompilation>
    </PropertyGroup>
    <!-- Condition is to filter out the _CoreCompileResourceInputs so that it doesn't pass in culture resources to the compiler -->
    <Csc Condition=" '%(_CoreCompileResourceInputs.WithCulture)' != 'true' " AdditionalLibPaths="$(AdditionalLibPaths)" AddModules="@(AddModules)" AdditionalFiles="@(AdditionalFiles)" AllowUnsafeBlocks="$(AllowUnsafeBlocks)" ApplicationConfiguration="$(AppConfigForCompiler)" BaseAddress="$(BaseAddress)" CheckForOverflowUnderflow="$(CheckForOverflowUnderflow)" CodeAnalysisRuleSet="$(ResolvedCodeAnalysisRuleSet)" CodePage="$(CodePage)" DebugType="$(DebugType)" DefineConstants="$(DefineConstants)" DelaySign="$(DelaySign)" DisabledWarnings="$(NoWarn)" DocumentationFile="@(DocFileItem)" EmitDebugInformation="$(DebugSymbols)" EnvironmentVariables="$(CscEnvironment)" ErrorEndLocation="$(ErrorEndLocation)" ErrorLog="$(ErrorLog)" ErrorReport="$(ErrorReport)" FileAlignment="$(FileAlignment)" GenerateFullPaths="$(GenerateFullPaths)" HighEntropyVA="$(HighEntropyVA)" KeyContainer="$(KeyContainerName)" KeyFile="$(KeyOriginatorFile)" LangVersion="$(LangVersion)" LinkResources="@(LinkResource)" MainEntryPoint="$(StartupObject)" ModuleAssemblyName="$(ModuleAssemblyName)" NoConfig="true" NoLogo="$(NoLogo)" NoStandardLib="$(NoCompilerStandardLib)" NoWin32Manifest="$(NoWin32Manifest)" Optimize="$(Optimize)" OutputAssembly="@(XamlIntermediateAssembly)" PdbFile="$(PdbFile)" Platform="$(PlatformTarget)" Prefer32Bit="$(Prefer32Bit)" PreferredUILang="$(PreferredUILang)" References="@(ReferencePath)" ReportAnalyzer="$(ReportAnalyzer)" Resources="@(_CoreCompileResourceInputs);@(CompiledLicenseFile)" ResponseFiles="$(CompilerResponseFile)" Sources="@(Compile)" SubsystemVersion="$(SubsystemVersion)" TargetType="$(OutputType)" ToolExe="$(CscToolExe)" ToolPath="$(CscToolPath)" TreatWarningsAsErrors="$(TreatWarningsAsErrors)" UseHostCompilerIfAvailable="$(UseHostCompilerIfAvailable)" UseSharedCompilation="$(UseSharedCompilation)" Utf8Output="$(Utf8Output)" VsSessionGuid="$(VsSessionGuid)" WarningLevel="$(WarningLevel)" WarningsAsErrors="$(WarningsAsErrors)" WarningsNotAsErrors="$(WarningsNotAsErrors)" Win32Icon="$(ApplicationIcon)" Win32Manifest="$(Win32Manifest)" Win32Resource="$(Win32Resource)" />
    <!-- Only Applicable to the regular CoreCompile:
              <ItemGroup>
                  <_CoreCompileResourceInputs Remove="@(_CoreCompileResourceInputs)" />
              </ItemGroup>

              <CallTarget Targets="$(TargetsTriggeredByCompilation)" Condition="'$(TargetsTriggeredByCompilation)' != ''"/>
-->
    <OnError Condition="'$(OnXamlPreCompileErrorTarget)' != ''" ExecuteTargets="$(OnXamlPreCompileErrorTarget)" />
  </Target>
  <PropertyGroup>
    <CSharpCoreTargetsPath Condition="'$(CSharpCoreTargetsPath)' == ''">Microsoft.CSharp.Core.targets</CSharpCoreTargetsPath>
  </PropertyGroup>
  <!--
============================================================================================================================================
  <Import Project="$(CSharpCoreTargetsPath)">

C:\Program Files (x86)\MSBuild\14.0\bin\Microsoft.CSharp.Core.targets
============================================================================================================================================
-->
  <Target Name="CoreCompile" Inputs="$(MSBuildAllProjects);&#xD;&#xA;                @(Compile);&#xD;&#xA;                @(_CoreCompileResourceInputs);&#xD;&#xA;                $(ApplicationIcon);&#xD;&#xA;                $(AssemblyOriginatorKeyFile);&#xD;&#xA;                @(ReferencePath);&#xD;&#xA;                @(CompiledLicenseFile);&#xD;&#xA;                @(LinkResource);&#xD;&#xA;                @(EmbeddedDocumentation);&#xD;&#xA;                $(Win32Resource);&#xD;&#xA;                $(Win32Manifest);&#xD;&#xA;                @(CustomAdditionalCompileInputs);&#xD;&#xA;                $(ResolvedCodeAnalysisRuleSet)" Outputs="@(DocFileItem);&#xD;&#xA;                 @(IntermediateAssembly);&#xD;&#xA;                 @(_DebugSymbolsIntermediatePath);&#xD;&#xA;                 $(NonExistentFile);&#xD;&#xA;                 @(CustomAdditionalCompileOutputs)" Returns="@(CscCommandLineArgs)" DependsOnTargets="$(CoreCompileDependsOn)">
    <!-- These two compiler warnings are raised when a reference is bound to a different version
             than specified in the assembly reference version number.  MSBuild raises the same warning in this case,
             so the compiler warning would be redundant. -->
    <PropertyGroup Condition="('$(TargetFrameworkVersion)' != 'v1.0') and ('$(TargetFrameworkVersion)' != 'v1.1')">
      <NoWarn>$(NoWarn);1701;1702</NoWarn>
    </PropertyGroup>
    <PropertyGroup>
      <!-- To match historical behavior, when inside VS11+ disable the warning from csc.exe indicating that no sources were passed in-->
      <NoWarn Condition=" '$(BuildingInsideVisualStudio)' == 'true' and '$(VisualStudioVersion)' != '' and '$(VisualStudioVersion)' &gt; '10.0' ">$(NoWarn);2008</NoWarn>
    </PropertyGroup>
    <ItemGroup Condition="'$(TargetingClr2Framework)'=='true'">
      <ReferencePath>
        <EmbedInteropTypes />
      </ReferencePath>
    </ItemGroup>
    <PropertyGroup>
      <!-- If the user has specified AppConfigForCompiler, we'll use it. If they have not, but they set UseAppConfigForCompiler,
                 then we'll use AppConfig -->
      <AppConfigForCompiler Condition="'$(AppConfigForCompiler)' == '' and '$(UseAppConfigForCompiler)' == 'true'">$(AppConfig)</AppConfigForCompiler>
      <!-- If we are targeting winmdobj we want to specifically the pdbFile property since we do not want it to collide with the output of winmdexp-->
      <PdbFile Condition="'$(PdbFile)' == '' and '$(OutputType)' == 'winmdobj' and '$(_DebugSymbolsProduced)' == 'true'">$(IntermediateOutputPath)$(TargetName).compile.pdb</PdbFile>
    </PropertyGroup>
    <!-- Prefer32Bit was introduced in .NET 4.5. Set it to false if we are targeting 4.0 -->
    <PropertyGroup Condition="('$(TargetFrameworkVersion)' == 'v4.0')">
      <Prefer32Bit>false</Prefer32Bit>
    </PropertyGroup>
    <ItemGroup Condition="('$(AdditionalFileItemNames)' != '')">
      <AdditionalFileItems Include="$(AdditionalFileItemNames)" />
      <AdditionalFiles Include="@(%(AdditionalFileItems.Identity))" />
    </ItemGroup>
    <PropertyGroup Condition="'$(UseSharedCompilation)' == ''">
      <UseSharedCompilation>true</UseSharedCompilation>
    </PropertyGroup>
    <!-- Condition is to filter out the _CoreCompileResourceInputs so that it doesn't pass in culture resources to the compiler -->
    <Csc Condition=" '%(_CoreCompileResourceInputs.WithCulture)' != 'true' " AdditionalLibPaths="$(AdditionalLibPaths)" AddModules="@(AddModules)" AdditionalFiles="@(AdditionalFiles)" AllowUnsafeBlocks="$(AllowUnsafeBlocks)" Analyzers="@(Analyzer)" ApplicationConfiguration="$(AppConfigForCompiler)" BaseAddress="$(BaseAddress)" CheckForOverflowUnderflow="$(CheckForOverflowUnderflow)" ChecksumAlgorithm="$(ChecksumAlgorithm)" CodeAnalysisRuleSet="$(ResolvedCodeAnalysisRuleSet)" CodePage="$(CodePage)" DebugType="$(DebugType)" DefineConstants="$(DefineConstants)" DelaySign="$(DelaySign)" DisabledWarnings="$(NoWarn)" DocumentationFile="@(DocFileItem)" EmitDebugInformation="$(DebugSymbols)" EnvironmentVariables="$(CscEnvironment)" ErrorEndLocation="$(ErrorEndLocation)" ErrorLog="$(ErrorLog)" ErrorReport="$(ErrorReport)" Features="$(Features)" FileAlignment="$(FileAlignment)" GenerateFullPaths="$(GenerateFullPaths)" HighEntropyVA="$(HighEntropyVA)" KeyContainer="$(KeyContainerName)" KeyFile="$(KeyOriginatorFile)" LangVersion="$(LangVersion)" LinkResources="@(LinkResource)" MainEntryPoint="$(StartupObject)" ModuleAssemblyName="$(ModuleAssemblyName)" NoConfig="true" NoLogo="$(NoLogo)" NoStandardLib="$(NoCompilerStandardLib)" NoWin32Manifest="$(NoWin32Manifest)" Optimize="$(Optimize)" Deterministic="$(Deterministic)" PublicSign="$(PublicSign)" OutputAssembly="@(IntermediateAssembly)" PdbFile="$(PdbFile)" Platform="$(PlatformTarget)" Prefer32Bit="$(Prefer32Bit)" PreferredUILang="$(PreferredUILang)" ProvideCommandLineArgs="$(ProvideCommandLineArgs)" References="@(ReferencePath)" ReportAnalyzer="$(ReportAnalyzer)" Resources="@(_CoreCompileResourceInputs);@(CompiledLicenseFile)" ResponseFiles="$(CompilerResponseFile)" RuntimeMetadataVersion="$(RuntimeMetadataVersion)" SkipCompilerExecution="$(SkipCompilerExecution)" Sources="@(Compile)" SubsystemVersion="$(SubsystemVersion)" TargetType="$(OutputType)" ToolExe="$(CscToolExe)" ToolPath="$(CscToolPath)" TreatWarningsAsErrors="$(TreatWarningsAsErrors)" UseHostCompilerIfAvailable="$(UseHostCompilerIfAvailable)" UseSharedCompilation="$(UseSharedCompilation)" Utf8Output="$(Utf8Output)" VsSessionGuid="$(VsSessionGuid)" WarningLevel="$(WarningLevel)" WarningsAsErrors="$(WarningsAsErrors)" WarningsNotAsErrors="$(WarningsNotAsErrors)" Win32Icon="$(ApplicationIcon)" Win32Manifest="$(Win32Manifest)" Win32Resource="$(Win32Resource)" PathMap="$(PathMap)">
      <Output TaskParameter="CommandLineArgs" ItemName="CscCommandLineArgs" />
    </Csc>
    <ItemGroup>
      <_CoreCompileResourceInputs Remove="@(_CoreCompileResourceInputs)" />
    </ItemGroup>
    <CallTarget Targets="$(TargetsTriggeredByCompilation)" Condition="'$(TargetsTriggeredByCompilation)' != ''" />
  </Target>
  <!--
============================================================================================================================================
  </Import>

C:\Program Files (x86)\MSBuild\14.0\bin\Microsoft.CSharp.CurrentVersion.targets
============================================================================================================================================
-->
  <!--
============================================================================================================================================
  <Import Project="Microsoft.Common.targets">

C:\Program Files (x86)\MSBuild\14.0\bin\Microsoft.Common.targets
============================================================================================================================================
-->
  <!--
***********************************************************************************************
Microsoft.Common.targets

WARNING:  DO NOT MODIFY this file unless you are knowledgeable about MSBuild and have
          created a backup copy.  Incorrect changes to this file will make it
          impossible to load or build your projects from the command-line or the IDE.

This file defines the steps in the standard build process for .NET projects.  It
contains all the steps that are common among the different .NET languages, such as
Visual Basic, and Visual C#.

Copyright (C) Microsoft Corporation. All rights reserved.
***********************************************************************************************
-->
  <!-- 
       In VS 2010 SP1 and VS 2012, both supported for asset compatibility, the MSBuild installed 
       as part of them did not enforce using the local ToolsVersion (4.0) in all cases, but instead 
       just used whatever ToolsVersion was in the project file if it existed on the machine, and 
       only forced 4.0 if that ToolsVersion did not exist.  

       Moving forward, we do want to enforce a single acting ToolsVersion per version of Visual Studio, 
       but in order to approximate this behavior on VS 2010 SP1 and VS 2012 as well, we've redirected 
       the targets:  If we're building using 4.X MSBuild (which doesn't define the new reserved 
       property, MSBuildAssemblyVersion), we'll point right back at the 4.0 targets, which still exist 
       as part of the .NET Framework.  Only if we're using the new MSBuild will we point to the current
       targets. 
   -->
  <Choose>
    <When Condition="'$(MSBuildAssemblyVersion)' == ''">
      <PropertyGroup>
        <CommonTargetsPath>$(MSBuildFrameworkToolsPath)\Microsoft.Common.targets</CommonTargetsPath>
      </PropertyGroup>
    </When>
    <Otherwise>
      <PropertyGroup>
        <CommonTargetsPath>$(MSBuildToolsPath)\Microsoft.Common.CurrentVersion.targets</CommonTargetsPath>
      </PropertyGroup>
    </Otherwise>
  </Choose>
  <PropertyGroup Condition="'$(MSBuildAssemblyVersion)' == ''">
    <!-- 
          Overrides for the Microsoft.Common.targets extension targets. Used to make sure that only the imports we specify 
          (hard-coded to 4.0 locations) are used, not the 12.0 locations that would be used by default. 

          NOTE: This logic is duplicated in Microsoft.VisualBasic.targets and in Microsoft.CSharp.targets because those two files 
          import Microsoft.Common.targets from the current directory and thus don't get the benefit of the redirections, so for 
          any changes to this logic in this file, please also edit the other two. 
      -->
    <ImportByWildcardBefore40MicrosoftCommonTargets Condition="'$(ImportByWildcardBefore40MicrosoftCommonTargets)' == ''">$(ImportByWildcardBeforeMicrosoftCommonTargets)</ImportByWildcardBefore40MicrosoftCommonTargets>
    <ImportByWildcardBefore40MicrosoftCommonTargets Condition="'$(ImportByWildcardBefore40MicrosoftCommonTargets)' == ''">true</ImportByWildcardBefore40MicrosoftCommonTargets>
    <ImportByWildcardAfter40MicrosoftCommonTargets Condition="'$(ImportByWildcardAfter40MicrosoftCommonTargets)' == ''">$(ImportByWildcardAfterMicrosoftCommonTargets)</ImportByWildcardAfter40MicrosoftCommonTargets>
    <ImportByWildcardAfter40MicrosoftCommonTargets Condition="'$(ImportByWildcardAfter40MicrosoftCommonTargets)' == ''">true</ImportByWildcardAfter40MicrosoftCommonTargets>
    <ImportUserLocationsByWildcardBefore40MicrosoftCommonTargets Condition="'$(ImportUserLocationsByWildcardBefore40MicrosoftCommonTargets)' == ''">$(ImportUserLocationsByWildcardBeforeMicrosoftCommonTargets)</ImportUserLocationsByWildcardBefore40MicrosoftCommonTargets>
    <ImportUserLocationsByWildcardBefore40MicrosoftCommonTargets Condition="'$(ImportUserLocationsByWildcardBefore40MicrosoftCommonTargets)' == ''">true</ImportUserLocationsByWildcardBefore40MicrosoftCommonTargets>
    <ImportUserLocationsByWildcardAfter40MicrosoftCommonTargets Condition="'$(ImportUserLocationsByWildcardAfter40MicrosoftCommonTargets)' == ''">$(ImportUserLocationsByWildcardAfterMicrosoftCommonTargets)</ImportUserLocationsByWildcardAfter40MicrosoftCommonTargets>
    <ImportUserLocationsByWildcardAfter40MicrosoftCommonTargets Condition="'$(ImportUserLocationsByWildcardAfter40MicrosoftCommonTargets)' == ''">true</ImportUserLocationsByWildcardAfter40MicrosoftCommonTargets>
    <ImportByWildcardBeforeMicrosoftCommonTargets>false</ImportByWildcardBeforeMicrosoftCommonTargets>
    <ImportByWildcardAfterMicrosoftCommonTargets>false</ImportByWildcardAfterMicrosoftCommonTargets>
    <ImportUserLocationsByWildcardBeforeMicrosoftCommonTargets>false</ImportUserLocationsByWildcardBeforeMicrosoftCommonTargets>
    <ImportUserLocationsByWildcardAfterMicrosoftCommonTargets>false</ImportUserLocationsByWildcardAfterMicrosoftCommonTargets>
    <CustomBeforeMicrosoftCommonTargets Condition="'$(CustomBeforeMicrosoftCommonTargets)' == ''">$(MSBuildExtensionsPath)\v4.0\Custom.Before.Microsoft.Common.targets</CustomBeforeMicrosoftCommonTargets>
    <CustomAfterMicrosoftCommonTargets Condition="'$(CustomAfterMicrosoftCommonTargets)' == ''">$(MSBuildExtensionsPath)\v4.0\Custom.After.Microsoft.Common.targets</CustomAfterMicrosoftCommonTargets>
  </PropertyGroup>
  <PropertyGroup Condition="'$(MSBuildAssemblyVersion)' == '' and ('$(TargetFrameworkIdentifier)' == '.NETFramework' or '$(TargetFrameworkIdentifier)' == 'Silverlight' or ('$(TargetFrameworkIdentifier)' == '' and ('$(TargetRuntime)' == 'Managed' or '$(TargetRuntime)' == '')))">
    <!-- 
          Overrides for the Microsoft.NETFramework.props extension targets. Used to make sure that only the imports we specify 
          (hard-coded to 4.0 locations) are used, not the 12.0 locations that would be used by default. Required because 
          Microsoft.Common.targets imports it from the current directory, so we don't get a chance to redirect these in its 
          own redirection targets. 

          NOTE: This logic is duplicated in Microsoft.VisualBasic.targets and in Microsoft.CSharp.targets because those two files 
          import Microsoft.Common.targets from the current directory and thus don't get the benefit of these redirections either, 
          so for any changes to this logic in this file, please also edit the other two. 
      -->
    <ImportByWildcardBefore40MicrosoftNetFrameworkProps Condition="'$(ImportByWildcardBefore40MicrosoftNetFrameworkProps)' == ''">$(ImportByWildcardBeforeMicrosoftNetFrameworkProps)</ImportByWildcardBefore40MicrosoftNetFrameworkProps>
    <ImportByWildcardBefore40MicrosoftNetFrameworkProps Condition="'$(ImportByWildcardBefore40MicrosoftNetFrameworkProps)' == ''">true</ImportByWildcardBefore40MicrosoftNetFrameworkProps>
    <ImportByWildcardAfter40MicrosoftNetFrameworkProps Condition="'$(ImportByWildcardAfter40MicrosoftNetFrameworkProps)' == ''">$(ImportByWildcardAfterMicrosoftNetFrameworkProps)</ImportByWildcardAfter40MicrosoftNetFrameworkProps>
    <ImportByWildcardAfter40MicrosoftNetFrameworkProps Condition="'$(ImportByWildcardAfter40MicrosoftNetFrameworkProps)' == ''">true</ImportByWildcardAfter40MicrosoftNetFrameworkProps>
    <ImportUserLocationsByWildcardBefore40MicrosoftNetFrameworkProps Condition="'$(ImportUserLocationsByWildcardBefore40MicrosoftNetFrameworkProps)' == ''">$(ImportUserLocationsByWildcardBeforeMicrosoftNetFrameworkProps)</ImportUserLocationsByWildcardBefore40MicrosoftNetFrameworkProps>
    <ImportUserLocationsByWildcardBefore40MicrosoftNetFrameworkProps Condition="'$(ImportUserLocationsByWildcardBefore40MicrosoftNetFrameworkProps)' == ''">true</ImportUserLocationsByWildcardBefore40MicrosoftNetFrameworkProps>
    <ImportUserLocationsByWildcardAfter40MicrosoftNetFrameworkProps Condition="'$(ImportUserLocationsByWildcardAfter40MicrosoftNetFrameworkProps)' == ''">$(ImportUserLocationsByWildcardAfterMicrosoftNetFrameworkProps)</ImportUserLocationsByWildcardAfter40MicrosoftNetFrameworkProps>
    <ImportUserLocationsByWildcardAfter40MicrosoftNetFrameworkProps Condition="'$(ImportUserLocationsByWildcardAfter40MicrosoftNetFrameworkProps)' == ''">true</ImportUserLocationsByWildcardAfter40MicrosoftNetFrameworkProps>
    <ImportByWildcardBeforeMicrosoftNetFrameworkProps>false</ImportByWildcardBeforeMicrosoftNetFrameworkProps>
    <ImportByWildcardAfterMicrosoftNetFrameworkProps>false</ImportByWildcardAfterMicrosoftNetFrameworkProps>
    <ImportUserLocationsByWildcardBeforeMicrosoftNetFrameworkProps>false</ImportUserLocationsByWildcardBeforeMicrosoftNetFrameworkProps>
    <ImportUserLocationsByWildcardAfterMicrosoftNetFrameworkProps>false</ImportUserLocationsByWildcardAfterMicrosoftNetFrameworkProps>
  </PropertyGroup>
  <!--<ImportGroup Condition="'$(MSBuildAssemblyVersion)' == ''">-->
  <!--<Import Project="$(MSBuildUserExtensionsPath)\4.0\Microsoft.Common.targets\ImportBefore\*" Condition="'$(ImportUserLocationsByWildcardBefore40MicrosoftCommonTargets)' == 'true' and exists('$(MSBuildUserExtensionsPath)\4.0\Microsoft.Common.targets\ImportBefore')" />-->
  <!--<Import Project="$(MSBuildExtensionsPath)\4.0\Microsoft.Common.targets\ImportBefore\*" Condition="'$(ImportByWildcardBefore40MicrosoftCommonTargets)' == 'true' and exists('$(MSBuildExtensionsPath)\4.0\Microsoft.Common.targets\ImportBefore')" />-->
  <!--</ImportGroup>-->
  <!--<ImportGroup Condition="'$(MSBuildAssemblyVersion)' == ''">-->
  <!--<Import Project="$(MSBuildUserExtensionsPath)\4.0\Microsoft.NETFramework.props\ImportBefore\*" Condition="'$(ImportUserLocationsByWildcardBefore40MicrosoftNetFrameworkProps)' == 'true' and exists('$(MSBuildUserExtensionsPath)\4.0\Microsoft.NETFramework.props\ImportBefore')" />-->
  <!--<Import Project="$(MSBuildExtensionsPath)\4.0\Microsoft.NETFramework.props\ImportBefore\*" Condition="'$(ImportByWildcardBefore40MicrosoftNetFrameworkProps)' == 'true' and exists('$(MSBuildExtensionsPath)\4.0\Microsoft.NETFramework.props\ImportBefore')" />-->
  <!--</ImportGroup>-->
  <!--
============================================================================================================================================
  <Import Project="$(CommonTargetsPath)">

C:\Program Files (x86)\MSBuild\14.0\bin\Microsoft.Common.CurrentVersion.targets
============================================================================================================================================
-->
  <!--
***********************************************************************************************
Microsoft.Common.CurrentVersion.targets

WARNING:  DO NOT MODIFY this file unless you are knowledgeable about MSBuild and have
          created a backup copy.  Incorrect changes to this file will make it
          impossible to load or build your projects from the command-line or the IDE.

This file defines the steps in the standard build process for .NET projects.  It
contains all the steps that are common among the different .NET languages, such as
Visual Basic, and Visual C#.

Copyright (C) Microsoft Corporation. All rights reserved.
***********************************************************************************************
-->
  <!--<Import Project="$(MSBuildExtensionsPath)\$(MSBuildToolsVersion)\Microsoft.Common.props" Condition="'$(MicrosoftCommonPropsHasBeenImported)' != 'true' and Exists('$(MSBuildExtensionsPath)\$(MSBuildToolsVersion)\Microsoft.Common.props')" />-->
  <PropertyGroup>
    <ImportByWildcardBeforeMicrosoftCommonTargets Condition="'$(ImportByWildcardBeforeMicrosoftCommonTargets)' == ''">true</ImportByWildcardBeforeMicrosoftCommonTargets>
    <ImportByWildcardAfterMicrosoftCommonTargets Condition="'$(ImportByWildcardAfterMicrosoftCommonTargets)' == ''">true</ImportByWildcardAfterMicrosoftCommonTargets>
    <ImportUserLocationsByWildcardBeforeMicrosoftCommonTargets Condition="'$(ImportUserLocationsByWildcardBeforeMicrosoftCommonTargets)' == ''">true</ImportUserLocationsByWildcardBeforeMicrosoftCommonTargets>
    <ImportUserLocationsByWildcardAfterMicrosoftCommonTargets Condition="'$(ImportUserLocationsByWildcardAfterMicrosoftCommonTargets)' == ''">true</ImportUserLocationsByWildcardAfterMicrosoftCommonTargets>
  </PropertyGroup>
  <!--<Import Project="$(MSBuildUserExtensionsPath)\$(MSBuildToolsVersion)\Microsoft.Common.targets\ImportBefore\*" Condition="'$(ImportUserLocationsByWildcardBeforeMicrosoftCommonTargets)' == 'true' and exists('$(MSBuildUserExtensionsPath)\$(MSBuildToolsVersion)\Microsoft.Common.targets\ImportBefore')" />-->
  <!--
============================================================================================================================================
  <Import Project="$(MSBuildExtensionsPath)\$(MSBuildToolsVersion)\Microsoft.Common.targets\ImportBefore\*" Condition="'$(ImportByWildcardBeforeMicrosoftCommonTargets)' == 'true' and exists('$(MSBuildExtensionsPath)\$(MSBuildToolsVersion)\Microsoft.Common.targets\ImportBefore')">

C:\Program Files (x86)\MSBuild\14.0\Microsoft.Common.targets\ImportBefore\Microsoft.Cpp.VCLibs120Universal.targets
============================================================================================================================================
-->
  <!--
***********************************************************************************************
Microsoft.cpp.VCLibs120Universal.targets

WARNING:  DO NOT MODIFY this file unless you are knowledgeable about MSBuild and have
      created a backup copy.  Incorrect changes to this file will make it
      impossible to load or build your projects from the command-line or the IDE.

Copyright (C) Microsoft Corporation. All rights reserved.
***********************************************************************************************
-->
  <PropertyGroup>
    <_GenerateAppxManifestDependsOn>$(_GenerateAppxManifestDependsOn);_FixVCLibs120References</_GenerateAppxManifestDependsOn>
  </PropertyGroup>
  <Target Name="_FixVCLibs120References" Condition="'$(AppxPackage)' == 'true' and '$(TargetPlatformIdentifier)' == 'UAP'">
    <!-- Check if VC libs 120 reference is found,  If found remove it-->
    <ItemGroup>
      <VCLibs120Ref Include="'%(PackagingOutputs.SDKName)'" Condition="'%(PackagingOutputs.SDKName)' == 'Microsoft.VCLibs, Version=12.0'" />
    </ItemGroup>
    <ItemGroup Condition="'@(VCLibs120Ref)' != ''">
      <PackagingOutputs Remove="@(PackagingOutputs)" Condition="'%(PackagingOutputs.SDKName)' == 'Microsoft.VCLibs, Version=12.0'" />
    </ItemGroup>
    <!-- Get the resolved SDK reference item for Microsoft.VCLibs.120, Version=14.0 and add that to the packaging output -->
    <GetInstalledSDKLocations SDKDirectoryRoots="$(SDKReferenceDirectoryRoot)" SDKExtensionDirectoryRoots="$(SDKExtensionDirectoryRoot)" SDKRegistryRoot="$(SDKReferenceRegistryRoot)" TargetPlatformVersion="$(TargetPlatformVersion)" TargetPlatformIdentifier="$(TargetPlatformIdentifier)" Condition="'@(InstalledSDKLocations)' == '' and '@(VCLibs120Ref)' != ''">
      <Output TaskParameter="InstalledSDKs" ItemName="InstalledSDKLocations" />
    </GetInstalledSDKLocations>
    <ResolveSDKReference SDKReferences="Microsoft.VCLibs.120, Version=14.0" RuntimeReferenceOnlySDKDependencies="@(RuntimeReferenceOnlySDKDependencies)" References="@(Reference)" TargetPlatformVersion="$(TargetPlatformVersion)" TargetPlatformIdentifier="$(TargetPlatformIdentifier)" WarnOnMissingPlatformVersion="$(SDKReferenceWarnOnMissingMaxPlatformVersion)" ProjectName="$(MSBuildProjectName)" TargetedSDKConfiguration="$(TargetedSDKConfiguration)" TargetedSDKArchitecture="$(TargetedSDKArchitecture)" InstalledSDKs="@(InstalledSDKLocations)" LogResolutionErrorsAsWarnings="$(LogSDKReferenceResolutionErrorsAsWarnings)" Prefer32Bit="$(Prefer32Bit)" ContinueOnError="$(ContinueOnError)" Condition="'@(VCLibs120Ref)' != ''">
      <Output TaskParameter="ResolvedSDKReferences" ItemName="VCLibs12UniversalReference" />
    </ResolveSDKReference>
    <ItemGroup Condition="'@(VCLibs120Ref)' != '' and '@(VCLibs12UniversalReference)' != '' ">
      <PackagingOutputs Include="@(VCLibs12UniversalReference)">
        <OutputGroup>GetResolvedSDKReferences</OutputGroup>
      </PackagingOutputs>
    </ItemGroup>
  </Target>
  <!-- This target adds reference to the Microsoft.UniversalCRT.Debug Extension SDK for UWP apps that :
  reference the Microsoft.VCLibs.14.00.Debug framework package
  Needs to run after the GetPackagingOutputs so that it is not added if a UCRT Debug reference is already present in the parent or referenced projects. -->
  <Target Name="_AddVCLibs140UniversalCrtDebugReference" AfterTargets="GetPackagingOutputs" Condition="'$(DisableImplicitUCRTReference)' == '' and '$(AppxPackage)' == 'true' and '$(TargetPlatformIdentifier)' == 'UAP'">
    <!-- ******************************************************************************
           This item group queries the application project for the following traits:
           a. Microsoft.VCLibs, Version=14.0, Configuration=Debug is referenced by the project or its referenced projects
           b. This project or its referenced projects already reference Microsoft.UniversalCRT.Debug, Version=<Any>
           ******************************************************************************* -->
    <ItemGroup>
      <VCLibs140UCRTRef Include="'%(PackagingOutputs.SDKName)'" Condition="'%(PackagingOutputs.SDKName)' == 'Microsoft.VCLibs, Version=14.0' and ('%(PackagingOutputs.TargetedSDKConfiguration)' == 'Debug' or '$(Configuration)'=='Debug')" />
      <HasUCRTRef Include="'%(PackagingOutputs.SDKName)'" Condition="$([System.String]::new('%(PackagingOutputs.SDKName)').StartsWith('Microsoft.UniversalCRT.Debug, Version='))" />
    </ItemGroup>
    <!-- Add UCRT Debug reference if one is not already specified and the project (or referenced projects) have a reference to VCLibs140 framework package -->
    <PropertyGroup>
      <AddUCRTRef Condition="'@(HasUCRTRef)'=='' and '@(VCLibs140UCRTRef)'!=''">true</AddUCRTRef>
    </PropertyGroup>
    <!-- Get the resolved SDK reference item for Microsoft.UniversalCRT.Debug, Version=<TPV> and add that to the packaging output -->
    <GetInstalledSDKLocations SDKDirectoryRoots="$(SDKReferenceDirectoryRoot)" SDKExtensionDirectoryRoots="$(SDKExtensionDirectoryRoot)" SDKRegistryRoot="$(SDKReferenceRegistryRoot)" TargetPlatformVersion="$(TargetPlatformVersion)" TargetPlatformIdentifier="$(TargetPlatformIdentifier)" Condition="'@(InstalledSDKLocations)' == '' and '$(AddUCRTRef)'=='true'">
      <Output TaskParameter="InstalledSDKs" ItemName="InstalledSDKLocations" />
    </GetInstalledSDKLocations>
    <!-- Find the Microsoft.Ucrt.Debug ESDK, based upon TPV.  This package is installed by the Windows 10 SDK, so there should always be a matching
           ESDK for given TPV value -->
    <ResolveSDKReference Condition="'$(AddUCRTRef)'=='true'" SDKReferences="Microsoft.UniversalCRT.Debug, Version=$(TargetPlatformVersion)" RuntimeReferenceOnlySDKDependencies="@(RuntimeReferenceOnlySDKDependencies)" References="@(Reference)" TargetPlatformVersion="$(TargetPlatformVersion)" TargetPlatformIdentifier="$(TargetPlatformIdentifier)" WarnOnMissingPlatformVersion="$(SDKReferenceWarnOnMissingMaxPlatformVersion)" ProjectName="$(MSBuildProjectName)" TargetedSDKConfiguration="$(TargetedSDKConfiguration)" TargetedSDKArchitecture="$(TargetedSDKArchitecture)" InstalledSDKs="@(InstalledSDKLocations)" LogResolutionErrorsAsWarnings="$(LogSDKReferenceResolutionErrorsAsWarnings)" Prefer32Bit="$(Prefer32Bit)" ContinueOnError="$(ContinueOnError)">
      <Output TaskParameter="ResolvedSDKReferences" ItemName="UniversalCrtDebugReference" />
    </ResolveSDKReference>
    <!-- Add the resolved ucrtbased.dll to the packaging output -->
    <ItemGroup>
      <PackagingOutputs Condition="'$(AddUCRTRef)' == 'true'" Include="@(UniversalCrtDebugReference->'%(Identity)\redist\Debug\%(TargetedSDKArchitecture)\ucrtbased.dll')">
        <OutputGroup>SDKRedistOutputGroup</OutputGroup>
        <ProjectName>$(MSBuildProjectName)</ProjectName>
        <TargetPath>ucrtbased.dll</TargetPath>
      </PackagingOutputs>
    </ItemGroup>
  </Target>
  <!--
============================================================================================================================================
  </Import>
============================================================================================================================================
-->
  <!--
============================================================================================================================================
  <Import Project="$(MSBuildExtensionsPath)\$(MSBuildToolsVersion)\Microsoft.Common.targets\ImportBefore\*" Condition="'$(ImportByWildcardBeforeMicrosoftCommonTargets)' == 'true' and exists('$(MSBuildExtensionsPath)\$(MSBuildToolsVersion)\Microsoft.Common.targets\ImportBefore')">

C:\Program Files (x86)\MSBuild\14.0\Microsoft.Common.targets\ImportBefore\Microsoft.Net.CoreRuntime.ImportBefore.targets
============================================================================================================================================
-->
  <!--
***********************************************************************************************
Microsoft.Net.CoreRuntime.ImportBefore.targets

WARNING:  DO NOT MODIFY this file unless you are knowledgeable about MSBuild and have
          created a backup copy.  Incorrect changes to this file will make it
          impossible to load or build your projects from the command-line or the IDE.

Copyright (C) Microsoft Corporation. All rights reserved.
***********************************************************************************************
-->
  <PropertyGroup>
    <NetfxCoreRuntimeSettingsTargets Condition="'$(ProjectNTargets)'==''">$(MSBuildExtensionsPath)\Microsoft\.NetNative\Microsoft.Net.CoreRuntime.Settings.targets</NetfxCoreRuntimeSettingsTargets>
  </PropertyGroup>
  <!--<Import Project="$(NetfxCoreRuntimeSettingsTargets)" Condition="'$(TargetPlatformIdentifier)' == 'UAP' and '$(AppxPackage)' == 'true' and exists('$(NetfxCoreRuntimeSettingsTargets)')" />-->
  <!--
============================================================================================================================================
  </Import>
============================================================================================================================================
-->
  <!--
============================================================================================================================================
  <Import Project="$(MSBuildExtensionsPath)\$(MSBuildToolsVersion)\Microsoft.Common.targets\ImportBefore\*" Condition="'$(ImportByWildcardBeforeMicrosoftCommonTargets)' == 'true' and exists('$(MSBuildExtensionsPath)\$(MSBuildToolsVersion)\Microsoft.Common.targets\ImportBefore')">

C:\Program Files (x86)\MSBuild\14.0\Microsoft.Common.targets\ImportBefore\Microsoft.NetNative.ImportBefore.targets
============================================================================================================================================
-->
  <!--
***********************************************************************************************
Microsoft.NetNative.ImportBefore.targets

WARNING:  DO NOT MODIFY this file unless you are knowledgeable about MSBuild and have
          created a backup copy.  Incorrect changes to this file will make it
          impossible to load or build your projects from the command-line or the IDE.

Copyright (C) Microsoft Corporation. All rights reserved.
***********************************************************************************************
-->
  <PropertyGroup>
    <_ProjectNPlatformSupported Condition="'$(TargetPlatformIdentifier)' == 'UAP'">true</_ProjectNPlatformSupported>
    <_ProjectNProjectSupported Condition="'$(AppxPackage)' == 'true'">true</_ProjectNProjectSupported>
    <!-- Denotes that Microsoft .Net Native is supported by this kind of project so corresponding UI elements should be visible -->
    <CanUseProjectN Condition="'$(_ProjectNPlatformSupported)' == 'true' and '$(_ProjectNProjectSupported)' == 'true'">true</CanUseProjectN>
    <UseDotNetNativeToolchain Condition="'$(UseDotNetNativeToolchain)' == ''">$(UseProjectNToolchain)</UseDotNetNativeToolchain>
    <ProjectNProfileEnabled Condition="'$(CanUseProjectN)'=='true'">true</ProjectNProfileEnabled>
    <ProjectNSettingsTargets Condition="'$(ProjectNTargets)'==''">$(MSBuildExtensionsPath)\Microsoft\.NetNative\Microsoft.NetNative.Settings.targets</ProjectNSettingsTargets>
  </PropertyGroup>
  <!--<Import Project="$(ProjectNSettingsTargets)" Condition="'$(ProjectNProfileEnabled)' == 'true' and exists('$(ProjectNSettingsTargets)')" />-->
  <!--
============================================================================================================================================
  </Import>
============================================================================================================================================
-->
  <!--
============================================================================================================================================
  <Import Project="$(MSBuildExtensionsPath)\$(MSBuildToolsVersion)\Microsoft.Common.targets\ImportBefore\*" Condition="'$(ImportByWildcardBeforeMicrosoftCommonTargets)' == 'true' and exists('$(MSBuildExtensionsPath)\$(MSBuildToolsVersion)\Microsoft.Common.targets\ImportBefore')">

C:\Program Files (x86)\MSBuild\14.0\Microsoft.Common.targets\ImportBefore\Microsoft.Silverlight.v4.0.WindowsPhone.targets
============================================================================================================================================
-->
  <!--
***********************************************************************************************
Microsoft.Silverlight.v4.0.WindowsPhone.targets

WARNING:  DO NOT MODIFY this file unless you are knowledgeable about MSBuild and have
      created a backup copy.  Incorrect changes to this file will make it
      impossible to load or build your projects from the command-line or the IDE.

Copyright (C) Microsoft Corporation. All rights reserved.
***********************************************************************************************
-->
  <PropertyGroup Condition="'$(TargetFrameworkIdentifier)' == 'Silverlight' and '$(TargetFrameworkVersion)' == 'v4.0'">
    <PathOfWMAppManifestRelativeToProject Condition="'$(PathOfWMAppManifestRelativeToProject)' == ''">Properties\WMAppManifest.xml</PathOfWMAppManifestRelativeToProject>
  </PropertyGroup>
  <!--
============================================================================================================================================
  </Import>
============================================================================================================================================
-->
  <!--
============================================================================================================================================
  <Import Project="$(MSBuildExtensionsPath)\$(MSBuildToolsVersion)\Microsoft.Common.targets\ImportBefore\*" Condition="'$(ImportByWildcardBeforeMicrosoftCommonTargets)' == 'true' and exists('$(MSBuildExtensionsPath)\$(MSBuildToolsVersion)\Microsoft.Common.targets\ImportBefore')">

C:\Program Files (x86)\MSBuild\14.0\Microsoft.Common.targets\ImportBefore\Windows.8.1.UT_SDKReference.props
============================================================================================================================================
-->
  <PropertyGroup>
    <UnitTestPlatformVersion Condition="'$(UnitTestPlatformVersion)' == ''">14.0</UnitTestPlatformVersion>
  </PropertyGroup>
  <Target Name="ModifyUnitTestPlatformVersion" BeforeTargets="ResolveSDKReferences">
    <ItemGroup>
      <!-- Unit Test SDK reference retarget for Windows Phone 8.1 -->
      <SDKReference Include="CppUnitTestFramework, Version=$(UnitTestPlatformVersion)" Condition="'$(PlatformToolset)' != '' and '%(SDKReference.Identity)' == 'CppUnitTestFramework, Version=12.0'" />
      <SDKReference Include="MSTestFramework, Version=$(UnitTestPlatformVersion)" Condition="'$(PlatformToolset)' == '' and '%(SDKReference.Identity)' == 'MSTestFramework, Version=12.0'" />
      <SDKReference Include="TestPlatform, Version=$(UnitTestPlatformVersion)" Condition="'%(SDKReference.Identity)' == 'TestPlatform, Version=12.0'" />
      <SDKReference Remove="CppUnitTestFramework, Version=12.0" />
      <SDKReference Remove="MSTestFramework, Version=12.0" />
      <SDKReference Remove="TestPlatform, Version=12.0" />
      <!-- Unit Test SDK reference retarget for Windows Store -->
      <SDKReference Include="CppUnitTestFramework, Version=$(UnitTestPlatformVersion)" Condition="'$(PlatformToolset)' != '' and '%(SDKReference.Identity)' == 'CppUnitTestFramework, Version=11.0' and '$(TargetPlatformIdentifier)' == 'Windows' and '$(TargetPlatformVersion)' == '8.1'" />
      <SDKReference Include="MSTestFramework, Version=$(UnitTestPlatformVersion)" Condition="'$(PlatformToolset)' == '' and '%(SDKReference.Identity)' == 'MSTestFramework, Version=11.0' and '$(TargetPlatformIdentifier)' == 'Windows' and '$(TargetPlatformVersion)' == '8.1'" />
      <SDKReference Include="TestPlatform, Version=$(UnitTestPlatformVersion)" Condition="'%(SDKReference.Identity)' == 'TestPlatform, Version=11.0' and '$(TargetPlatformIdentifier)' == 'Windows' and '$(TargetPlatformVersion)' == '8.1'" />
      <SDKReference Remove="CppUnitTestFramework, Version=11.0" Condition="'$(TargetPlatformIdentifier)' == 'Windows' and '$(TargetPlatformVersion)' == '8.1'" />
      <SDKReference Remove="MSTestFramework, Version=11.0" Condition="'$(TargetPlatformIdentifier)' == 'Windows' and '$(TargetPlatformVersion)' == '8.1'" />
      <SDKReference Remove="TestPlatform, Version=11.0" Condition="'$(TargetPlatformIdentifier)' == 'Windows' and '$(TargetPlatformVersion)' == '8.1'" />
    </ItemGroup>
  </Target>
  <PropertyGroup>
    <CppWindowsStoreUnitTestLibraryType Condition="'$(CppWindowsStoreUnitTestLibraryType)' == ''">false</CppWindowsStoreUnitTestLibraryType>
  </PropertyGroup>
  <UsingTask TaskName="Microsoft.VisualStudio.TestPlatform.BuildTasks.PackageDllIntoAppx" AssemblyFile="$(VS140COMNTOOLS)\..\IDE\CommonExtensions\Microsoft\TestWindow\Microsoft.VisualStudio.TestPlatform.BuildTasks.dll" />
  <Target Name="CppUnitTestPackageAppx" Condition="'$(CppWindowsStoreUnitTestLibraryType)' == 'true'" AfterTargets="GetPackagingOutputs">
    <PackageDllIntoAppx Inputs="@(PackagingOutputs)" TargetDirectory="$(TargetDir)">
      <Output TaskParameter="Outputs" ItemName="UpdatedPackagingOutputs" />
    </PackageDllIntoAppx>
    <ItemGroup>
      <PackagingOutputs Remove="@(PackagingOutputs)" />
      <PackagingOutputs Include="@(UpdatedPackagingOutputs)" />
    </ItemGroup>
  </Target>
  <!--
============================================================================================================================================
  </Import>

C:\Program Files (x86)\MSBuild\14.0\bin\Microsoft.Common.CurrentVersion.targets
============================================================================================================================================
-->
  <!--<Import Project="$(MSBuildProjectFullPath).user" Condition="Exists('$(MSBuildProjectFullPath).user')" />-->
  <!-- VS10 without SP1 and without VS11 will not have VisualStudioVersion set, so do that here -->
  <PropertyGroup>
    <VisualStudioVersion Condition="'$(VisualStudioVersion)' == ''">10.0</VisualStudioVersion>
  </PropertyGroup>
  <PropertyGroup>
    <CustomBeforeMicrosoftCommonTargets Condition="'$(CustomBeforeMicrosoftCommonTargets)'==''">$(MSBuildExtensionsPath)\v$(MSBuildToolsVersion)\Custom.Before.Microsoft.Common.targets</CustomBeforeMicrosoftCommonTargets>
    <CustomAfterMicrosoftCommonTargets Condition="'$(CustomAfterMicrosoftCommonTargets)'==''">$(MSBuildExtensionsPath)\v$(MSBuildToolsVersion)\Custom.After.Microsoft.Common.targets</CustomAfterMicrosoftCommonTargets>
    <ReportingServicesTargets Condition="'$(ReportingServicesTargets)'==''">$(MSBuildExtensionsPath)\Microsoft\VisualStudio\v$(VisualStudioVersion)\ReportingServices\Microsoft.ReportingServices.targets</ReportingServicesTargets>
  </PropertyGroup>
  <!--<Import Project="$(CustomBeforeMicrosoftCommonTargets)" Condition="'$(CustomBeforeMicrosoftCommonTargets)' != '' and Exists('$(CustomBeforeMicrosoftCommonTargets)')" />-->
  <!-- By default, we are creating a managed app because .NET 2.0 projects did not have this property. -->
  <PropertyGroup Condition="'$(TargetRuntime)' == ''">
    <TargetRuntime>Managed</TargetRuntime>
  </PropertyGroup>
  <!-- Because .NET 2.0 apps did not set TargetFrameworkIdentifier, we need to set it for them here by default.  If
       the runtime is set to Managed, we also need to set these.  Otherwise they should be blank (for instance Javascript or
       Native apps) because they do not target a .NET Framework. -->
  <PropertyGroup Condition="'$(TargetRuntime)' == 'Managed'">
    <TargetFrameworkIdentifier Condition="'$(TargetFrameworkIdentifier)' == ''">.NETFramework</TargetFrameworkIdentifier>
    <TargetFrameworkVersion Condition=" '$(TargetFrameworkVersion)' == '' ">v4.0</TargetFrameworkVersion>
  </PropertyGroup>
  <!-- AvailablePlatforms is the list of platform targets available. -->
  <PropertyGroup>
    <AvailablePlatforms Condition="'$(VisualStudioVersion)' == '10.0' or '$(VisualStudioVersion)' == ''">Any CPU,x86,x64,Itanium</AvailablePlatforms>
    <AvailablePlatforms Condition="'$(VisualStudioVersion)' != '' and '$(VisualStudioVersion)' &gt; '10.0'">Any CPU,x86,x64</AvailablePlatforms>
  </PropertyGroup>
  <!-- Import does NOT apply to .NETCore -->
  <!--
============================================================================================================================================
  <Import Project="Microsoft.NETFramework.props" Condition="'$(TargetFrameworkIdentifier)' == '.NETFramework' or '$(TargetFrameworkIdentifier)' == 'Silverlight'">

C:\Program Files (x86)\MSBuild\14.0\bin\Microsoft.NETFramework.props
============================================================================================================================================
-->
  <!--
***********************************************************************************************
Microsoft.NetFramework.props

WARNING:  DO NOT MODIFY this file unless you are knowledgeable about MSBuild and have
          created a backup copy.  Incorrect changes to this file will make it
          impossible to load or build your projects from the command-line or the IDE.

This file contains .net framework specific properties, items and targets. They are factored into a Microsoft.NETFramework.targets and Microsoft.NetFramework.props
these two files are used to encapsulate the multi-targeting and framework specific build process.

Copyright (C) Microsoft Corporation. All rights reserved.
***********************************************************************************************
-->
  <!-- 
        In VS 2010 SP1 and VS 2012, both supported for asset compatibility, the MSBuild installed 
        as part of them did not enforce using the local ToolsVersion (4.0) in all cases, but instead 
        just used whatever ToolsVersion was in the project file if it existed on the machine, and 
        only forced 4.0 if that ToolsVersion did not exist.  

        Moving forward, we do want to enforce a single acting ToolsVersion per version of Visual Studio, 
        but in order to approximate this behavior on VS 2010 SP1 and VS 2012 as well, we've redirected 
        the targets:  If we're building using 4.X MSBuild (which doesn't define the new reserved 
        property, MSBuildAssemblyVersion), we'll point right back at the 4.0 targets, which still exist 
        as part of the .NET Framework.  Only if we're using the new MSBuild will we point to the current
        targets. 
   -->
  <Choose>
    <When Condition="'$(MSBuildAssemblyVersion)' == ''">
      <PropertyGroup>
        <NetFrameworkPropsPath>$(MSBuildFrameworkToolsPath)\Microsoft.NetFramework.props</NetFrameworkPropsPath>
      </PropertyGroup>
    </When>
    <Otherwise>
      <PropertyGroup>
        <NetFrameworkPropsPath>$(MSBuildToolsPath)\Microsoft.NetFramework.CurrentVersion.props</NetFrameworkPropsPath>
      </PropertyGroup>
    </Otherwise>
  </Choose>
  <!--
============================================================================================================================================
  <Import Project="$(NetFrameworkPropsPath)">

C:\Program Files (x86)\MSBuild\14.0\bin\Microsoft.NetFramework.CurrentVersion.props
============================================================================================================================================
-->
  <!--
***********************************************************************************************
Microsoft.NETFramework.CurrentVersion.props

WARNING:  DO NOT MODIFY this file unless you are knowledgeable about MSBuild and have
          created a backup copy.  Incorrect changes to this file will make it
          impossible to load or build your projects from the command-line or the IDE.

This file contains .net framework specific properties, items and targets. They are factored into a Microsoft.NETFramework.targets and Microsoft.NetFramework.props
these two files are used to encapsulate the multi-targeting and framework specific build process.

Copyright (C) Microsoft Corporation. All rights reserved.
***********************************************************************************************
-->
  <PropertyGroup>
    <ImportByWildcardBeforeMicrosoftNetFrameworkProps Condition="'$(ImportByWildcardBeforeMicrosoftNetFrameworkProps)' == ''">true</ImportByWildcardBeforeMicrosoftNetFrameworkProps>
    <ImportByWildcardAfterMicrosoftNetFrameworkProps Condition="'$(ImportByWildcardAfterMicrosoftNetFrameworkProps)' == ''">true</ImportByWildcardAfterMicrosoftNetFrameworkProps>
    <ImportUserLocationsByWildcardBeforeMicrosoftNetFrameworkProps Condition="'$(ImportUserLocationsByWildcardBeforeMicrosoftNetFrameworkProps)' == ''">true</ImportUserLocationsByWildcardBeforeMicrosoftNetFrameworkProps>
    <ImportUserLocationsByWildcardAfterMicrosoftNetFrameworkProps Condition="'$(ImportUserLocationsByWildcardAfterMicrosoftNetFrameworkProps)' == ''">true</ImportUserLocationsByWildcardAfterMicrosoftNetFrameworkProps>
  </PropertyGroup>
  <!--<Import Project="$(MSBuildUserExtensionsPath)\$(MSBuildToolsVersion)\Microsoft.NETFramework.props\ImportBefore\*" Condition="'$(ImportUserLocationsByWildcardBeforeMicrosoftNetFrameworkProps)' == 'true' and exists('$(MSBuildUserExtensionsPath)\$(MSBuildToolsVersion)\Microsoft.NETFramework.props\ImportBefore')" />-->
  <!--<Import Project="$(MSBuildExtensionsPath)\$(MSBuildToolsVersion)\Microsoft.NETFramework.props\ImportBefore\*" Condition="'$(ImportByWildcardBeforeMicrosoftNetFrameworkProps)' == 'true' and exists('$(MSBuildExtensionsPath)\$(MSBuildToolsVersion)\Microsoft.NETFramework.props\ImportBefore')" />-->
  <PropertyGroup>
    <MSBuildAllProjects>$(MSBuildAllProjects);$(MSBuildThisFileFullPath)</MSBuildAllProjects>
    <!-- By default we want to replace subsets with profiles, but we do need a way to turning off this "upgrade" in case a user needs to target a subset-->
    <UpgradeSubsetToProfile Condition="'$(UpgradeSubsetToProfile)' == '' ">true</UpgradeSubsetToProfile>
    <TargetFrameworkProfile Condition="'$(UpgradeSubsetToProfile)' == 'true' and '$(TargetFrameworkSubset)' != '' and '$(TargetFrameworkProfile)' == ''">$(TargetFrameworkSubset)</TargetFrameworkProfile>
    <!-- If we are not upgrading the Subset to a profile this means we want to target a subset, do not wipe out the subset name-->
    <TargetFrameworkSubset Condition="'$(UpgradeTargetFrameworkSubsetToProfile)' == 'true'" />
  </PropertyGroup>
  <PropertyGroup Condition="'$(FrameworkPathOverride)' != ''">
    <_FullFrameworkReferenceAssemblyPaths>$(FrameworkPathOverride)</_FullFrameworkReferenceAssemblyPaths>
    <_TargetFrameworkDirectories>$(FrameworkPathOverride)</_TargetFrameworkDirectories>
  </PropertyGroup>
  <PropertyGroup Condition="'$(TargetFrameworkIdentifier)' == '.NETFramework' and '$(TargetFrameworkVersion)' == 'v4.0' and '$(FrameworkPathOverride)' == ''">
    <!-- The FrameworkPathOverride property is required for the IDE Visual Basic compiler to initialize.
             This location contains reference assemblies for mscorlib.dll and other key VB assemblies.
             This property is required during project evaluation, since the IDE compilers need to initialize before
             any targets have had a chance to run, hence the use of a function to retrieve the location.
     -->
    <!-- Hard code for the most common TargetFrameworkVersion of v4.0 with no profile: this enables us to avoid calling the GetReferenceAssemblyPaths task -->
    <_FullFrameworkReferenceAssemblyPaths Condition="Exists('$(MSBuildProgramFiles32)\Reference Assemblies\Microsoft\Framework\.NETFramework\v4.0\RedistList\FrameworkList.xml')">$(MSBuildProgramFiles32)\Reference Assemblies\Microsoft\Framework\.NETFramework\v4.0</_FullFrameworkReferenceAssemblyPaths>
    <_TargetFrameworkDirectories Condition="'$(TargetFrameworkProfile)' == ''">$(_FullFrameworkReferenceAssemblyPaths)</_TargetFrameworkDirectories>
    <FrameworkPathOverride Condition="'$(TargetFrameworkProfile)' == ''">$(_TargetFrameworkDirectories)</FrameworkPathOverride>
    <!-- Hard code for the most common TargetFrameworkVersion of v4.0 with Client profile: this enables us to avoid calling the GetReferenceAssemblyPaths task -->
    <_TargetFrameworkDirectories Condition="'$(TargetFrameworkProfile)' == 'Client' and Exists('$(MSBuildProgramFiles32)\Reference Assemblies\Microsoft\Framework\.NETFramework\v4.0\Profile\$(TargetFrameworkProfile)\RedistList\FrameworkList.xml')">$(MSBuildProgramFiles32)\Reference Assemblies\Microsoft\Framework\.NETFramework\v4.0\Profile\$(TargetFrameworkProfile)</_TargetFrameworkDirectories>
    <FrameworkPathOverride Condition="'$(TargetFrameworkProfile)' == 'Client'">$(_TargetFrameworkDirectories)</FrameworkPathOverride>
    <TargetFrameworkMonikerDisplayName Condition="'$(TargetFrameworkMonikerDisplayName)' == '' and '$(TargetFrameworkProfile)' == ''">.NET Framework 4</TargetFrameworkMonikerDisplayName>
    <TargetFrameworkMonikerDisplayName Condition="'$(TargetFrameworkMonikerDisplayName)' == '' and '$(TargetFrameworkProfile)' == 'Client'">.NET Framework 4 Client Profile</TargetFrameworkMonikerDisplayName>
  </PropertyGroup>
  <PropertyGroup>
    <MSBuildFrameworkToolsRoot Condition="'$(MSBuildFrameworkToolsRoot)' == ''">$(Registry:HKEY_LOCAL_MACHINE\Software\Microsoft\.NETFramework@InstallRoot)</MSBuildFrameworkToolsRoot>
    <_DeploymentSignClickOnceManifests Condition="'$(TargetFrameworkVersion)' == 'v2.0' or '$(TargetFrameworkVersion)' == 'v3.0' or '$(SignManifests)' == 'true'">true</_DeploymentSignClickOnceManifests>
    <!-- Assembly names added to the AdditionalExplicitAssemblyReferences property will be added as references to the resolve assembly reference call by default this is done because when upgrading from 
         a project targeting 2.0 to 3.5 the system.core reference is not added, therefore we need to add it automatically -->
    <AddAdditionalExplicitAssemblyReferences Condition="'$(AddAdditionalExplicitAssemblyReferences)' == ''">true</AddAdditionalExplicitAssemblyReferences>
    <AdditionalExplicitAssemblyReferences Condition="'$(AddAdditionalExplicitAssemblyReferences)' == 'true' and '$(TargetCompactFramework)' != 'true' and ('$(TargetFrameworkVersion)' != 'v2.0' and '$(TargetFrameworkVersion)' != 'v3.0')">System.Core;$(AdditionalExplicitAssemblyReferences)</AdditionalExplicitAssemblyReferences>
  </PropertyGroup>
  <!--
    ============================================================
                                        GetToolPaths
    Get the paths for the .NET Framework tools and sdk tools directories.
    This does not need to be a target since all of the values are availiable at project evaluation time.
    ============================================================
    -->
  <PropertyGroup>
    <TargetingClr2Framework Condition="'$(TargetFrameworkVersion)' == 'v2.0' or '$(TargetFrameworkVersion)' == 'v3.0' or '$(TargetFrameworkVersion)' == 'v3.5'">true</TargetingClr2Framework>
    <MSBuildManagedCompilerPath Condition="'$(TargetingClr2Framework)' == 'true'">$(MSBuildFrameworkToolsRoot)\v3.5</MSBuildManagedCompilerPath>
    <TargetFrameworkSDKToolsDirectory Condition="'$(TargetingClr2Framework)' == 'true'">$(SDK35ToolsPath)</TargetFrameworkSDKToolsDirectory>
    <!-- If the sdk path is not 3.5 or lower set it to the 40 sdk tools path. This will allow future target framework versions to use the 4.0 sdk tool set
             When a new windows SDK revs they will inplace update the location pointed to by this property. When a new sdk is release this target will have to be
             revised along with another toolsversion. -->
    <TargetFrameworkSDKToolsDirectory Condition=" '$(TargetFrameworkSDKToolsDirectory)' == '' ">$(SDK40ToolsPath)</TargetFrameworkSDKToolsDirectory>
    <TargetedRuntimeVersion Condition="'$(TargetedRuntimeVersion)' == '' and ('$(TargetingClr2Framework)' == 'true')">v2.0.50727</TargetedRuntimeVersion>
    <TargetedRuntimeVersion Condition="'$(TargetedRuntimeVersion)' == ''">v$(MSBuildRuntimeVersion)</TargetedRuntimeVersion>
  </PropertyGroup>
  <PropertyGroup Condition="'$(TargetFrameworkIdentifier)' == '.NETFramework' and '$(TargetingClr2Framework)' != 'true' and '$(TargetFrameworkVersion)' != 'v4.0' and ('$(OutputType)' == 'exe' or '$(OutputType)' == 'winexe' or '$(OutputType)' == 'appcontainerexe' or '$(OutputType)' == '')">
    <Prefer32Bit Condition="'$(Prefer32Bit)' == ''">true</Prefer32Bit>
  </PropertyGroup>
  <PropertyGroup>
    <Prefer32Bit Condition="'$(Prefer32Bit)' == ''">false</Prefer32Bit>
  </PropertyGroup>
  <PropertyGroup Condition="'$(TargetFrameworkIdentifier)' == '.NETFramework' and '$(TargetingClr2Framework)' != 'true' and '$(TargetFrameworkVersion)' != 'v4.0'">
    <HighEntropyVA Condition="'$(HighEntropyVA)' == ''">true</HighEntropyVA>
  </PropertyGroup>
  <PropertyGroup>
    <HighEntropyVA Condition="'$(HighEntropyVA)' == ''">false</HighEntropyVA>
  </PropertyGroup>
  <PropertyGroup>
    <!-- ARM and AppContainerExe require subsystem version >= 6.02 (Windows 8) -->
    <SubsystemVersion Condition="'$(SubsystemVersion)' == '' and ('$(PlatformTarget)' == 'ARM' or '$(OutputType)' == 'appcontainerexe' or '$(OutputType)' == 'winmdobj')">6.02</SubsystemVersion>
    <!-- Starting with .Net 4.5 projects use subsystem 6.00 (Vista) as default -->
    <SubsystemVersion Condition="'$(SubsystemVersion)' == '' and ('$(TargetFrameworkIdentifier)' == '.NETFramework' and '$(TargetingClr2Framework)' != 'true' and '$(TargetFrameworkVersion)' != 'v4.0')">6.00</SubsystemVersion>
  </PropertyGroup>
  <PropertyGroup>
    <ComReferenceExecuteAsTool Condition="'$(ExecuteAsTool)'!=''">$(ExecuteAsTool)</ComReferenceExecuteAsTool>
    <ComReferenceExecuteAsTool Condition="'$(ExecuteAsTool)'=='' and '$(TargetingClr2Framework)' == 'true'">true</ComReferenceExecuteAsTool>
  </PropertyGroup>
  <PropertyGroup>
    <ResGenExecuteAsTool Condition="'$(ExecuteAsTool)'!=''">$(ExecuteAsTool)</ResGenExecuteAsTool>
    <ResGenExecuteAsTool Condition="'$(ExecuteAsTool)'=='' and '$(TargetingClr2Framework)' == 'true'">true</ResGenExecuteAsTool>
  </PropertyGroup>
  <PropertyGroup>
    <!-- Starting with .NET 4.5 projects we implictly reference all portable design-time facades -->
    <ImplicitlyExpandDesignTimeFacades Condition="'$(ImplicitlyExpandDesignTimeFacades)' == '' and ('$(TargetFrameworkIdentifier)' == '.NETFramework' and '$(TargetingClr2Framework)' != 'true' and '$(TargetFrameworkVersion)' != 'v4.0')">true</ImplicitlyExpandDesignTimeFacades>
  </PropertyGroup>
  <!--<Import Project="$(MSBuildExtensionsPath)\$(MSBuildToolsVersion)\Microsoft.NETFramework.props\ImportAfter\*" Condition="'$(ImportByWildcardAfterMicrosoftNetFrameworkProps)' == 'true' and exists('$(MSBuildExtensionsPath)\$(MSBuildToolsVersion)\Microsoft.NETFramework.props\ImportAfter')" />-->
  <!--<Import Project="$(MSBuildUserExtensionsPath)\$(MSBuildToolsVersion)\Microsoft.NETFramework.props\ImportAfter\*" Condition="'$(ImportUserLocationsByWildcardAfterMicrosoftNetFrameworkProps)' == 'true' and exists('$(MSBuildUserExtensionsPath)\$(MSBuildToolsVersion)\Microsoft.NETFramework.props\ImportAfter')" />-->
  <!--
============================================================================================================================================
  </Import>

C:\Program Files (x86)\MSBuild\14.0\bin\Microsoft.NETFramework.props
============================================================================================================================================
-->
  <!--
============================================================================================================================================
  </Import>

C:\Program Files (x86)\MSBuild\14.0\bin\Microsoft.Common.CurrentVersion.targets
============================================================================================================================================
-->
  <PropertyGroup>
    <!-- Yield optimization properties -->
    <YieldDuringToolExecution Condition="'$(YieldDuringToolExecution)' == ''">true</YieldDuringToolExecution>
  </PropertyGroup>
  <PropertyGroup Condition="'$(TargetFrameworkIdentifier)' != '' and '$(TargetFrameworkVersion)' != ''">
    <TargetFrameworkMoniker Condition="'$(TargetFrameworkMoniker)' == '' and '$(TargetFrameworkProfile)' != ''">$(TargetFrameworkIdentifier),Version=$(TargetFrameworkVersion),Profile=$(TargetFrameworkProfile)</TargetFrameworkMoniker>
    <TargetFrameworkMoniker Condition="'$(TargetFrameworkMoniker)' == ''">$(TargetFrameworkIdentifier),Version=$(TargetFrameworkVersion)</TargetFrameworkMoniker>
    <!-- The FrameworkPathOverride is required for the inproc visual basic compiler to initialize when targeting target frameworks less than 4.0. If .net 2.0 is not installed then the property value above will not provide the location
             of mscorlib. This is also true if the build author overrides this property to some other directory which does not contain mscorlib.dll. In the case we cannot find mscorlib.dll at the correct location
             we need to find a directory which does contain mscorlib to allow the inproc compiler to initialize and give us the chance to show certain dialogs in the IDE (which only happen after initialization).-->
    <FrameworkPathOverride Condition="'$(FrameworkPathOverride)' == ''">$([Microsoft.Build.Utilities.ToolLocationHelper]::GetPathToStandardLibraries($(TargetFrameworkIdentifier), $(TargetFrameworkVersion), $(TargetFrameworkProfile), $(PlatformTarget)))</FrameworkPathOverride>
    <FrameworkPathOverride Condition="!Exists('$(FrameworkPathOverride)\mscorlib.dll')">$(MSBuildFrameworkToolsPath)</FrameworkPathOverride>
  </PropertyGroup>
  <PropertyGroup>
    <TargetPlatformIdentifier Condition="'$(TargetPlatformIdentifier)' == ''">Windows</TargetPlatformIdentifier>
    <TargetPlatformVersion Condition="'$(TargetPlatformVersion)' == ''">7.0</TargetPlatformVersion>
    <TargetPlatformSdkPath Condition=" '$(TargetPlatformIdentifier)' == 'Windows'">$([MSBuild]::GetRegistryValueFromView('HKEY_LOCAL_MACHINE\Software\Microsoft\Microsoft SDKs\Windows\v$(TargetPlatformVersion)', InstallationFolder, null, RegistryView.Registry32, RegistryView.Default))</TargetPlatformSdkPath>
    <TargetPlatformSdkPath Condition=" '$(TargetPlatformSdkPath)' == ''">$([Microsoft.Build.Utilities.ToolLocationHelper]::GetPlatformSDKLocation($(TargetPlatformIdentifier), $(TargetPlatformVersion)))</TargetPlatformSdkPath>
    <TargetPlatformSdkMetadataLocation Condition="'$(TargetPlatformSdkMetadataLocation)' == '' and Exists('$(TargetPlatformSdkPath)')">$(TargetPlatformSdkPath)Windows Metadata</TargetPlatformSdkMetadataLocation>
    <TargetPlatformSdkMetadataLocation Condition="Exists('$(TargetPlatformSdkPath)') and ('$(TargetPlatformSdkMetadataLocation)' == '' or !Exists('$(TargetPlatformSdkMetadataLocation)'))">$(TargetPlatformSdkPath)References\CommonConfiguration\Neutral</TargetPlatformSdkMetadataLocation>
    <TargetPlatformWinMDLocation Condition="'$(TargetPlatformWinMDLocation)' == '' and Exists('$(TargetPlatformSdkMetadataLocation)')">$(TargetPlatformSdkMetadataLocation)</TargetPlatformWinMDLocation>
    <UseOSWinMdReferences Condition="'$(UseOSWinMdReferences)' == '' and ('$(TargetPlatformWinMDLocation)' == '' and '$(TargetPlatformIdentifier)' == 'Windows' and '$(TargetPlatformVersion)' &gt; '7.0')">true</UseOSWinMdReferences>
    <TargetPlatformWinMDLocation Condition="'$(UseOsWinMdReferences)' == 'true'">$(WinDir)\System32\WinMetadata</TargetPlatformWinMDLocation>
    <TargetPlatformMoniker Condition="'$(TargetPlatformMoniker)' == ''">$(TargetPlatformIdentifier),Version=$(TargetPlatformVersion)</TargetPlatformMoniker>
    <TargetPlatformDisplayName Condition="'$(TargetPlatformDisplayName)' == ''">$([Microsoft.Build.Utilities.ToolLocationHelper]::GetPlatformSDKDisplayName($(TargetPlatformIdentifier), $(TargetPlatformVersion)))</TargetPlatformDisplayName>
  </PropertyGroup>
  <!--
    Several properties must be set in the main project file, before using this .TARGETS file.
    However, if the properties are not set, we pick some defaults.

    OutDir:
    Indicates the final output location for the project or solution. When building a solution,
    OutDir can be used to gather multiple project outputs in one location. In addition,
    OutDir is included in AssemblySearchPaths used for resolving references.

    OutputPath:
    This property is usually specified in the project file and is used to initialize OutDir.
    OutDir and OutputPath are distinguished for legacy reasons, and OutDir should be used if at all possible.

    BaseIntermediateOutputPath:
    This is the top level folder where all configuration specific intermediate output folders will be created.
    Default value is obj\

    IntermediateOutputPath:
    This is the full intermediate Output Path, and is derived from BaseIntermediateOutputPath, if none specified
    (eg. obj\debug). If this property is overridden, then setting BaseIntermediateOutputPath has no effect.
    -->
  <PropertyGroup>
    <!-- Ensure any OutputPath has a trailing slash, so it can be concatenated -->
    <OutputPath Condition="'$(OutputPath)' != '' and !HasTrailingSlash('$(OutputPath)')">$(OutputPath)\</OutputPath>
    <AssemblyName Condition=" '$(AssemblyName)'=='' ">$(MSBuildProjectName)</AssemblyName>
    <!--
        Be careful not to give OutputPath a default value in the case of an invalid Configuration/Platform.
        We use OutputPath specifically to check for invalid configurations/platforms.
        -->
    <OutputPath Condition=" '$(Platform)'=='' and '$(Configuration)'=='' and '$(OutputPath)'=='' ">bin\Debug\</OutputPath>
    <_OriginalConfiguration>$(Configuration)</_OriginalConfiguration>
    <_OriginalPlatform>$(Platform)</_OriginalPlatform>
    <Configuration Condition=" '$(Configuration)'=='' ">Debug</Configuration>
    <ConfigurationName Condition=" '$(ConfigurationName)' == '' ">$(Configuration)</ConfigurationName>
    <!-- Example, Debug -->
    <Platform Condition=" '$(Platform)'=='' ">AnyCPU</Platform>
    <OutputType Condition=" '$(TargetType)' != ''">$(TargetType)</OutputType>
    <OutputType Condition=" '$(TargetType)' == 'Container' or '$(TargetType)' == 'DocumentContainer' ">library</OutputType>
    <OutputType Condition=" '$(OutputType)' == '' ">exe</OutputType>
    <DebugSymbols Condition=" '$(ConfigurationName)' == 'Debug' and '$(DebugSymbols)' == '' and '$(DebugType)'==''">true</DebugSymbols>
    <!-- Whether or not a .pdb file is produced. -->
    <_DebugSymbolsProduced>false</_DebugSymbolsProduced>
    <_DebugSymbolsProduced Condition="'$(DebugSymbols)'=='true'">true</_DebugSymbolsProduced>
    <_DebugSymbolsProduced Condition="'$(DebugType)'=='none'">false</_DebugSymbolsProduced>
    <_DebugSymbolsProduced Condition="'$(DebugType)'=='pdbonly'">true</_DebugSymbolsProduced>
    <_DebugSymbolsProduced Condition="'$(DebugType)'=='full'">true</_DebugSymbolsProduced>
    <_DebugSymbolsProduced Condition="'$(DebugType)'=='portable'">true</_DebugSymbolsProduced>
    <!-- Whether or not a .xml file is produced. -->
    <_DocumentationFileProduced>true</_DocumentationFileProduced>
    <_DocumentationFileProduced Condition="'$(DocumentationFile)'==''">false</_DocumentationFileProduced>
  </PropertyGroup>
  <PropertyGroup Condition=" '$(OutputPath)' == '' ">
    <!--
        A blank OutputPath at this point means that the user passed in an invalid Configuration/Platform
        combination.  Whether this is considered an error or a warning depends on the value of
        $(SkipInvalidConfigurations).
        -->
    <_InvalidConfigurationError Condition=" '$(SkipInvalidConfigurations)' != 'true' ">true</_InvalidConfigurationError>
    <_InvalidConfigurationWarning Condition=" '$(SkipInvalidConfigurations)' == 'true' ">true</_InvalidConfigurationWarning>
  </PropertyGroup>
  <!--
    IDE Macros available from both integrated builds and from command line builds.
    The following properties are 'macros' that are available via IDE for
    pre and post build steps.
    -->
  <PropertyGroup>
    <TargetExt Condition="'$(TargetExt)' == '' and '$(OutputType)'=='exe'">.exe</TargetExt>
    <TargetExt Condition="'$(TargetExt)' == '' and '$(OutputType)'=='winexe'">.exe</TargetExt>
    <TargetExt Condition="'$(TargetExt)' == '' and '$(OutputType)'=='appcontainerexe'">.exe</TargetExt>
    <TargetExt Condition="'$(TargetExt)' == '' and '$(OutputType)'=='library'">.dll</TargetExt>
    <TargetExt Condition="'$(TargetExt)' == '' and '$(OutputType)'=='module'">.netmodule</TargetExt>
    <TargetExt Condition="'$(TargetExt)' == '' and '$(OutputType)'=='winmdobj'">.winmdobj</TargetExt>
  </PropertyGroup>
  <PropertyGroup>
    <!-- Required for enabling Team Build for packaging app package-generating projects -->
    <OutDirWasSpecified Condition=" '$(OutDir)'!='' and '$(OutDirWasSpecified)'=='' ">true</OutDirWasSpecified>
    <OutDir Condition=" '$(OutDir)' == '' ">$(OutputPath)</OutDir>
    <!-- Example, bin\Debug\ -->
    <!-- Ensure OutDir has a trailing slash, so it can be concatenated -->
    <OutDir Condition="'$(OutDir)' != '' and !HasTrailingSlash('$(OutDir)')">$(OutDir)\</OutDir>
    <ProjectName Condition=" '$(ProjectName)' == '' ">$(MSBuildProjectName)</ProjectName>
    <!-- Example, MyProject -->
    <!-- For projects that generate app packages or ones that want a per-project output directory, update OutDir to include the project name -->
    <OutDir Condition="'$(OutDir)' != '' and '$(OutDirWasSpecified)' == 'true' and (('$(WindowsAppContainer)' == 'true' and '$(GenerateProjectSpecificOutputFolder)' != 'false') or '$(GenerateProjectSpecificOutputFolder)' == 'true')">$(OutDir)$(ProjectName)\</OutDir>
    <TargetName Condition="'$(TargetName)' == '' and '$(OutputType)' == 'winmdobj' and '$(RootNamespace)' != ''">$(RootNamespace)</TargetName>
    <TargetName Condition=" '$(TargetName)' == '' ">$(AssemblyName)</TargetName>
    <!-- Example, MyAssembly -->
    <ProjectFileName Condition=" '$(ProjectFileName)' == '' ">$(MSBuildProjectFile)</ProjectFileName>
    <!-- Example, MyProject.csproj -->
    <ProjectExt Condition=" '$(ProjectExt)' == '' ">$(MSBuildProjectExtension)</ProjectExt>
    <!-- Example, .csproj -->
    <WinMDExpOutputWindowsMetadataFilename Condition="'$(WinMDExpOutputWindowsMetadataFilename)' == '' and '$(OutputType)' == 'winmdobj'">$(TargetName).winmd</WinMDExpOutputWindowsMetadataFilename>
    <TargetFileName Condition=" '$(TargetFileName)' == '' and '$(OutputType)' == 'winmdobj'">$(WinMDExpOutputWindowsMetadataFilename)</TargetFileName>
    <TargetFileName Condition=" '$(TargetFileName)' == '' ">$(TargetName)$(TargetExt)</TargetFileName>
    <!-- Example, MyAssembly.dll -->
  </PropertyGroup>
  <PropertyGroup>
    <!--
        The PublishableProject property is used when invoking the publish target on a solution that
        contains multiple projects. The property determines which projects should be published, and
        which projects should be skipped in the publish target. By default any "Windows Application"
        or "Console Application" project type is publishable. However, a project that would otherwise
        be published can be skipped by defining the PublishableProject property in the project itself.
        -->
    <_DeploymentPublishableProjectDefault Condition="'$(OutputType)'=='winexe' or '$(OutputType)'=='exe' or '$(OutputType)'=='appcontainerexe'">true</_DeploymentPublishableProjectDefault>
    <PublishableProject Condition="'$(PublishableProject)'==''">$(_DeploymentPublishableProjectDefault)</PublishableProject>
    <_DeploymentTargetApplicationManifestFileName Condition="'$(OutputType)'=='library'">Native.$(AssemblyName).manifest</_DeploymentTargetApplicationManifestFileName>
    <!-- Example, Native.MyAssembly.manifest -->
    <_DeploymentTargetApplicationManifestFileName Condition="'$(OutputType)'=='winexe'">$(TargetFileName).manifest</_DeploymentTargetApplicationManifestFileName>
    <!-- Example, MyAssembly.exe.manifest -->
    <_DeploymentTargetApplicationManifestFileName Condition="'$(OutputType)'=='exe'">$(TargetFileName).manifest</_DeploymentTargetApplicationManifestFileName>
    <!-- Example, MyAssembly.exe.manifest -->
    <_DeploymentTargetApplicationManifestFileName Condition="'$(OutputType)'=='appcontainerexe'">$(TargetFileName).manifest</_DeploymentTargetApplicationManifestFileName>
    <!-- Example, MyAssembly.exe.manifest -->
    <TargetDeployManifestFileName Condition="'$(TargetDeployManifestFileName)' == '' and '$(HostInBrowser)' != 'true'">$(AssemblyName).application</TargetDeployManifestFileName>
    <!-- Example, MyAssembly.application -->
    <TargetDeployManifestFileName Condition="'$(TargetDeployManifestFileName)' == '' and '$(HostInBrowser)' == 'true'">$(AssemblyName).xbap</TargetDeployManifestFileName>
    <!-- Example, MyAssembly.xbap -->
    <GenerateClickOnceManifests Condition="'$(OutputType)'=='winexe' or '$(OutputType)'=='exe' or '$(OutputType)'=='appcontainerexe'">$(GenerateManifests)</GenerateClickOnceManifests>
    <_DeploymentApplicationManifestIdentity Condition="'$(OutputType)'=='library'">Native.$(AssemblyName)</_DeploymentApplicationManifestIdentity>
    <_DeploymentApplicationManifestIdentity Condition="'$(OutputType)'=='winexe'">$(AssemblyName).exe</_DeploymentApplicationManifestIdentity>
    <_DeploymentApplicationManifestIdentity Condition="'$(OutputType)'=='exe'">$(AssemblyName).exe</_DeploymentApplicationManifestIdentity>
    <_DeploymentApplicationManifestIdentity Condition="'$(OutputType)'=='appcontainerexe'">$(AssemblyName).exe</_DeploymentApplicationManifestIdentity>
    <_DeploymentDeployManifestIdentity Condition="'$(HostInBrowser)' != 'true'">$(AssemblyName).application</_DeploymentDeployManifestIdentity>
    <_DeploymentDeployManifestIdentity Condition="'$(HostInBrowser)' == 'true'">$(AssemblyName).xbap</_DeploymentDeployManifestIdentity>
    <_DeploymentFileMappingExtension Condition="'$(MapFileExtensions)'=='true'">.deploy</_DeploymentFileMappingExtension>
    <_DeploymentFileMappingExtension Condition="'$(MapFileExtensions)'!='true'" />
    <_DeploymentBuiltUpdateInterval Condition="'$(UpdatePeriodically)'=='true'">$(UpdateInterval)</_DeploymentBuiltUpdateInterval>
    <_DeploymentBuiltUpdateIntervalUnits Condition="'$(UpdatePeriodically)'=='true'">$(UpdateIntervalUnits)</_DeploymentBuiltUpdateIntervalUnits>
    <_DeploymentBuiltUpdateInterval Condition="'$(UpdatePeriodically)'!='true'">0</_DeploymentBuiltUpdateInterval>
    <_DeploymentBuiltUpdateIntervalUnits Condition="'$(UpdatePeriodically)'!='true'">Days</_DeploymentBuiltUpdateIntervalUnits>
    <_DeploymentBuiltMinimumRequiredVersion Condition="'$(UpdateRequired)'=='true' and '$(Install)'=='true'">$(MinimumRequiredVersion)</_DeploymentBuiltMinimumRequiredVersion>
    <MaxTargetPath Condition="'$(MaxTargetPath)'==''">100</MaxTargetPath>
  </PropertyGroup>
  <PropertyGroup>
    <!--
        By default, GenerateApplicationManifest puts all satellite assemblies to the manifest
        record by default by setting TargetCulture to *.
        -->
    <TargetCulture Condition="'$(TargetCulture)'==''">*</TargetCulture>
    <FallbackCulture Condition="'$(UICulture)'!='' and '$(FallbackCulture)'==''">$(UICulture)</FallbackCulture>
  </PropertyGroup>
  <ItemGroup>
    <!-- Not used any more-->
    <_OutputPathItem Include="$(OutDir)" />
    <_UnmanagedRegistrationCache Include="$(BaseIntermediateOutputPath)$(MSBuildProjectFile).UnmanagedRegistration.cache" />
    <_ResolveComReferenceCache Include="$(IntermediateOutputPath)$(MSBuildProjectFile).ResolveComReference.cache" />
  </ItemGroup>
  <PropertyGroup>
    <!-- Example, c:\MyProjects\MyProject\bin\debug\ -->
    <!--
        Condition intentionally omitted on this one, because it causes problems
        when we pick up the value of an environment variable named TargetDir
        -->
    <TargetDir Condition="'$(OutDir)' != ''">$([MSBuild]::Escape($([System.IO.Path]::GetFullPath(`$([System.IO.Path]::Combine(`$(MSBuildProjectDirectory)`, `$(OutDir)`))`))))</TargetDir>
    <!-- Example, c:\MyProjects\MyProject\bin\debug\MyAssembly.dll -->
    <TargetPath Condition=" '$(TargetPath)' == '' ">$(TargetDir)$(TargetFileName)</TargetPath>
    <!-- Example, c:\MyProjects\MyProject\ -->
    <ProjectDir Condition=" '$(ProjectDir)' == '' ">$(MSBuildProjectDirectory)\</ProjectDir>
    <!-- Example, c:\MyProjects\MyProject\MyProject.csproj -->
    <ProjectPath Condition=" '$(ProjectPath)' == '' ">$(ProjectDir)$(ProjectFileName)</ProjectPath>
    <!-- Example, AnyCPU -->
    <PlatformName Condition=" '$(PlatformName)' == '' ">$(Platform)</PlatformName>
  </PropertyGroup>
  <ItemGroup>
    <!-- This is not used here but remains for backwards compatibility -->
    <AppConfigFileDestination Include="$(OutDir)$(TargetFileName).config" />
  </ItemGroup>
  <!--
    IDE Macros available only from integrated builds.
    The following properties are 'macros' that are available via IDE for
    pre and post build steps. However, they are not defined when directly building
    a project from the command line, only when building a solution.
    -->
  <PropertyGroup>
    <DevEnvDir Condition="'$(DevEnvDir)'==''">*Undefined*</DevEnvDir>
    <SolutionName Condition="'$(SolutionName)'==''">*Undefined*</SolutionName>
    <!-- Example, MySolution -->
    <SolutionFileName Condition="'$(SolutionFileName)'==''">*Undefined*</SolutionFileName>
    <!-- Example, MySolution.sln -->
    <SolutionPath Condition="'$(SolutionPath)'==''">*Undefined*</SolutionPath>
    <!-- Example, f:\MySolutions\MySolution\MySolution.sln -->
    <SolutionDir Condition="'$(SolutionDir)'==''">*Undefined*</SolutionDir>
    <!-- Example, f:\MySolutions\MySolution\ -->
    <SolutionExt Condition="'$(SolutionExt)'==''">*Undefined*</SolutionExt>
    <!-- Example, .sln -->
  </PropertyGroup>
  <PropertyGroup>
    <GenerateBindingRedirectsOutputType Condition="'$(OutputType)'=='exe' or '$(OutputType)'=='winexe'">true</GenerateBindingRedirectsOutputType>
  </PropertyGroup>
  <PropertyGroup>
    <AutoUnifyAssemblyReferences>true</AutoUnifyAssemblyReferences>
    <AutoUnifyAssemblyReferences Condition="'$(GenerateBindingRedirectsOutputType)' == 'true' and '$(AutoGenerateBindingRedirects)' != 'true'">false</AutoUnifyAssemblyReferences>
    <BaseIntermediateOutputPath Condition="'$(BaseIntermediateOutputPath)'=='' ">obj\</BaseIntermediateOutputPath>
    <BaseIntermediateOutputPath Condition="!HasTrailingSlash('$(BaseIntermediateOutputPath)')">$(BaseIntermediateOutputPath)\</BaseIntermediateOutputPath>
    <CleanFile Condition="'$(CleanFile)'==''">$(MSBuildProjectFile).FileListAbsolute.txt</CleanFile>
    <!-- During DesignTime Builds, skip project reference build as Design time is only queueing information.-->
    <BuildProjectReferences Condition="'$(BuildProjectReferences)' == '' and '$(DesignTimeBuild)' == 'true'">false</BuildProjectReferences>
    <!-- By default we will build (and if applicable, clean) all project references. But this can be used to disable that-->
    <BuildProjectReferences Condition="'$(BuildProjectReferences)' == ''">true</BuildProjectReferences>
    <BuildInParallel Condition="'$(BuildInParallel)' == ''">true</BuildInParallel>
    <_ResolveReferenceDependencies Condition="'$(_ResolveReferenceDependencies)' == ''">false</_ResolveReferenceDependencies>
    <_GetChildProjectCopyToOutputDirectoryItems Condition="'$(_GetChildProjectCopyToOutputDirectoryItems)' == ''">true</_GetChildProjectCopyToOutputDirectoryItems>
    <OverwriteReadOnlyFiles Condition="'$(OverwriteReadOnlyFiles)' == ''">false</OverwriteReadOnlyFiles>
    <ComReferenceNoClassMembers Condition="'$(ComReferenceNoClassMembers)' == ''">false</ComReferenceNoClassMembers>
  </PropertyGroup>
  <PropertyGroup Condition=" $(IntermediateOutputPath) == '' ">
    <IntermediateOutputPath Condition=" '$(PlatformName)' == 'AnyCPU' ">$(BaseIntermediateOutputPath)$(Configuration)\</IntermediateOutputPath>
    <IntermediateOutputPath Condition=" '$(PlatformName)' != 'AnyCPU' ">$(BaseIntermediateOutputPath)$(PlatformName)\$(Configuration)\</IntermediateOutputPath>
  </PropertyGroup>
  <PropertyGroup>
    <IntermediateOutputPath Condition="!HasTrailingSlash('$(IntermediateOutputPath)')">$(IntermediateOutputPath)\</IntermediateOutputPath>
    <_GenerateBindingRedirectsIntermediateAppConfig>$(IntermediateOutputPath)$(MSBuildProjectFile).$(TargetFileName).config</_GenerateBindingRedirectsIntermediateAppConfig>
  </PropertyGroup>
  <ItemGroup>
    <IntermediateAssembly Include="$(IntermediateOutputPath)$(TargetName)$(TargetExt)" />
    <FinalDocFile Include="@(DocFileItem->'$(OutDir)%(Filename)%(Extension)')" />
  </ItemGroup>
  <ItemGroup Condition="'$(_DebugSymbolsProduced)' == 'true'">
    <_DebugSymbolsIntermediatePath Include="$(IntermediateOutputPath)$(TargetName).compile.pdb" Condition="'$(OutputType)' == 'winmdobj' and '@(_DebugSymbolsIntermediatePath)' == ''" />
    <_DebugSymbolsIntermediatePath Include="$(IntermediateOutputPath)$(TargetName).pdb" Condition="'$(OutputType)' != 'winmdobj' and '@(_DebugSymbolsIntermediatePath)' == ''" />
    <_DebugSymbolsOutputPath Include="@(_DebugSymbolsIntermediatePath->'$(OutDir)%(Filename)%(Extension)')" />
  </ItemGroup>
  <PropertyGroup Condition="'$(_DebugSymbolsProduced)' == 'true' and '$(OutputType)' == 'winmdobj'">
    <WinMDExpOutputPdb Condition="'$(WinMDExpOutputPdb)' == ''">$(IntermediateOutputPath)$(TargetName).pdb</WinMDExpOutputPdb>
    <_WinMDDebugSymbolsOutputPath>$([System.IO.Path]::Combine('$(OutDir)', $([System.IO.Path]::GetFileName('$(WinMDExpOutputPdb)'))))</_WinMDDebugSymbolsOutputPath>
  </PropertyGroup>
  <PropertyGroup Condition="'$(OutputType)' == 'winmdobj' and '$(DocumentationFile)'!=''">
    <WinMDOutputDocumentationFile Condition="'$(WinMDOutputDocumentationFile)' == ''">$(IntermediateOutputPath)$(TargetName).xml</WinMDOutputDocumentationFile>
    <_WinMDDocFileOutputPath>$([System.IO.Path]::Combine('$(OutDir)', $([System.IO.Path]::GetFileName('$(WinMDOutputDocumentationFile)'))))</_WinMDDocFileOutputPath>
  </PropertyGroup>
  <PropertyGroup Condition="'$(WinMDExpOutputWindowsMetadataFilename)' != ''">
    <_IntermediateWindowsMetadataPath>$(IntermediateOutputPath)$(WinMDExpOutputWindowsMetadataFilename)</_IntermediateWindowsMetadataPath>
    <_WindowsMetadataOutputPath>$(OutDir)$(WinMDExpOutputWindowsMetadataFilename)</_WindowsMetadataOutputPath>
  </PropertyGroup>
  <ItemGroup>
    <!-- Create an item for entry point of the ClickOnce application (Example: WindowsApplication1.exe) -->
    <_DeploymentManifestEntryPoint Include="@(IntermediateAssembly)">
      <TargetPath>$(TargetFileName)</TargetPath>
    </_DeploymentManifestEntryPoint>
    <!-- Create an item for the application icon if one exists in the project (Example: app.ico) -->
    <!-- NOTE: The item Include and the Exists function are operating relative to the PROJECT (.csproj, .vbproj etc.) directory in this case -->
    <_DeploymentManifestIconFile Include="$(ApplicationIcon)" Condition="Exists('$(ApplicationIcon)')">
      <TargetPath>$(ApplicationIcon)</TargetPath>
    </_DeploymentManifestIconFile>
    <!-- Create an item for the output application manifest (Example: WindowsApplication1.exe.manifeset) -->
    <ApplicationManifest Include="$(IntermediateOutputPath)$(_DeploymentTargetApplicationManifestFileName)">
      <TargetPath>$(_DeploymentTargetApplicationManifestFileName)</TargetPath>
    </ApplicationManifest>
    <!-- Create an item for the final application manifest (Example: WindowsApplication1.exe.manifeset)
             This item represents the final output application manifest used for project-to-project
             references and for copying to the publish output location. -->
    <_ApplicationManifestFinal Include="$(OutDir)$(_DeploymentTargetApplicationManifestFileName)">
      <TargetPath>$(_DeploymentTargetApplicationManifestFileName)</TargetPath>
    </_ApplicationManifestFinal>
    <!-- Create an item for the output deploy manifest (Example: WindowsApplication1.application) -->
    <DeployManifest Include="$(IntermediateOutputPath)$(TargetDeployManifestFileName)">
      <TargetPath>$(TargetDeployManifestFileName)</TargetPath>
    </DeployManifest>
    <!-- Create an item for the intermediate trust info file -->
    <_DeploymentIntermediateTrustInfoFile Include="$(IntermediateOutputPath)$(TargetName).TrustInfo.xml" Condition="'$(TargetZone)'!=''" />
  </ItemGroup>
  <!--
    Determine the <deploymentProvider> (_DeploymentUrl) for the ClickOnce deployment manifest.
    Prefer the UpdateUrl, falling back to InstallUrl or PublishUrl if not specified.
    If the UpdateUrl is specified then _DeploymentUrl is always set to the UpdateUrl.
    Otherwise, only set the _DeploymentUrl if it's an installed app and updates are enabled.
    -->
  <PropertyGroup>
    <_DeploymentUrl Condition="'$(_DeploymentUrl)'==''">$(UpdateUrl)</_DeploymentUrl>
    <_DeploymentUrl Condition="'$(_DeploymentUrl)'==''">$(InstallUrl)</_DeploymentUrl>
    <_DeploymentUrl Condition="'$(_DeploymentUrl)'==''">$(PublishUrl)</_DeploymentUrl>
    <_DeploymentUrl Condition="!('$(UpdateUrl)'=='') and '$(Install)'=='false'" />
    <_DeploymentUrl Condition="'$(_DeploymentUrl)'!=''">$(_DeploymentUrl)$(TargetDeployManifestFileName)</_DeploymentUrl>
    <!--
        Need to explicitly blank out the _DeploymentUrl when it's not used. Otherwise an
        inappropriate value may be used. For example a local path from the PublishUrl
        is something we never want to see in the manifest because it means you could
        only install the app from that machine.
        -->
    <_DeploymentUrl Condition="'$(UpdateUrl)'=='' and !('$(Install)'=='true' and '$(UpdateEnabled)'=='true')" />
    <_DeploymentUrl Condition="'$(ExcludeDeploymentUrl)'=='true'" />
  </PropertyGroup>
  <!-- Determine the URLs for the bootstrapper. -->
  <PropertyGroup>
    <_DeploymentApplicationUrl Condition="'$(IsWebBootstrapper)'=='true'">$(InstallUrl)</_DeploymentApplicationUrl>
    <_DeploymentApplicationUrl Condition="'$(IsWebBootstrapper)'=='true' and '$(InstallUrl)'==''">$(PublishUrl)</_DeploymentApplicationUrl>
    <_DeploymentComponentsUrl Condition="'$(BootstrapperComponentsLocation)'=='Absolute'">$(BootstrapperComponentsUrl)</_DeploymentComponentsUrl>
  </PropertyGroup>
  <!-- Output location for publish target. -->
  <PropertyGroup>
    <PublishDir Condition="'$(PublishDir)' != '' and !HasTrailingSlash('$(PublishDir)')">$(PublishDir)\</PublishDir>
    <PublishDir Condition="'$(PublishDir)'==''">$(OutputPath)app.publish\</PublishDir>
  </PropertyGroup>
  <!--
    ProcessorArchitecture is the target processor architecture.
    -->
  <PropertyGroup Condition="'$(ProcessorArchitecture)'==''">
    <!--
        If ProcessorArchitecture is not set, set it to PlatformTarget
        Note: if $(PlatformTarget) is also blank resolve assembly reference defaults to msil which is the
        desired behavior in this case
        -->
    <ProcessorArchitecture>$(PlatformTarget)</ProcessorArchitecture>
    <!--
        If Processor architecture is not set and PlatformTarget is a known target translate the
        PlatformTarget into something ResolveAssemblyReference knows about
        -->
    <ProcessorArchitecture Condition=" '$(PlatformTarget)' == 'AnyCpu' ">msil</ProcessorArchitecture>
    <ProcessorArchitecture Condition=" '$(PlatformTarget)' == 'x64' ">amd64</ProcessorArchitecture>
    <ProcessorArchitecture Condition=" '$(PlatformTarget)' == 'Itanium' ">ia64</ProcessorArchitecture>
    <ProcessorArchitecture Condition=" '$(PlatformTarget)' == 'x86' ">x86</ProcessorArchitecture>
    <ProcessorArchitecture Condition=" '$(PlatformTarget)' == 'ARM' ">arm</ProcessorArchitecture>
  </PropertyGroup>
  <PropertyGroup>
    <ConsiderPlatformAsProcessorArchitecture Condition="'$(ConsiderPlatformAsProcessorArchitecture)' == ''">true</ConsiderPlatformAsProcessorArchitecture>
  </PropertyGroup>
  <PropertyGroup Condition="'$(ProcessorArchitecture)' == '' and '$(ConsiderPlatformAsProcessorArchitecture)' == 'true'">
    <!-- We need to do this here because if we were to just compare against platform visual would parse them out as available platforms which may not be the case -->
    <ProcessorArchitectureAsPlatform>$(Platform)</ProcessorArchitectureAsPlatform>
    <ProcessorArchitecture Condition=" '$(ProcessorArchitectureAsPlatform)' == 'AnyCpu' or '$(ProcessorArchitectureAsPlatform)' == 'Any Cpu'">msil</ProcessorArchitecture>
    <ProcessorArchitecture Condition=" '$(ProcessorArchitectureAsPlatform)' == 'x64' or '$(ProcessorArchitectureAsPlatform)' == 'amd64'">amd64</ProcessorArchitecture>
    <ProcessorArchitecture Condition=" '$(ProcessorArchitectureAsPlatform)' == 'Itanium' ">ia64</ProcessorArchitecture>
    <ProcessorArchitecture Condition=" '$(ProcessorArchitectureAsPlatform)' == 'x86' or '$(ProcessorArchitectureAsPlatform)' == 'win32'">x86</ProcessorArchitecture>
    <ProcessorArchitecture Condition=" '$(ProcessorArchitectureAsPlatform)' == 'ARM' ">arm</ProcessorArchitecture>
    <!--For compatibility with the 4.0 behavior, if not set above, default to the environment. To override this, set ProcessorArchitecture explicitly. We also need to disable the warning since we do not know if what the environment is set to is correct-->
    <ResolveAssemblyWarnOrErrorOnTargetArchitectureMismatch Condition="'$(ProcessorArchitecture)'==''">None</ResolveAssemblyWarnOrErrorOnTargetArchitectureMismatch>
    <ProcessorArchitecture Condition="'$(ProcessorArchitecture)'==''">$(PROCESSOR_ARCHITECTURE)</ProcessorArchitecture>
  </PropertyGroup>
  <!-- Sensible defaults for the most-commonly-desired MSBuildRuntime and MSBuildArchitecture values -->
  <PropertyGroup Condition="'$(DisableOutOfProcTaskHost)' == ''">
    <TargetFrameworkAsMSBuildRuntime Condition="'$(TargetFrameworkVersion)' == 'v2.0' or '$(TargetFrameworkVersion)' == 'v3.0' or '$(TargetFrameworkVersion)' == 'v3.5'">CLR2</TargetFrameworkAsMSBuildRuntime>
    <TargetFrameworkAsMSBuildRuntime Condition="'$(TargetFrameworkVersion)' == 'v4.0' or '$(TargetFrameworkVersion)' == 'v4.5'">CLR4</TargetFrameworkAsMSBuildRuntime>
    <TargetFrameworkAsMSBuildRuntime Condition="'$(TargetFrameworkAsMSBuildRuntime)' == ''">CurrentRuntime</TargetFrameworkAsMSBuildRuntime>
    <PlatformTargetAsMSBuildArchitectureExplicitlySet Condition="'$(PlatformTargetAsMSBuildArchitecture)' != ''">true</PlatformTargetAsMSBuildArchitectureExplicitlySet>
    <PlatformTargetAsMSBuildArchitectureExplicitlySet Condition="'$(PlatformTargetAsMSBuildArchitecture)' == ''">false</PlatformTargetAsMSBuildArchitectureExplicitlySet>
    <PlatformTargetAsMSBuildArchitecture Condition="'$(PlatformTarget)' == 'x86' or ('$(PlatformTarget)' == 'x64' and '$(MSBuildExtensionsPath64)' != '')">$(PlatformTarget)</PlatformTargetAsMSBuildArchitecture>
    <PlatformTargetAsMSBuildArchitecture Condition="'$(PlatformTarget)' == 'arm'">x86</PlatformTargetAsMSBuildArchitecture>
    <PlatformTargetAsMSBuildArchitecture Condition="('$(PlatformTarget)' == 'ia64' and '$(MSBuildExtensionsPath64)' != '')">x64</PlatformTargetAsMSBuildArchitecture>
    <PlatformTargetAsMSBuildArchitecture Condition="'$(PlatformTargetAsMSBuildArchitecture)' == ''">CurrentArchitecture</PlatformTargetAsMSBuildArchitecture>
  </PropertyGroup>
  <!-- Flavor is the project flavor. For example, Client, Smart Devices, SQL Server, etc. -->
  <PropertyGroup>
    <ProjectFlavor Condition="'$(ProjectFlavor)'==''">Client</ProjectFlavor>
  </PropertyGroup>
  <!--
    The default for compilers is to not delay-sign. If $(DelaySign) is false, let the compiler
    use its default rather than forcing a no-delay-sign flag to be passed in. This is so that
    attributes in the source code can override this decision.
    -->
  <PropertyGroup>
    <DelaySign Condition="'$(SignAssembly)' != 'true'">false</DelaySign>
    <DelaySign Condition="'$(DelaySign)'!='true'" />
  </PropertyGroup>
  <!-- These properties control web reference proxy generation. -->
  <PropertyGroup>
    <WebReference_EnableProperties Condition=" '$(WebReference_EnableProperties)' == '' ">true</WebReference_EnableProperties>
    <WebReference_EnableSQLTypes Condition=" '$(WebReference_EnableSQLTypes)' == '' ">true</WebReference_EnableSQLTypes>
    <WebReference_EnableLegacyEventingModel Condition=" '$(WebReference_EnableLegacyEventingModel)' == '' ">false</WebReference_EnableLegacyEventingModel>
  </PropertyGroup>
  <PropertyGroup>
    <MSBuildAllProjects>$(MSBuildAllProjects);$(MSBuildProjectFullPath);$(MSBuildThisFileFullPath)</MSBuildAllProjects>
    <MSBuildAllProjects Condition="Exists('$(MSBuildProjectFullPath).user')">$(MSBuildAllProjects);$(MSBuildProjectFullPath).user</MSBuildAllProjects>
  </PropertyGroup>
  <!--
    These parameters control where to look in the registry for directories to search for
    assemblies in the assembly resolution tasks.
    -->
  <PropertyGroup>
    <AssemblyFoldersSuffix Condition=" '$(AssemblyFoldersSuffix)' == '' ">AssemblyFoldersEx</AssemblyFoldersSuffix>
    <FrameworkRegistryBase Condition=" '$(FrameworkRegistryBase)' == '' ">Software\Microsoft\$(TargetFrameworkIdentifier)</FrameworkRegistryBase>
    <TargetPlatformRegistryBase Condition="'$(TargetPlatformRegistryBase)' == ''">Software\Microsoft\Microsoft SDKs\$(TargetPlatformIdentifier)</TargetPlatformRegistryBase>
    <!--
        The SearchPaths property is set to find assemblies in the following order:

            (1) Files from current project - indicated by {CandidateAssemblyFiles}
            (2) $(ReferencePath) - the reference path property, which comes from the .USER file.
            (3) The hintpath from the referenced item itself, indicated by {HintPathFromItem}.
            (4) The directory of MSBuild's "target" runtime from GetFrameworkPath.
                The "target" runtime folder is the folder of the runtime that MSBuild is a part of.
            (5) Registered assembly folders, indicated by {Registry:*,*,*}
            (6) Legacy registered assembly folders, indicated by {AssemblyFolders}
            (7) Resolve to the GAC.
            (8) Treat the reference's Include as if it were a real file name.
            (9) Look in the application's output folder (like bin\debug)
        -->
    <AssemblySearchPaths Condition=" '$(AssemblySearchPaths)' == ''">
      {CandidateAssemblyFiles};
      $(ReferencePath);
      {HintPathFromItem};
      {TargetFrameworkDirectory};
      {Registry:$(FrameworkRegistryBase),$(TargetFrameworkVersion),$(AssemblyFoldersSuffix)$(AssemblyFoldersExConditions)};
      {AssemblyFolders};
      {GAC};
      {RawFileName};
      $(OutDir)
    </AssemblySearchPaths>
    <!--
        These are the extensions that assembly reference resolution will consider for resolution.
        Add new extensions here if you want to add new file types to consider (for example, .metadata_dll).
        Put the most likely extensions first for reference resolution speed.
        -->
    <AllowedReferenceAssemblyFileExtensions Condition=" '$(AllowedReferenceAssemblyFileExtensions)' == '' ">
      .winmd;
      .dll;
      .exe
    </AllowedReferenceAssemblyFileExtensions>
    <!--
        These are the extensions that reference resolution will consider when looking for files related
        to resolved references.  Add new extensions here if you want to add new file types to consider.
        -->
    <AllowedReferenceRelatedFileExtensions Condition=" '$(AllowedReferenceRelatedFileExtensions)' == '' ">
      .pdb;
      .xml;
      .pri
    </AllowedReferenceRelatedFileExtensions>
    <!--
        These names are used when determining which TargetFramework subset to use. If the any of the FullReferenceAssemblyNames
        are seen in the list of client subsets, RAR will assume that no client subset is being used. The list is semicolon seperated
        For example :   Full;Complete;AllThere
        -->
    <FullReferenceAssemblyNames Condition="'$(FullReferenceAssemblyNames)' == ''">Full</FullReferenceAssemblyNames>
  </PropertyGroup>
  <!-- ContinueOnError takes 3 values:  WarnAndContinue (true), ErrorAndStop (false), and ErrorAndContinue.
         Default to ErrorAndStop, since that matches the behaviour in previous versions, and what users
         typically expect -->
  <PropertyGroup>
    <ContinueOnError Condition="'$(ContinueOnError)' == ''">false</ContinueOnError>
  </PropertyGroup>
  <!-- Common Project System support -->
  <PropertyGroup>
    <CommonXamlResourcesDirectory Condition=" '$(CommonXamlResourcesDirectory)' == '' ">$(MSBuildThisFileDirectory)$(LangName)\</CommonXamlResourcesDirectory>
  </PropertyGroup>
  <!-- We need to fallback to en-US in case the xaml rules are not localized (possibly happen on community languages).  -->
  <PropertyGroup Condition="!Exists('$(CommonXamlResourcesDirectory)')">
    <CommonXamlResourcesDirectory>$(MSBuildThisFileDirectory)en-US\</CommonXamlResourcesDirectory>
  </PropertyGroup>
  <ItemGroup Condition=" '$(DefineCommonItemSchemas)' == 'true' ">
    <PropertyPageSchema Include="$(CommonXamlResourcesDirectory)ProjectItemsSchema.xaml" />
    <PropertyPageSchema Include="&#xD;&#xA;                        $(CommonXamlResourcesDirectory)General.xaml;&#xD;&#xA;                        $(CommonXamlResourcesDirectory)Debugger_General.xaml">
      <Context>Project</Context>
    </PropertyPageSchema>
    <PropertyPageSchema Include="$(CommonXamlResourcesDirectory)General.BrowseObject.xaml">
      <Context>BrowseObject</Context>
    </PropertyPageSchema>
    <PropertyPageSchema Include="$(CommonXamlResourcesDirectory)General_File.xaml">
      <Context>File</Context>
    </PropertyPageSchema>
    <PropertyPageSchema Include="$(CommonXamlResourcesDirectory)SCC.xaml">
      <Context>Invisible</Context>
    </PropertyPageSchema>
    <PropertyPageSchema Include="&#xD;&#xA;                        $(CommonXamlResourcesDirectory)Folder.xaml;&#xD;&#xA;                        $(CommonXamlResourcesDirectory)None.xaml;&#xD;&#xA;                        $(CommonXamlResourcesDirectory)Content.xaml;&#xD;&#xA;                        $(CommonXamlResourcesDirectory)EmbeddedResource.xaml;&#xD;&#xA;                        ">
      <Context>File;BrowseObject</Context>
    </PropertyPageSchema>
    <PropertyPageSchema Include="$(CommonXamlResourcesDirectory)SpecialFolder.xaml;">
      <Context>File;ProjectSubscriptionService</Context>
    </PropertyPageSchema>
  </ItemGroup>
  <PropertyGroup>
    <DefineCommonReferenceSchemas Condition=" '$(DefineCommonReferenceSchemas)' == '' ">$(DefineCommonItemSchemas)</DefineCommonReferenceSchemas>
  </PropertyGroup>
  <ItemGroup Condition=" '$(DefineCommonReferenceSchemas)' == 'true' ">
    <!-- Assembly references -->
    <PropertyPageSchema Include="$(CommonXamlResourcesDirectory)assemblyreference.xaml">
      <Context>;BrowseObject</Context>
    </PropertyPageSchema>
    <PropertyPageSchema Include="$(CommonXamlResourcesDirectory)ResolvedAssemblyReference.xaml">
      <Context>ProjectSubscriptionService;BrowseObject</Context>
    </PropertyPageSchema>
    <!-- COM references -->
    <PropertyPageSchema Include="$(CommonXamlResourcesDirectory)COMReference.xaml">
      <Context>;BrowseObject</Context>
    </PropertyPageSchema>
    <PropertyPageSchema Include="$(CommonXamlResourcesDirectory)ResolvedCOMReference.xaml">
      <Context>ProjectSubscriptionService;BrowseObject</Context>
    </PropertyPageSchema>
    <!-- Project references -->
    <PropertyPageSchema Include="$(CommonXamlResourcesDirectory)ProjectReference.xaml">
      <Context>;BrowseObject</Context>
    </PropertyPageSchema>
    <PropertyPageSchema Include="$(CommonXamlResourcesDirectory)ResolvedProjectReference.xaml">
      <Context>ProjectSubscriptionService;BrowseObject</Context>
    </PropertyPageSchema>
  </ItemGroup>
  <ItemGroup Condition=" '$(DefineCommonCapabilities)' == 'true' ">
    <ProjectCapability Include="&#xD;&#xA;                          AssemblyReferences;&#xD;&#xA;                          COMReferences;&#xD;&#xA;                          ProjectReferences;&#xD;&#xA;                          SharedProjectReferences;&#xD;&#xA;                          OutputGroups;&#xD;&#xA;                          AllTargetOutputGroups;&#xD;&#xA;                          VisualStudioWellKnownOutputGroups;&#xD;&#xA;                          SingleFileGenerators;&#xD;&#xA;                          DeclaredSourceItems;&#xD;&#xA;                          UserSourceItems;&#xD;&#xA;                           " />
    <ProjectCapability Condition=" '$(TargetPlatformIdentifier)' == 'Windows' and '$(TargetPlatformVersion)' &lt; 8.0 " Include="BuildWindowsDesktopTarget" />
  </ItemGroup>
  <ItemDefinitionGroup Condition=" '$(DefineExplicitDefaults)' == 'true' ">
    <None>
      <CopyToOutputDirectory>Never</CopyToOutputDirectory>
    </None>
    <Content>
      <CopyToOutputDirectory>Never</CopyToOutputDirectory>
    </Content>
    <Compile>
      <CopyToOutputDirectory>Never</CopyToOutputDirectory>
    </Compile>
    <EmbeddedResource>
      <CopyToOutputDirectory>Never</CopyToOutputDirectory>
    </EmbeddedResource>
  </ItemDefinitionGroup>
  <!--
    ***********************************************************************************************
    ***********************************************************************************************
                                                                Build Section
    ***********************************************************************************************
    ***********************************************************************************************
    -->
  <!--
    ============================================================
                                        _CheckForInvalidConfigurationAndPlatform

    This target checks for errors in statically defined properties.  It always
    gets executed before any other target.
    ============================================================
    -->
  <Target Name="_CheckForInvalidConfigurationAndPlatform">
    <PropertyGroup>
      <_InvalidConfigurationMessageText>The OutputPath property is not set for project '$(MSBuildProjectFile)'.  Please check to make sure that you have specified a valid combination of Configuration and Platform for this project.  Configuration='$(_OriginalConfiguration)'  Platform='$(_OriginalPlatform)'.</_InvalidConfigurationMessageText>
      <_InvalidConfigurationMessageText Condition="'$(BuildingInsideVisualStudio)' == 'true'">$(_InvalidConfigurationMessageText)  This error may also appear if some other project is trying to follow a project-to-project reference to this project, this project has been unloaded or is not included in the solution, and the referencing project does not build using the same or an equivalent Configuration or Platform.</_InvalidConfigurationMessageText>
      <_InvalidConfigurationMessageText Condition="'$(BuildingInsideVisualStudio)' != 'true'">$(_InvalidConfigurationMessageText)  You may be seeing this message because you are trying to build a project without a solution file, and have specified a non-default Configuration or Platform that doesn't exist for this project.</_InvalidConfigurationMessageText>
    </PropertyGroup>
    <Error Condition=" '$(_InvalidConfigurationError)' == 'true' " Text="$(_InvalidConfigurationMessageText)" />
    <Warning Condition=" '$(_InvalidConfigurationWarning)' == 'true' " Text="$(_InvalidConfigurationMessageText)" />
    <Message Condition="'$(DesignTimeBuild)' != 'true'" Text="Configuration=$(Configuration)" Importance="Low" />
    <Message Condition="'$(DesignTimeBuild)' != 'true'" Text="Platform=$(Platform)" Importance="Low" />
    <!-- Although we try to ensure a trailing slash, it's possible to circumvent this if the property is set on the command line -->
    <Error Condition="'$(OutDir)' != '' and !HasTrailingSlash('$(OutDir)')" Text="The OutDir property must end with a trailing slash." />
    <Error Condition="'$(BaseIntermediateOutputPath)' != '' and !HasTrailingSlash('$(BaseIntermediateOutputPath)')" Text="The BaseIntermediateOutputPath must end with a trailing slash." />
    <Error Condition="'$(IntermediateOutputPath)' != '' and !HasTrailingSlash('$(IntermediateOutputPath)')" Text="The IntermediateOutputPath must end with a trailing slash." />
    <!-- Also update the value of PlatformTargetAsMSBuildArchitecture per the value of Prefer32Bit.  We are doing 
         this here because Prefer32Bit may be set anywhere in the targets, so we can't depend on it having the 
         correct value when we're trying to figure out PlatformTargetAsMSBuildArchitecture -->
    <PropertyGroup Condition="'$(Prefer32Bit)' == 'true' and ('$(PlatformTarget)' == 'AnyCPU' or '$(PlatformTarget)' == '') and '$(PlatformTargetAsMSBuildArchitectureExplicitlySet)' != 'true'">
      <PlatformTargetAsMSBuildArchitecture>x86</PlatformTargetAsMSBuildArchitecture>
    </PropertyGroup>
  </Target>
  <!--
    ============================================================
                                        Build

    The main build entry point.
    ============================================================
    -->
  <PropertyGroup>
    <BuildDependsOn>
      BeforeBuild;
      CoreBuild;
      AfterBuild
    </BuildDependsOn>
  </PropertyGroup>
  <Target Name="Build" Condition=" '$(_InvalidConfigurationWarning)' != 'true' " DependsOnTargets="$(BuildDependsOn)" Returns="$(TargetPath)" />
  <!--
    ============================================================
                                        BeforeBuild

    Redefine this target in your project in order to run tasks just before Build
    ============================================================
    -->
  <Target Name="BeforeBuild" />
  <!--
    ============================================================
                                        AfterBuild

    Redefine this target in your project in order to run tasks just after Build
    ============================================================
    -->
  <Target Name="AfterBuild" />
  <!--
    ============================================================
                                        CoreBuild

    The core build step calls each of the build targets.
    ============================================================
    -->
  <PropertyGroup>
    <CoreBuildDependsOn>
      BuildOnlySettings;
      PrepareForBuild;
      PreBuildEvent;
      ResolveReferences;
      PrepareResources;
      ResolveKeySource;
      Compile;
      ExportWindowsMDFile;
      UnmanagedUnregistration;
      GenerateSerializationAssemblies;
      CreateSatelliteAssemblies;
      GenerateManifests;
      GetTargetPath;
      PrepareForRun;
      UnmanagedRegistration;
      IncrementalClean;
      PostBuildEvent
    </CoreBuildDependsOn>
  </PropertyGroup>
  <Target Name="CoreBuild" DependsOnTargets="$(CoreBuildDependsOn)">
    <OnError ExecuteTargets="_TimeStampAfterCompile;PostBuildEvent" Condition="'$(RunPostBuildEvent)'=='Always' or '$(RunPostBuildEvent)'=='OnOutputUpdated'" />
    <OnError ExecuteTargets="_CleanRecordFileWrites" />
  </Target>
  <!--
    ============================================================
                                        Rebuild

    Delete all intermediate and final build outputs, and then build the project from scratch.
    ============================================================
    -->
  <PropertyGroup>
    <_ProjectDefaultTargets Condition="'$(MSBuildProjectDefaultTargets)' != ''">$(MSBuildProjectDefaultTargets)</_ProjectDefaultTargets>
    <_ProjectDefaultTargets Condition="'$(MSBuildProjectDefaultTargets)' == ''">Build</_ProjectDefaultTargets>
    <RebuildDependsOn>
      BeforeRebuild;
      Clean;
      $(_ProjectDefaultTargets);
      AfterRebuild;
    </RebuildDependsOn>
    <RebuildDependsOn Condition=" '$(MSBuildProjectDefaultTargets)' == 'Rebuild' ">
      BeforeRebuild;
      Clean;
      Build;
      AfterRebuild;
    </RebuildDependsOn>
  </PropertyGroup>
  <Target Name="Rebuild" Condition=" '$(_InvalidConfigurationWarning)' != 'true' " DependsOnTargets="$(RebuildDependsOn)" Returns="$(TargetPath)" />
  <!--
    ============================================================
                                        BeforeRebuild

    Redefine this target in your project in order to run tasks just before Rebuild
    ============================================================
    -->
  <Target Name="BeforeRebuild" />
  <!--
    ============================================================
                                        AfterRebuild

    Redefine this target in your project in order to run tasks just after Rebuild
    ============================================================
    -->
  <Target Name="AfterRebuild" />
  <!--
    ============================================================
                                        BuildGenerateSources

    Redefine this target in your project in order to run tasks for BuildGenerateSources

    Set BuildPassReferences to enable P2P builds
    ============================================================
    -->
  <PropertyGroup>
    <BuildGenerateSourcesAction>Build</BuildGenerateSourcesAction>
  </PropertyGroup>
  <Target Name="BuildGenerateSources" DependsOnTargets="BuildGenerateSourcesTraverse;$(BuildGenerateSourcesAction)" />
  <Target Name="BuildGenerateSourcesTraverse" DependsOnTargets="AssignProjectConfiguration;_SplitProjectReferencesByFileExistence">
    <MSBuild Projects="@(_MSBuildProjectReferenceExistent)" Targets="BuildGenerateSources" BuildInParallel="$(BuildInParallel)" Properties="%(_MSBuildProjectReferenceExistent.SetConfiguration); %(_MSBuildProjectReferenceExistent.SetPlatform)" Condition="'$(BuildPassReferences)' == 'true' and '@(ProjectReferenceWithConfiguration)' != '' and '@(_MSBuildProjectReferenceExistent)' != '' and '%(_MSBuildProjectReferenceExistent.BuildReference)' == 'true'" ContinueOnError="!$(BuildingProject)" RemoveProperties="%(_MSBuildProjectReferenceExistent.GlobalPropertiesToRemove)" />
  </Target>
  <!--
    ============================================================
                                        BuildCompile

    Redefine this target in your project in order to run tasks for BuildCompile
    ============================================================
    -->
  <PropertyGroup>
    <BuildCompileAction>Build</BuildCompileAction>
  </PropertyGroup>
  <Target Name="BuildCompile" DependsOnTargets="BuildCompileTraverse;$(BuildCompileAction)" />
  <Target Name="BuildCompileTraverse" DependsOnTargets="AssignProjectConfiguration;_SplitProjectReferencesByFileExistence">
    <MSBuild Projects="@(_MSBuildProjectReferenceExistent)" Targets="BuildCompile" BuildInParallel="$(BuildInParallel)" Properties="%(_MSBuildProjectReferenceExistent.SetConfiguration); %(_MSBuildProjectReferenceExistent.SetPlatform)" Condition="'$(BuildPassReferences)' == 'true' and '@(ProjectReferenceWithConfiguration)' != '' and '@(_MSBuildProjectReferenceExistent)' != ''  and '%(_MSBuildProjectReferenceExistent.BuildReference)' == 'true'" ContinueOnError="!$(BuildingProject)" RemoveProperties="%(_MSBuildProjectReferenceExistent.GlobalPropertiesToRemove)" />
  </Target>
  <!--
    ============================================================
                                        BuildLink

    Redefine this target in your project in order to run tasks for BuildLink
    ============================================================
    -->
  <PropertyGroup>
    <BuildLinkAction>Build</BuildLinkAction>
  </PropertyGroup>
  <Target Name="BuildLink" DependsOnTargets="BuildLinkTraverse;$(BuildLinkAction)" />
  <Target Name="BuildLinkTraverse" DependsOnTargets="AssignProjectConfiguration;_SplitProjectReferencesByFileExistence">
    <MSBuild Projects="@(_MSBuildProjectReferenceExistent)" Targets="BuildLink" BuildInParallel="$(BuildInParallel)" Properties="%(_MSBuildProjectReferenceExistent.SetConfiguration); %(_MSBuildProjectReferenceExistent.SetPlatform)" Condition="'$(BuildPassReferences)' == 'true' and '@(ProjectReferenceWithConfiguration)' != '' and '@(_MSBuildProjectReferenceExistent)' != ''  and '%(_MSBuildProjectReferenceExistent.BuildReference)' == 'true'" ContinueOnError="!$(BuildingProject)" RemoveProperties="%(_MSBuildProjectReferenceExistent.GlobalPropertiesToRemove)" />
  </Target>
  <!--
    ============================================================
                                        CopyRunEnvironmentFiles

    Copy environment files necessary to run the user's app to the final directory.
    This is a public target that can be invoked by an IDE.

    This may be used by an IDE to make the app.config file available for running
    the target app.
    ============================================================
    -->
  <Target Name="CopyRunEnvironmentFiles" DependsOnTargets="PrepareForBuild;SetWin32ManifestProperties;_CopyAppConfigFile;_CleanRecordFileWrites" />
  <!--
    ============================================================
                                        Run

    Run the final build output if it is a .EXE
    ============================================================
    -->
  <PropertyGroup>
    <RunDependsOn />
  </PropertyGroup>
  <Target Name="Run" DependsOnTargets="$(RunDependsOn)">
    <Error Text="Cannot run '$(TargetPath)' because project output type is not '.exe'" Condition="'$(TargetExt)'!='.exe'" />
    <Exec Command="$(TargetPath) $(StartArguments)" WorkingDirectory="$(OutDir)" Condition=" '$(StartWorkingDirectory)' == '' " />
    <Exec Command="$(TargetPath) $(StartArguments)" WorkingDirectory="$(StartWorkingDirectory)" Condition=" '$(StartWorkingDirectory)' != '' " />
  </Target>
  <!--
    ***********************************************************************************************
    ***********************************************************************************************
                                                                BuildOnlySettings Section
    ***********************************************************************************************
    ***********************************************************************************************
    -->
  <!--
    ============================================================
                                        BuildOnlySettings

    This target is called only when doing a real build.  It is specifically not called during project load.
    ============================================================
    -->
  <PropertyGroup>
    <BuildingProject>false</BuildingProject>
  </PropertyGroup>
  <Target Name="BuildOnlySettings">
    <PropertyGroup>
      <BuildingProject>true</BuildingProject>
    </PropertyGroup>
  </Target>
  <!--
    ***********************************************************************************************
    ***********************************************************************************************
                                                                PrepareForBuild Section
    ***********************************************************************************************
    ***********************************************************************************************
    -->
  <!--
    ============================================================
                                        PrepareForBuild

    Prepare the prerequisites for building.
    ============================================================
    -->
  <PropertyGroup>
    <PrepareForBuildDependsOn>GetFrameworkPaths;GetReferenceAssemblyPaths;AssignLinkMetadata</PrepareForBuildDependsOn>
  </PropertyGroup>
  <Target Name="PrepareForBuild" DependsOnTargets="$(PrepareForBuildDependsOn)">
    <ItemGroup>
      <AppConfigWithTargetPath Include="$(AppConfig)" Condition="'$(AppConfig)'!=''">
        <TargetPath>$(TargetFileName).config</TargetPath>
      </AppConfigWithTargetPath>
    </ItemGroup>
    <FindAppConfigFile PrimaryList="@(None)" SecondaryList="@(Content)" TargetPath="$(TargetFileName).config" Condition="'$(AppConfig)'==''">
      <Output TaskParameter="AppConfigFile" ItemName="AppConfigWithTargetPath" />
      <Output TaskParameter="AppConfigFile" PropertyName="AppConfig" />
    </FindAppConfigFile>
    <!-- Create the directories for intermediate and final build products, and any other arbitrary directories. -->
    <!-- We are going to continue on error here so that if the tree is read only we will still get intellisense -->
    <MakeDir Directories="$(OutDir);$(IntermediateOutputPath);@(DocFileItem->'%(RelativeDir)');@(CreateDirectory)" ContinueOnError="True" />
  </Target>
  <!--
    ============================================================
                                        GetFrameworkPaths

    Get the paths for the .NET Framework installation directory

    These paths are not used directly by this .targets file but are available for pre and
    post build steps.
    ============================================================
    -->
  <PropertyGroup>
    <Framework40Dir>@(_TargetFramework40DirectoryItem)</Framework40Dir>
    <Framework35Dir>@(_TargetFramework35DirectoryItem)</Framework35Dir>
    <Framework30Dir>@(_TargetFramework30DirectoryItem)</Framework30Dir>
    <Framework20Dir>@(_TargetFramework20DirectoryItem)</Framework20Dir>
    <!-- Note we need to make the 4.0 FrameworkDir point to the 2.0 location by default since we shipped msbuild 4.0 that way and to change it would be a breaking change.-->
    <FrameworkDir Condition="'$(FrameworkDir)' == '' and ('$(TargetFrameworkVersion)' == 'v2.0' or '$(TargetFrameworkVersion)' == 'v3.5' or '$(TargetFrameworkVersion)' == 'v4.0')">@(_TargetFramework20DirectoryItem)</FrameworkDir>
    <FrameworkDir Condition="'$(FrameworkDir)' == ''">@(_TargetFramework40DirectoryItem)</FrameworkDir>
    <TargetedFrameworkDir Condition="'$(TargetedFrameworkDir)' == ''">@(_TargetedFrameworkDirectoryItem)</TargetedFrameworkDir>
    <FrameworkSDKDir Condition="'$(FrameworkSDKDir)' == ''">@(_TargetFrameworkSDKDirectoryItem)</FrameworkSDKDir>
    <GetFrameworkPathsDependsOn />
  </PropertyGroup>
  <!-- This is a generally overriden target, for example it is overriden in the Microsoft.NETFramework.targets file -->
  <Target Name="GetFrameworkPaths" />
  <!--
    ============================================================
                                        GetReferenceAssemblyPaths

    Get the paths for the Reference Assemblies for the known versions of the
    .NET Framework.

    These paths are used by the build process in order to resolve the correct
    assemblies from the various directories, and to support multi-targeting
    ============================================================
    -->
  <Target Name="GetReferenceAssemblyPaths" DependsOnTargets="$(GetReferenceAssemblyPathsDependsOn)">
    <!-- if TargetFrameworkDirectory doesn't have a custom value, clear it out; that way we can get reference paths and target framework directories all in the right order -->
    <PropertyGroup>
      <TargetFrameworkDirectory Condition="'@(_CombinedTargetFrameworkDirectoriesItem)' == '$(TargetFrameworkDirectory)'" />
    </PropertyGroup>
    <!-- By default if there is no root path set then the task will assume it is Program Files\Reference Assemblies\Microsoft\Framework-->
    <GetReferenceAssemblyPaths Condition="'$(TargetFrameworkMoniker)' != '' and ('$(_TargetFrameworkDirectories)' == '' or '$(_FullFrameworkReferenceAssemblyPaths)' == '')" TargetFrameworkMoniker="$(TargetFrameworkMoniker)" RootPath="$(TargetFrameworkRootPath)" BypassFrameworkInstallChecks="$(BypassFrameworkInstallChecks)">
      <Output TaskParameter="ReferenceAssemblyPaths" PropertyName="_TargetFrameworkDirectories" />
      <Output TaskParameter="FullFrameworkReferenceAssemblyPaths" PropertyName="_FullFrameworkReferenceAssemblyPaths" />
      <Output TaskParameter="TargetFrameworkMonikerDisplayName" PropertyName="TargetFrameworkMonikerDisplayName" Condition="'$(TargetFrameworkMonikerDisplayName)' == ''" />
    </GetReferenceAssemblyPaths>
    <PropertyGroup>
      <TargetFrameworkDirectory>$(_TargetFrameworkDirectories);$(TargetFrameworkDirectory);$(WinFXAssemblyDirectory)</TargetFrameworkDirectory>
      <TargetFrameworkDirectory Condition="'$(TargetPlatformWinMDLocation)' != '' and Exists('$(TargetPlatformWinMDLocation)')">$(TargetFrameworkDirectory);$(TargetPlatformWinMDLocation)</TargetFrameworkDirectory>
    </PropertyGroup>
    <!-- Remove the AssemblyFolders if no target framework directories could be found. This is to prevent us from
             resolving from the assemblyfolders global location if we are not acutally targeting a framework-->
    <PropertyGroup>
      <RemoveAssemblyFoldersIfNoTargetFramework Condition="'$(RemoveAssemblyFoldersIfNoTargetFramework)' == ''">true</RemoveAssemblyFoldersIfNoTargetFramework>
    </PropertyGroup>
    <PropertyGroup Condition="'$(_TargetFrameworkDirectories)' == '' and '$(AssemblySearchPaths)' != '' and '$(RemoveAssemblyFoldersIfNoTargetFramework)' == 'true'">
      <AssemblySearchPaths>$(AssemblySearchPaths.Replace('{AssemblyFolders}', '').Split(';'))</AssemblySearchPaths>
    </PropertyGroup>
    <ItemGroup Condition="'$(ImplicitlyExpandDesignTimeFacades)' == 'true'">
      <DesignTimeFacadeDirectoryRoots Include="$(TargetFrameworkDirectory)" />
      <DesignTimeFacadeDirectories Include="%(DesignTimeFacadeDirectoryRoots.Identity)Facades\" Condition="Exists('%(DesignTimeFacadeDirectoryRoots.Identity)Facades\')" />
    </ItemGroup>
    <PropertyGroup Condition="'@(DesignTimeFacadeDirectories)' != ''">
      <TargetFrameworkDirectory>$(TargetFrameworkDirectory);@(DesignTimeFacadeDirectories)</TargetFrameworkDirectory>
    </PropertyGroup>
    <PropertyGroup Condition="'$(_TargetFrameworkDirectories)' == ''">
      <TargetFrameworkProfile />
    </PropertyGroup>
  </Target>
  <!-- Returns target framework moniker. E.g. ".NETFramework,Version=v4.0.1" -->
  <Target Name="GetTargetFrameworkMoniker" Returns="$(TargetFrameworkMoniker)" />
  <!-- Returns target framework moniker display name. E.g. ".NET Framework 4 Platform Update 1 (KB2478063)" -->
  <Target Name="GetTargetFrameworkMonikerDisplayName" DependsOnTargets="GetFrameworkPaths;GetReferenceAssemblyPaths" Returns="$(TargetFrameworkMonikerDisplayName)" />
  <!-- Returns semicolon separated list of target framework directories.
  E.g "C:\Program Files (x86)\Reference Assemblies\Microsoft\Framework\.NETFramework\v4.0.1\;C:\Program Files (x86)\Reference Assemblies\Microsoft\Framework\.NETFramework\v4.0\" -->
  <Target Name="GetTargetFrameworkDirectories" DependsOnTargets="GetFrameworkPaths;GetReferenceAssemblyPaths" Returns="$(TargetFrameworkDirectory)" />
  <!--
    ============================================================
                                        AssignLinkMetadata

       For items of a certain set of whitelisted types, make sure that
       if they are defined in a file other than the project file, that 
       they have "Link" metadata set to an appropriate default. 
    ============================================================
    -->
  <Target Name="AssignLinkMetadata" Condition=" '$(SynthesizeLinkMetadata)' == 'true' ">
    <!-- NONE ITEMS -->
    <AssignLinkMetadata Items="@(None)" Condition="'@(None)' != '' and '%(None.DefiningProjectFullPath)' != '$(MSBuildProjectFullPath)'">
      <Output TaskParameter="OutputItems" ItemName="_Temp" />
    </AssignLinkMetadata>
    <ItemGroup>
      <None Remove="@(_Temp)" />
      <None Include="@(_Temp)" />
      <_Temp Remove="@(_Temp)" />
    </ItemGroup>
    <!-- CONTENT ITEMS -->
    <AssignLinkMetadata Items="@(Content)" Condition="'@(Content)' != '' and '%(Content.DefiningProjectFullPath)' != '$(MSBuildProjectFullPath)'">
      <Output TaskParameter="OutputItems" ItemName="_Temp" />
    </AssignLinkMetadata>
    <ItemGroup>
      <Content Remove="@(_Temp)" />
      <Content Include="@(_Temp)" />
      <_Temp Remove="@(_Temp)" />
    </ItemGroup>
    <!-- PAGE ITEMS -->
    <AssignLinkMetadata Items="@(Page)" Condition="'@(Page)' != '' and '%(Page.DefiningProjectFullPath)' != '$(MSBuildProjectFullPath)'">
      <Output TaskParameter="OutputItems" ItemName="_Temp" />
    </AssignLinkMetadata>
    <ItemGroup>
      <Page Remove="@(_Temp)" />
      <Page Include="@(_Temp)" />
      <_Temp Remove="@(_Temp)" />
    </ItemGroup>
    <!-- APPLICATIONDEFINITION ITEMS -->
    <AssignLinkMetadata Items="@(ApplicationDefinition)" Condition="'@(ApplicationDefinition)' != '' and '%(ApplicationDefinition.DefiningProjectFullPath)' != '$(MSBuildProjectFullPath)'">
      <Output TaskParameter="OutputItems" ItemName="_Temp" />
    </AssignLinkMetadata>
    <ItemGroup>
      <ApplicationDefinition Remove="@(_Temp)" />
      <ApplicationDefinition Include="@(_Temp)" />
      <_Temp Remove="@(_Temp)" />
    </ItemGroup>
    <!-- EMBEDDEDRESOURCE ITEMS -->
    <AssignLinkMetadata Items="@(EmbeddedResource)" Condition="'@(EmbeddedResource)' != '' and '%(EmbeddedResource.DefiningProjectFullPath)' != '$(MSBuildProjectFullPath)'">
      <Output TaskParameter="OutputItems" ItemName="_Temp" />
    </AssignLinkMetadata>
    <ItemGroup>
      <EmbeddedResource Remove="@(_Temp)" />
      <EmbeddedResource Include="@(_Temp)" />
      <_Temp Remove="@(_Temp)" />
    </ItemGroup>
  </Target>
  <!--
    ***********************************************************************************************
    ***********************************************************************************************
                                                                PreBuildEvent Section
    ***********************************************************************************************
    ***********************************************************************************************
    -->
  <!--
    ============================================================
                                        PreBuildEvent

    Run the pre-build event if there is one.
    ============================================================
    -->
  <PropertyGroup>
    <PreBuildEventDependsOn />
  </PropertyGroup>
  <Target Name="PreBuildEvent" Condition="'$(PreBuildEvent)'!=''" DependsOnTargets="$(PreBuildEventDependsOn)">
    <Exec WorkingDirectory="$(OutDir)" Command="$(PreBuildEvent)" />
  </Target>
  <!--
    ***********************************************************************************************
    ***********************************************************************************************
                                                                UnmanagedUnregistration Section
    ***********************************************************************************************
    ***********************************************************************************************
    -->
  <!--
    ============================================================
                                        UnmanagedUnregistration

    If the main assembly had previously been registered for COM interop, unregister it now.
    We will re-register the new version after it has been built.
    ============================================================
    -->
  <PropertyGroup>
    <UnmanagedUnregistrationDependsOn />
  </PropertyGroup>
  <Target Name="UnmanagedUnregistration" Condition="(('$(_AssemblyTimestampBeforeCompile)' != '$(_AssemblyTimestampAfterCompile)' or '$(RegisterForComInterop)' != 'true' or '$(OutputType)' != 'library') or&#xD;&#xA;                    ('$(_AssemblyTimestampBeforeCompile)' == '')) and&#xD;&#xA;                   Exists('@(_UnmanagedRegistrationCache)')" DependsOnTargets="$(UnmanagedUnregistrationDependsOn)">
    <PropertyGroup>
      <UnregisterAssemblyMSBuildArchitecture Condition="'$(UnregisterAssemblyMSBuildArchitecture)' == ''">$(PlatformTargetAsMSBuildArchitecture)</UnregisterAssemblyMSBuildArchitecture>
    </PropertyGroup>
    <PropertyGroup Condition="'$(TargetFrameworkAsMSBuildRuntime)' != '' and '$(UnregisterAssemblyMSBuildArchitecture)' != ''">
      <!-- Falling back to the current runtime if we are targeting CLR2 and the task host doesn't exist will lead to 
           incorrect behavior in some cases, but it's the same incorrect behavior as Visual Studio 2010, and thus better
           than causing build breaks on upgrade to Win8 the way not doing so would.  For more details, see the 
           corresponding comment in GenerateResource. -->
      <UnregisterAssemblyMSBuildRuntime Condition="'$(UnregisterAssemblyMSBuildRuntime)' == '' and &#xD;&#xA;                     $([MSBuild]::DoesTaskHostExist(`$(TargetFrameworkAsMSBuildRuntime)`, `$(UnregisterAssemblyMSBuildArchitecture)`))">$(TargetFrameworkAsMSBuildRuntime)</UnregisterAssemblyMSBuildRuntime>
      <!-- If the targeted runtime doesn't exist, fall back to current -->
      <UnregisterAssemblyMSBuildRuntime Condition="'$(UnregisterAssemblyMSBuildRuntime)' == ''">CurrentRuntime</UnregisterAssemblyMSBuildRuntime>
    </PropertyGroup>
    <UnregisterAssembly AssemblyListFile="@(_UnmanagedRegistrationCache)" MSBuildArchitecture="$(UnregisterAssemblyMSBuildArchitecture)" MSBuildRuntime="$(UnregisterAssemblyMSBuildRuntime)" />
  </Target>
  <!--
    ***********************************************************************************************
    ***********************************************************************************************
                                                                ResolveReferences Section
    ***********************************************************************************************
    ***********************************************************************************************
    -->
  <!--
    ============================================================
                     GetTargetFrameworkVersion

    This stand-alone target returns the target framework version (i.e. v3.5, v4.0, etc.)
    that would be used if we built this project.

    ============================================================
    -->
  <Target Name="GetTargetFrameworkVersion" Returns="$(TargetFrameworkVersion)" />
  <!--
    ============================================================
                                        ResolveReferences
    ============================================================
    -->
  <PropertyGroup>
    <ResolveReferencesDependsOn>
      BeforeResolveReferences;
      AssignProjectConfiguration;
      ResolveProjectReferences;
      FindInvalidProjectReferences;
      ResolveNativeReferences;
      ResolveAssemblyReferences;
      GenerateBindingRedirects;
      ResolveComReferences;
      AfterResolveReferences
    </ResolveReferencesDependsOn>
  </PropertyGroup>
  <Target Name="ResolveReferences" DependsOnTargets="$(ResolveReferencesDependsOn)" />
  <!--
    ============================================================
                                        BeforeResolveReferences

    Redefine this target in your project in order to run tasks just before ResolveReferences
    ============================================================
    -->
  <Target Name="BeforeResolveReferences" />
  <!--
    ============================================================
                                        AfterResolveReferences

    Redefine this target in your project in order to run tasks just after ResolveReferences
    ============================================================
    -->
  <Target Name="AfterResolveReferences" />
  <!--
    ============================================================
                                        AssignProjectConfiguration

    Assigns the appropriate configuration to each project in the list of project references passed in.
    Adds to the project references passed in any project references implied by dependencies expressed in the solution file, if any.

        [IN]
        @(ProjectReference) - the list of all project references

        [OUT]
        @(ProjectReferenceWithConfiguration) - the list of project references (MSBuild and potentially VSIP projects)
                                               with metadata values FullConfiguration, Configuration, Platform,
                                               SetConfiguration, and SetPlatform
    ============================================================
    -->
  <Target Name="AssignProjectConfiguration" Condition="'$(CurrentSolutionConfigurationContents)' != '' or '@(ProjectReference)'!=''">
    <PropertyGroup>
      <OnlyReferenceAndBuildProjectsEnabledInSolutionConfiguration Condition="'$(OnlyReferenceAndBuildProjectsEnabledInSolutionConfiguration)' == ''">true</OnlyReferenceAndBuildProjectsEnabledInSolutionConfiguration>
      <ShouldUnsetParentConfigurationAndPlatform Condition="'$(ShouldUnsetParentConfigurationAndPlatform)' == '' and ('$(BuildingInsideVisualStudio)' == 'true' or '$(BuildingSolutionFile)' == 'true')">true</ShouldUnsetParentConfigurationAndPlatform>
      <ShouldUnsetParentConfigurationAndPlatform Condition="'$(ShouldUnsetParentConfigurationAndPlatform)' == ''">false</ShouldUnsetParentConfigurationAndPlatform>
      <!-- Web Application projects can "secretly" reference Silverlight projects, which can take project dependencies on that same Web Application.  If the project 
           dependencies are promoted to project references, this ends up creating a situation where we have a circular reference between the two projects.  We don't 
           want this to happen, so just turn off synthetic project reference generation for Silverlight projects. -->
      <AddSyntheticProjectReferencesForSolutionDependencies Condition="'$(AddSyntheticProjectReferencesForSolutionDependencies)' == '' and '$(TargetFrameworkIdentifier)' == 'Silverlight'">false</AddSyntheticProjectReferencesForSolutionDependencies>
      <!-- Inside VS, we do not need to add synthetic references, as VS already organizes the build per any solution-level dependencies; we only do this on the command line-->
      <AddSyntheticProjectReferencesForSolutionDependencies Condition="'$(AddSyntheticProjectReferencesForSolutionDependencies)' == '' and '$(BuildingInsideVisualStudio)' != 'true'">true</AddSyntheticProjectReferencesForSolutionDependencies>
    </PropertyGroup>
    <!-- Assign a project configuration to each project reference if we're building a solution file. -->
    <AssignProjectConfiguration ProjectReferences="@(ProjectReference)" CurrentProject="$(MSBuildProjectFullPath)" CurrentProjectConfiguration="$(Configuration)" CurrentProjectPlatform="$(Platform)" DefaultToVcxPlatformMapping="$(DefaultToVcxPlatformMapping)" VcxToDefaultPlatformMapping="$(VcxToDefaultPlatformMapping)" OutputType="$(OutputType)" ResolveConfigurationPlatformUsingMappings="false" SolutionConfigurationContents="$(CurrentSolutionConfigurationContents)" AddSyntheticProjectReferencesForSolutionDependencies="$(AddSyntheticProjectReferencesForSolutionDependencies)" OnlyReferenceAndBuildProjectsEnabledInSolutionConfiguration="$(OnlyReferenceAndBuildProjectsEnabledInSolutionConfiguration)" ShouldUnsetParentConfigurationAndPlatform="$(ShouldUnsetParentConfigurationAndPlatform)">
      <!-- EMITTED FOR COMPATIBILITY REASONS ONLY. CONSUME PROJECTREFERENCEWITHCONFIGURATION INSTEAD -->
      <Output TaskParameter="AssignedProjects" ItemName="_ProjectReferenceWithConfiguration" />
      <Output TaskParameter="UnassignedProjects" ItemName="_ProjectReferenceWithConfiguration" />
      <Output TaskParameter="AssignedProjects" ItemName="ProjectReferenceWithConfiguration" />
      <Output TaskParameter="UnassignedProjects" ItemName="ProjectReferenceWithConfiguration" />
    </AssignProjectConfiguration>
    <ItemGroup>
      <_ProjectReferenceWithConfiguration>
        <BuildReference Condition="'%(_ProjectReferenceWithConfiguration.BuildReference)' == ''">true</BuildReference>
        <ReferenceOutputAssembly Condition="'%(_ProjectReferenceWithConfiguration.ReferenceOutputAssembly)' == ''">true</ReferenceOutputAssembly>
      </_ProjectReferenceWithConfiguration>
      <ProjectReferenceWithConfiguration>
        <BuildReference Condition="'%(ProjectReferenceWithConfiguration.BuildReference)' == ''">true</BuildReference>
        <ReferenceOutputAssembly Condition="'%(ProjectReferenceWithConfiguration.ReferenceOutputAssembly)' == ''">true</ReferenceOutputAssembly>
      </ProjectReferenceWithConfiguration>
    </ItemGroup>
  </Target>
  <!--
    ============================================================
                                        _SplitProjectReferencesByFileExistence

    Split referenced projects into two lists: those that exist on
    disk and those that don't.
    ============================================================
    -->
  <Target Name="_SplitProjectReferencesByFileExistence">
    <!--
        Use this task for matching projects with pre-resolved project outputs set by the IDE
        if building inside the IDE.  The IDE only includes non-MSBuild projects in the output list.  We'll
        use MSBuild to resolve MSBuild projects.
        This task will resolve VSIP (3rd party) project references and create a new item list with only project references
        to projects in the MSBuild format.
        -->
    <ResolveNonMSBuildProjectOutput ProjectReferences="@(ProjectReferenceWithConfiguration)" PreresolvedProjectOutputs="$(VSIDEResolvedNonMSBuildProjectOutputs)" Condition="'$(BuildingInsideVisualStudio)'=='true' and '@(ProjectReferenceWithConfiguration)'!=''">
      <Output TaskParameter="ResolvedOutputPaths" ItemName="_ResolvedProjectReferencePaths" />
      <Output TaskParameter="UnresolvedProjectReferences" ItemName="_MSBuildProjectReference" />
    </ResolveNonMSBuildProjectOutput>
    <!--
       If building from the command line, simply copy the ProjectReferenceWithConfiguration item list to _MSBuildProjectReference,
       since we have to assume all projects are in the MSBuild format. We have no way of building
       VSIP (3rd party) projects from the command line.
       -->
    <ItemGroup>
      <_MSBuildProjectReference Include="@(ProjectReferenceWithConfiguration)" Condition="'$(BuildingInsideVisualStudio)'!='true' and '@(ProjectReferenceWithConfiguration)'!=''" />
    </ItemGroup>
    <!-- Break the project list into two lists: those that exist on disk and those that don't. -->
    <ItemGroup>
      <_MSBuildProjectReferenceExistent Include="@(_MSBuildProjectReference)" Condition="Exists('%(Identity)')" />
      <_MSBuildProjectReferenceNonexistent Include="@(_MSBuildProjectReference)" Condition="!Exists('%(Identity)')" />
    </ItemGroup>
  </Target>
  <!--
    ============================================================
                                        ResolveProjectReferences

    Build referenced projects:

        [IN]
        @(ProjectReferenceWithConfiguration) - The list of project references.

        [OUT]
        @(_ResolvedNativeProjectReferencePaths) - Paths to referenced native projects.
        @(_ResolvedProjectReferencePaths) - Paths to referenced managed projects.
    ============================================================
    -->
  <!-- By default, the outputs of project references are passed to the compiler -->
  <ItemDefinitionGroup>
    <ProjectReference>
      <!-- Target to build in the project reference; by default, this property is blank, indicating the default targets-->
      <Targets>$(ProjectReferenceBuildTargets)</Targets>
      <!-- Extra item type to emit outputs of the destination into. Defaults to blank. To emit only into this list, set the ReferenceOutputAssembly metadata to false as well. -->
      <OutputItemType />
      <ReferenceSourceTarget>ProjectReference</ReferenceSourceTarget>
    </ProjectReference>
  </ItemDefinitionGroup>
  <Target Name="ResolveProjectReferences" DependsOnTargets="AssignProjectConfiguration;_SplitProjectReferencesByFileExistence" Returns="@(_ResolvedNativeProjectReferencePaths);@(_ResolvedProjectReferencePaths)">
    <!--
        When building this project from the IDE, just gather the referenced build outputs.
        The IDE will already have built the project, so there's no need to do it again here.

        The ContinueOnError setting is here so that, during project load, as
        much information as possible will be passed to the compilers.
        -->
    <MSBuild Projects="@(_MSBuildProjectReferenceExistent)" Targets="GetTargetPath" BuildInParallel="$(BuildInParallel)" Properties="%(_MSBuildProjectReferenceExistent.SetConfiguration); %(_MSBuildProjectReferenceExistent.SetPlatform)" Condition="'%(_MSBuildProjectReferenceExistent.BuildReference)' == 'true' and '@(ProjectReferenceWithConfiguration)' != '' and ('$(BuildingInsideVisualStudio)' == 'true' or '$(BuildProjectReferences)' != 'true') and '$(VisualStudioVersion)' != '10.0' and '@(_MSBuildProjectReferenceExistent)' != ''" ContinueOnError="!$(BuildingProject)" RemoveProperties="%(_MSBuildProjectReferenceExistent.GlobalPropertiesToRemove)">
      <Output TaskParameter="TargetOutputs" ItemName="_ResolvedProjectReferencePaths" Condition="'%(_MSBuildProjectReferenceExistent.ReferenceOutputAssembly)'=='true'" />
      <Output TaskParameter="TargetOutputs" ItemName="%(_MSBuildProjectReferenceExistent.OutputItemType)" Condition="'%(_MSBuildProjectReferenceExistent.OutputItemType)' != ''" />
    </MSBuild>
    <!--
        QUIRKING FOR DEV10

        In the 4.0 version of the targets, we built the targets specified in the Targets metadata in addition to 
        GetTargetPath when building in the IDE.  In 4.5, we changed this to just GetTargetPath because it was 
        causing performance trouble with certain systems that specified targets that did a significant amount of 
        work in the Targets metadata, expecting them to only build when doing a real build.  

        However, that change broke C++ unit testing in Dev10 + 4.5 scenarios, because they required use of the 
        Targets metadata in order to get design time builds to work properly.  Thus, we need to make sure we 
        restore the Dev10 behavior when building on Dev10. 
        -->
    <MSBuild Projects="@(_MSBuildProjectReferenceExistent)" Targets="%(_MSBuildProjectReferenceExistent.Targets);GetTargetPath" BuildInParallel="$(BuildInParallel)" Properties="%(_MSBuildProjectReferenceExistent.SetConfiguration); %(_MSBuildProjectReferenceExistent.SetPlatform)" Condition="'%(_MSBuildProjectReferenceExistent.BuildReference)' == 'true' and '@(ProjectReferenceWithConfiguration)' != '' and ('$(BuildingInsideVisualStudio)' == 'true' or '$(BuildProjectReferences)' != 'true') and '$(VisualStudioVersion)' == '10.0' and '@(_MSBuildProjectReferenceExistent)' != ''" ContinueOnError="!$(BuildingProject)" RemoveProperties="%(_MSBuildProjectReferenceExistent.GlobalPropertiesToRemove)">
      <Output TaskParameter="TargetOutputs" ItemName="_ResolvedProjectReferencePaths" Condition="'%(_MSBuildProjectReferenceExistent.ReferenceOutputAssembly)'=='true'" />
      <Output TaskParameter="TargetOutputs" ItemName="%(_MSBuildProjectReferenceExistent.OutputItemType)" Condition="'%(_MSBuildProjectReferenceExistent.OutputItemType)' != ''" />
    </MSBuild>
    <!--
        Build referenced projects when building from the command line.
        -->
    <MSBuild Projects="@(_MSBuildProjectReferenceExistent)" Targets="%(_MSBuildProjectReferenceExistent.Targets)" BuildInParallel="$(BuildInParallel)" Properties="%(_MSBuildProjectReferenceExistent.SetConfiguration); %(_MSBuildProjectReferenceExistent.SetPlatform)" Condition="'%(_MSBuildProjectReferenceExistent.BuildReference)' == 'true' and '@(ProjectReferenceWithConfiguration)' != '' and '$(BuildingInsideVisualStudio)' != 'true' and '$(BuildProjectReferences)' == 'true' and '@(_MSBuildProjectReferenceExistent)' != ''" ContinueOnError="$(ContinueOnError)" RemoveProperties="%(_MSBuildProjectReferenceExistent.GlobalPropertiesToRemove)">
      <Output TaskParameter="TargetOutputs" ItemName="_ResolvedProjectReferencePaths" Condition="'%(_MSBuildProjectReferenceExistent.ReferenceOutputAssembly)'=='true' or '$(DesignTimeBuild)' == 'true'" />
      <Output TaskParameter="TargetOutputs" ItemName="%(_MSBuildProjectReferenceExistent.OutputItemType)" Condition="'%(_MSBuildProjectReferenceExistent.OutputItemType)' != ''" />
    </MSBuild>
    <!--
        Get manifest items from the (non-exe) built project references (to feed them into ResolveNativeReference).
        -->
    <MSBuild Projects="@(_MSBuildProjectReferenceExistent)" Targets="GetNativeManifest" BuildInParallel="$(BuildInParallel)" Properties="%(_MSBuildProjectReferenceExistent.SetConfiguration); %(_MSBuildProjectReferenceExistent.SetPlatform)" Condition="'%(_MSBuildProjectReferenceExistent.BuildReference)' == 'true' and '@(ProjectReferenceWithConfiguration)' != '' and '$(BuildingProject)' == 'true' and '@(_MSBuildProjectReferenceExistent)' != ''" ContinueOnError="$(ContinueOnError)" RemoveProperties="%(_MSBuildProjectReferenceExistent.GlobalPropertiesToRemove)">
      <Output TaskParameter="TargetOutputs" ItemName="NativeReference" Condition="'%(_MSBuildProjectReferenceExistent.ReferenceOutputAssembly)' == 'true'" />
    </MSBuild>
    <ItemGroup>
      <_ResolvedProjectReferencePaths Remove="@(_ResolvedProjectReferencePaths)" Condition="'%(_ResolvedProjectReferencePaths.ResolveableAssembly)' == 'false'" />
      <!--
          Copy OriginalItemSpec to OriginalProjectReferenceItemSpec, so that when ResolveAssemblyReferences
          takes these items and resolves them to ReferencePath, we can still recover the _real_ OriginalItemSpec
          for the unresolved reference items.
          -->
      <_ResolvedProjectReferencePaths>
        <OriginalProjectReferenceItemSpec>%(_ResolvedProjectReferencePaths.OriginalItemSpec)</OriginalProjectReferenceItemSpec>
      </_ResolvedProjectReferencePaths>
    </ItemGroup>
    <!-- Issue a warning for each non-existent project. -->
    <Warning Text="The referenced project '%(_MSBuildProjectReferenceNonexistent.Identity)' does not exist." Condition="'@(ProjectReferenceWithConfiguration)' != '' and '@(_MSBuildProjectReferenceNonexistent)' != ''" />
  </Target>
  <Target Name="ResolveProjectReferencesDesignTime" Returns="@(_ProjectReferencesFromRAR);@(_ResolvedNativeProjectReferencePaths)" DependsOnTargets="ResolveProjectReferences;ResolveAssemblyReferences">
    <!-- We need to do this here because we only want project references which have passed through rar and have not been unresolved due to violating some MT rule
        which means we need to pull the project references out of the referencepath item because they will only exist there if they were correctly resolved.
    -->
    <ItemGroup>
      <_ProjectReferencesFromRAR Include="@(ReferencePath-&gt;WithMetadataValue('ReferenceSourceTarget', 'ProjectReference'))">
        <OriginalItemSpec>%(ReferencePath.ProjectReferenceOriginalItemSpec)</OriginalItemSpec>
      </_ProjectReferencesFromRAR>
    </ItemGroup>
  </Target>
  <Target Name="ExpandSDKReferencesDesignTime" Returns="@(ReferencesFromSDK)" DependsOnTargets="ExpandSDKReferences" />
  <!--
    ============================================================
                                        GetTargetPath

    This stand-alone target returns the name of the build product (i.e. EXE, DLL)
    that would be produced if we built this project.
    ============================================================
    -->
  <PropertyGroup>
    <GetTargetPathDependsOn>$(GetTargetPathDependsOn)</GetTargetPathDependsOn>
  </PropertyGroup>
  <Target Name="GetTargetPath" DependsOnTargets="$(GetTargetPathDependsOn)" Returns="@(TargetPathWithTargetPlatformMoniker)">
    <ItemGroup>
      <TargetPathWithTargetPlatformMoniker Include="$(TargetPath)">
        <TargetPlatformMoniker>$(TargetPlatformMoniker)</TargetPlatformMoniker>
        <TargetPlatformIdentifier>$(TargetPlatformIdentifier)</TargetPlatformIdentifier>
      </TargetPathWithTargetPlatformMoniker>
    </ItemGroup>
  </Target>
  <!--
    ============================================================
                                        GetTargetPathWithTargetPlatformMoniker

    This stand-alone target returns the name and version of the target platform for this project.

    NOTE: The functionality of this target has been subsumed by GetTargetPath.  This target is
    provided purely for compat reasons.
    ============================================================
    -->
  <PropertyGroup>
    <GetTargetPathWithTargetPlatformMonikerDependsOn>$(GetTargetPathDependsOn); GetTargetPath</GetTargetPathWithTargetPlatformMonikerDependsOn>
  </PropertyGroup>
  <Target Name="GetTargetPathWithTargetPlatformMoniker" DependsOnTargets="$(GetTargetPathWithTargetPlatformMonikerDependsOn)" Returns="@(TargetPathWithTargetPlatformMoniker)" />
  <!--
    ============================================================
                                        GetNativeManifest

    Compute the manifest item for this project.

        [IN]
        $(_DeploymentApplicationManifestIdentity) - the manifest identity
        @(ApplicationManifest)         - the original application manifest item

        [OUT]
        @(ComputedApplicationManifest) - application manifest item with full hint path, if generated
    ============================================================
    -->
  <Target Name="GetNativeManifest" Returns="@(ComputedApplicationManifest)">
    <ItemGroup>
      <ComputedApplicationManifest Include="$(_DeploymentApplicationManifestIdentity)" Condition="'$(OutputType)'!='winexe' and '$(OutputType)'!='exe' and '$(OutputType)'!='appcontainerexe' and Exists('%(_ApplicationManifestFinal.FullPath)')">
        <HintPath>%(_ApplicationManifestFinal.FullPath)</HintPath>
      </ComputedApplicationManifest>
    </ItemGroup>
  </Target>
  <!--
    ============================================================
                                        ResolveNativeReferences

    Resolve native references

        [IN]
        @(NativeReference) - The manifest reference (or list of manifest references)

        [OUT]
        @(NativeReferenceFile)  - List of manifest files referenced.
        @(_DeploymentNativePrerequisite)   - List of native assembly prerequisites contained in the manifest.
        @(ComClassReference)    - List of COM components contained in the manifest.
        @(COMReferenceFromNative) List of type libraries contained in the manifest.
        @(COMFileReference)     - List of loose files contained in the manifest.
        @(_DeploymentLooseManifestFile)    - List of extra files that should be published.
    ============================================================
    -->
  <Target Name="ResolveNativeReferences" Condition="'@(NativeReference)'!=''" DependsOnTargets="ResolveProjectReferences">
    <ResolveNativeReference NativeReferences="@(NativeReference)" AdditionalSearchPaths="$(ReferencePath);$(OutDir)">
      <Output TaskParameter="ContainingReferenceFiles" ItemName="NativeReferenceFile" />
      <Output TaskParameter="ContainedPrerequisiteAssemblies" ItemName="_DeploymentNativePrerequisite" />
      <Output TaskParameter="ContainedComComponents" ItemName="ComClassReference" />
      <Output TaskParameter="ContainedTypeLibraries" ItemName="COMReferenceFromNative" />
      <Output TaskParameter="ContainedLooseTlbFiles" ItemName="COMFileReference" />
      <Output TaskParameter="ContainedLooseEtcFiles" ItemName="_DeploymentLooseManifestFile" />
    </ResolveNativeReference>
  </Target>
  <!--
    ============================================================

                                        ResolveAssemblyReferences

    Given the list of assemblies, find the closure of all assemblies that they depend on. These are
    what we need to copy to the output directory.

        [IN]
        @(Reference) - List of assembly references as fusion names.
        @(_ResolvedProjectReferencePaths) - List of project references produced by projects that this project depends on.

            The 'Private' attribute on the reference corresponds to the Copy Local flag in IDE.
            The 'Private' flag can have three possible values:
                - 'True' means the reference should be Copied Local
                - 'False' means the reference should not be Copied Local
                - [Missing] means this task will decide whether to treat this reference as CopyLocal or not.

        [OUT]
        @(ReferencePath) - Paths to resolved primary files.
        @(ReferenceDependencyPaths) - Paths to resolved dependency files.
        @(_ReferenceRelatedPaths) - Paths to .xmls and .pdbs.
        @(ReferenceSatellitePaths) - Paths to satellites.
        @(_ReferenceSerializationAssemblyPaths) - Paths to XML serialization assemblies created by sgen.
        @(_ReferenceScatterPaths) - Paths to scatter files.
        @(ReferenceCopyLocalPaths) - Paths to files that should be copied to the local directory.
    ============================================================
    -->
  <PropertyGroup>
    <ResolveAssemblyReferencesDependsOn>
      GetFrameworkPaths;
      GetReferenceAssemblyPaths;
      PrepareForBuild;
      ResolveSDKReferences;
      ExpandSDKReferences;
    </ResolveAssemblyReferencesDependsOn>
  </PropertyGroup>
  <Target Name="ResolveAssemblyReferences" Returns="@(ReferencePath)" DependsOnTargets="$(ResolveAssemblyReferencesDependsOn)">
    <ItemGroup>
      <_ReferenceInstalledAssemblyDirectory Include="$(TargetFrameworkDirectory)" />
      <_ReferenceInstalledAssemblySubsets Include="$(TargetFrameworkSubset)" />
    </ItemGroup>
    <!--
        Only read and write cache file at build time, skip it for load time because its more
        expensive to write the newly created cache file.
        -->
    <PropertyGroup>
      <ResolveAssemblyReferencesStateFile Condition="'$(BuildingProject)'=='true'">$(IntermediateOutputPath)$(MSBuildProjectFile)ResolveAssemblyReference.cache</ResolveAssemblyReferencesStateFile>
    </PropertyGroup>
    <!-- Make an App.Config item that exists when AutoUnify is false. -->
    <ItemGroup>
      <_ResolveAssemblyReferencesApplicationConfigFileForExes Include="@(AppConfigWithTargetPath)" Condition="'$(AutoGenerateBindingRedirects)'=='true' or '$(AutoUnifyAssemblyReferences)'=='false'" />
    </ItemGroup>
    <PropertyGroup>
      <!-- Default in task is true -->
      <_FindDependencies Condition="'$(BuildingProject)' != 'true' and '$(_ResolveReferenceDependencies)' != 'true'">false</_FindDependencies>
      <ResolveAssemblyReferencesSilent Condition="'$(ResolveAssemblyReferencesSilent)' == '' and '$(TraceDesignTime)' != 'true' and '$(BuildingProject)' == 'false'">true</ResolveAssemblyReferencesSilent>
      <ResolveAssemblyReferencesSilent Condition="'$(ResolveAssemblyReferencesSilent)' == ''">false</ResolveAssemblyReferencesSilent>
      <ResolveAssemblyWarnOrErrorOnTargetArchitectureMismatch Condition="'$(ResolveAssemblyWarnOrErrorOnTargetArchitectureMismatch)' == ''">Warning</ResolveAssemblyWarnOrErrorOnTargetArchitectureMismatch>
    </PropertyGroup>
    <ItemGroup>
      <!-- Remove any references which we have added as explicit reference so that we do not get duplicates. We need to make sure we do not have duplicates
             because this confuses the IDE  when it tries to compare the list of references passed in to the list of resolved references. If it does not match then the
             ide will show one of the references as not resolved, this will not break the build but is a display issue -->
      <Reference Remove="$(AdditionalExplicitAssemblyReferences)" />
      <Reference Include="$(AdditionalExplicitAssemblyReferences)">
        <Implicit>true</Implicit>
      </Reference>
    </ItemGroup>
    <ResolveAssemblyReference Assemblies="@(Reference)" AssemblyFiles="@(_ResolvedProjectReferencePaths);@(_ExplicitReference)" TargetFrameworkDirectories="@(_ReferenceInstalledAssemblyDirectory)" InstalledAssemblyTables="@(InstalledAssemblyTables);@(RedistList)" IgnoreDefaultInstalledAssemblyTables="$(IgnoreDefaultInstalledAssemblyTables)" IgnoreDefaultInstalledAssemblySubsetTables="$(IgnoreInstalledAssemblySubsetTables)" CandidateAssemblyFiles="@(Content);@(None)" SearchPaths="$(AssemblySearchPaths)" AllowedAssemblyExtensions="$(AllowedReferenceAssemblyFileExtensions)" AllowedRelatedFileExtensions="$(AllowedReferenceRelatedFileExtensions)" TargetProcessorArchitecture="$(ProcessorArchitecture)" AppConfigFile="@(_ResolveAssemblyReferencesApplicationConfigFileForExes)" AutoUnify="$(AutoUnifyAssemblyReferences)" SupportsBindingRedirectGeneration="$(GenerateBindingRedirectsOutputType)" IgnoreVersionForFrameworkReferences="$(IgnoreVersionForFrameworkReferences)" FindDependencies="$(_FindDependencies)" FindSatellites="$(BuildingProject)" FindSerializationAssemblies="$(BuildingProject)" FindRelatedFiles="$(BuildingProject)" Silent="$(ResolveAssemblyReferencesSilent)" TargetFrameworkVersion="$(TargetFrameworkVersion)" TargetFrameworkMoniker="$(TargetFrameworkMoniker)" TargetFrameworkMonikerDisplayName="$(TargetFrameworkMonikerDisplayName)" TargetedRuntimeVersion="$(TargetedRuntimeVersion)" StateFile="$(ResolveAssemblyReferencesStateFile)" InstalledAssemblySubsetTables="@(InstalledAssemblySubsetTables)" TargetFrameworkSubsets="@(_ReferenceInstalledAssemblySubsets)" FullTargetFrameworkSubsetNames="$(FullReferenceAssemblyNames)" FullFrameworkFolders="$(_FullFrameworkReferenceAssemblyPaths)" FullFrameworkAssemblyTables="@(FullFrameworkAssemblyTables)" ProfileName="$(TargetFrameworkProfile)" LatestTargetFrameworkDirectories="@(LatestTargetFrameworkDirectories)" CopyLocalDependenciesWhenParentReferenceInGac="$(CopyLocalDependenciesWhenParentReferenceInGac)" DoNotCopyLocalIfInGac="$(DoNotCopyLocalIfInGac)" ResolvedSDKReferences="@(ResolvedSDKReference)" WarnOrErrorOnTargetArchitectureMismatch="$(ResolveAssemblyWarnOrErrorOnTargetArchitectureMismatch)" IgnoreTargetFrameworkAttributeVersionMismatch="$(ResolveAssemblyReferenceIgnoreTargetFrameworkAttributeVersionMismatch)" ContinueOnError="$(ContinueOnError)" Condition="'@(Reference)'!='' or '@(_ResolvedProjectReferencePaths)'!='' or '@(_ExplicitReference)' != ''">
      <Output TaskParameter="ResolvedFiles" ItemName="ReferencePath" />
      <Output TaskParameter="ResolvedFiles" ItemName="_ResolveAssemblyReferenceResolvedFiles" />
      <Output TaskParameter="ResolvedDependencyFiles" ItemName="ReferenceDependencyPaths" />
      <Output TaskParameter="RelatedFiles" ItemName="_ReferenceRelatedPaths" />
      <Output TaskParameter="SatelliteFiles" ItemName="ReferenceSatellitePaths" />
      <Output TaskParameter="SerializationAssemblyFiles" ItemName="_ReferenceSerializationAssemblyPaths" />
      <Output TaskParameter="ScatterFiles" ItemName="_ReferenceScatterPaths" />
      <Output TaskParameter="CopyLocalFiles" ItemName="ReferenceCopyLocalPaths" />
      <Output TaskParameter="SuggestedRedirects" ItemName="SuggestedBindingRedirects" />
      <Output TaskParameter="FilesWritten" ItemName="FileWrites" />
      <Output TaskParameter="DependsOnSystemRuntime" PropertyName="DependsOnSystemRuntime" />
    </ResolveAssemblyReference>
  </Target>
  <!--
    ====================================================================================================

                                        GenerateBindingRedirects
    Inject the binding redirects into the app config file based on suggested redirects as output from
    ResolveAssemblyReferences.

        [IN]
        @(AppConfigWithTargetPath) - Path to the source app config file. This can be null if the project
                                     doesn't contain an app config file.
        $(TargetFileName) -          The file name of the build target.

        [OUT]
        @(OutputAppConfigFile) -     Path to the output app config file in the intermediate directory.
        
    ====================================================================================================
  -->
  <Target Name="GenerateBindingRedirects" Inputs="$(MSBuildAllProjects);@(AppConfigFile);$(ResolveAssemblyReferencesStateFile);$(IntermediateOutputPath);@(SuggestedBindingRedirects)" Outputs="$(_GenerateBindingRedirectsIntermediateAppConfig)" Condition="'$(AutoGenerateBindingRedirects)' == 'true' and '$(GenerateBindingRedirectsOutputType)' == 'true'">
    <GenerateBindingRedirects AppConfigFile="@(AppConfigWithTargetPath)" TargetName="$(TargetFileName).config" OutputAppConfigFile="$(_GenerateBindingRedirectsIntermediateAppConfig)" SuggestedRedirects="@(SuggestedBindingRedirects)">
      <Output TaskParameter="OutputAppConfigFile" ItemName="FileWrites" />
    </GenerateBindingRedirects>
  </Target>
  <!--
    ====================================================================================================

                                        GenerateBindingRedirectsUpdateAppConfig
    Updates the project to use the generated app.config content.  This needs to run regardless of 
    inputs/outputs so it is seperate from GenerateBindingRedirects.
    ====================================================================================================
  -->
  <Target Name="GenerateBindingRedirectsUpdateAppConfig" AfterTargets="GenerateBindingRedirects" Condition="'$(AutoGenerateBindingRedirects)' == 'true' and '$(GenerateBindingRedirectsOutputType)' == 'true' and Exists('$(_GenerateBindingRedirectsIntermediateAppConfig)')">
    <PropertyGroup>
      <AppConfig>$(_GenerateBindingRedirectsIntermediateAppConfig)</AppConfig>
    </PropertyGroup>
    <ItemGroup>
      <AppConfigWithTargetPath Remove="@(AppConfigWithTargetPath)" />
      <AppConfigWithTargetPath Include="$(AppConfig)">
        <TargetPath>$(TargetFileName).config</TargetPath>
      </AppConfigWithTargetPath>
    </ItemGroup>
  </Target>
  <!--
    ===========================================================================================
                                        GetInstalledSDKs

    Gets the list of SDKs installed in the SDKDirectoryRoot and SDKRegistryRoot locations

    These paths are used by the ResolveSDKReference task and the ResolveAssemblyReference task.
    ===========================================================================================
  -->
  <PropertyGroup>
    <SDKReferenceRegistryRoot Condition="'$(SDKReferenceRegistryRoot)' == ''">Software\Microsoft\Microsoft SDKs</SDKReferenceRegistryRoot>
    <SDKReferenceDirectoryRoot Condition="'$(SDKReferenceDirectoryRoot)' == ''">$(LocalAppData)\Microsoft SDKs;$(MSBuildProgramFiles32)\Microsoft SDKs</SDKReferenceDirectoryRoot>
    <!-- Manifest driven extension SDK locations -->
    <SDKExtensionDirectoryRoot Condition="'$(SDKExtensionDirectoryRoot)' == '' and '$(SDKIdentifier)' != ''">$(MSBuildProgramFiles32)\Microsoft SDKs\Windows Kits\10;$(MSBuildProgramFiles32)\Windows Kits\10</SDKExtensionDirectoryRoot>
    <!-- UAP projects by default should support Windows 8.1 SDKs -->
    <SupportWindows81SDKs Condition="'$(SupportWindows81SDKs)' == '' and '$(Support81SDKs)' != 'false' and '$(TargetPlatformIdentifier)' == 'UAP'">true</SupportWindows81SDKs>
    <TargetPlatformIdentifierWindows81 Condition="'$(TargetPlatformIdentifierWindows81)' == '' and '$(SupportWindows81SDKs)' == 'true'">Windows</TargetPlatformIdentifierWindows81>
    <TargetPlatformVersionWindows81 Condition="'$(TargetPlatformVersionWindows81)' == '' and '$(SupportWindows81SDKs)' == 'true'">8.1</TargetPlatformVersionWindows81>
    <!-- Desktop and phone SDKs often have the exact same identifiers, don't enable phone by default -->
    <SupportWindowsPhone81SDKs Condition="'$(SupportWindowsPhone81SDKs)' == '' and '$(Support81SDKs)' != 'false' and '$(TargetPlatformIdentifier)' == 'UAP'">false</SupportWindowsPhone81SDKs>
    <TargetPlatformIdentifierWindowsPhone81 Condition="'$(TargetPlatformIdentifierWindowsPhone81)' == '' and '$(SupportWindowsPhone81SDKs)' == 'true'">WindowsPhoneApp</TargetPlatformIdentifierWindowsPhone81>
    <TargetPlatformVersionWindowsPhone81 Condition="'$(TargetPlatformVersionWindowsPhone81)' == '' and '$(SupportWindowsPhone81SDKs)' == 'true'">8.1</TargetPlatformVersionWindowsPhone81>
  </PropertyGroup>
  <Target Name="GetInstalledSDKLocations" DependsOnTargets="$(GetInstalledSDKLocationsDependsOn)" Returns="@(InstalledSDKLocations)">
    <GetInstalledSDKLocations SDKDirectoryRoots="$(SDKReferenceDirectoryRoot)" SDKExtensionDirectoryRoots="$(SDKExtensionDirectoryRoot)" SDKRegistryRoot="$(SDKReferenceRegistryRoot)" TargetPlatformVersion="$(TargetPlatformVersion)" TargetPlatformIdentifier="$(TargetPlatformIdentifier)" Condition="'@(SDKReference)' != ''">
      <Output TaskParameter="InstalledSDKs" ItemName="InstalledSDKLocations" />
    </GetInstalledSDKLocations>
    <!-- Also lookup 8.1 SDKs if requested -->
    <GetInstalledSDKLocations SDKDirectoryRoots="$(SDKReferenceDirectoryRoot)" SDKExtensionDirectoryRoots="" SDKRegistryRoot="$(SDKReferenceRegistryRoot)" TargetPlatformVersion="$(TargetPlatformVersionWindows81)" TargetPlatformIdentifier="$(TargetPlatformIdentifierWindows81)" Condition="'@(SDKReference)' != '' and '$(SupportWindows81SDKs)' == 'true' and '$(TargetPlatformIdentifierWindows81)' != '' and '$(TargetPlatformVersionWindows81)' != ''">
      <Output TaskParameter="InstalledSDKs" ItemName="InstalledSDKLocations" />
    </GetInstalledSDKLocations>
    <GetInstalledSDKLocations SDKDirectoryRoots="$(SDKReferenceDirectoryRoot)" SDKExtensionDirectoryRoots="" SDKRegistryRoot="$(SDKReferenceRegistryRoot)" TargetPlatformVersion="$(TargetPlatformVersionWindowsPhone81)" TargetPlatformIdentifier="$(TargetPlatformIdentifierWindowsPhone81)" Condition="'@(SDKReference)' != '' and '$(SupportWindowsPhone81SDKs)' == 'true' and '$(TargetPlatformIdentifierWindowsPhone81)' != '' and '$(TargetPlatformVersionWindowsPhone81)' != ''">
      <Output TaskParameter="InstalledSDKs" ItemName="InstalledSDKLocations" />
    </GetInstalledSDKLocations>
  </Target>
  <!--
    ============================================================

                                        ResolveSDKReferences

    Given a list of SDKReference items and a list of resolved winmd files which may contain metadata as to which sdk they came from
    we need to find the sdk root folders on disk and populate a ResolvedSDKReference item which has the full path to the SDK ROOT 
    and the sdk identity as a piece of metadata.

        [IN]
        @(SDKReference) - List of sdk references (the identity in the sdk manifest file).
        @(ReferencePath) -List of resolved assemblies, we are interested in the ones which have IsWinMDFile set to true.

        [OUT]
        @(ResolvedSDKReference) - Full path to the root of the SDK
    ============================================================
  -->
  <PropertyGroup>
    <ResolveSDKReferencesDependsOn>
      GetInstalledSDKLocations
    </ResolveSDKReferencesDependsOn>
  </PropertyGroup>
  <PropertyGroup>
    <TargetedSDKConfiguration Condition="'$(TargetedSDKConfiguration)' == '' and '_$(Configuration)' == '_Debug'">Debug</TargetedSDKConfiguration>
    <TargetedSDKConfiguration Condition="'$(TargetedSDKConfiguration)' == '' and '_$(Configuration)' == '_Release'">Retail</TargetedSDKConfiguration>
    <TargetedSDKConfiguration Condition="'$(TargetedSDKConfiguration)' == ''">Retail</TargetedSDKConfiguration>
    <TargetedSDKArchitecture Condition="'$(TargetedSDKArchitecture)' == ''">$(ProcessorArchitecture)</TargetedSDKArchitecture>
    <TargetedSDKArchitecture Condition="'$(TargetedSDKArchitecture)' == ''">Neutral</TargetedSDKArchitecture>
  </PropertyGroup>
  <PropertyGroup>
    <ShouldMarkCertainSDKReferencesAsRuntimeOnly Condition="'$(ShouldMarkCertainSDKReferencesAsRuntimeOnly)' == ''">true</ShouldMarkCertainSDKReferencesAsRuntimeOnly>
  </PropertyGroup>
  <ItemGroup Condition="'$(ShouldMarkCertainSDKReferencesAsRuntimeOnly)' == 'true'">
    <!-- Dependencies that are specified as runtime-only dependencies. Therefore the associated files are not used to build Appx package.  -->
    <!-- TODO: Do we need to do anything like this for the new SDK? -->
    <RuntimeReferenceOnlySDKDependencies Condition="'$(TargetPlatformVersion)' == '8.1'" Include="Microsoft.VCLibs, Version=11.0" />
  </ItemGroup>
  <Target Name="ResolveSDKReferences" Returns="@(ResolvedSDKReference)" DependsOnTargets="$(ResolveSDKReferencesDependsOn)">
    <ResolveSDKReference SDKReferences="@(SDKReference)" RuntimeReferenceOnlySDKDependencies="@(RuntimeReferenceOnlySDKDependencies)" References="@(Reference)" TargetPlatformVersion="$(TargetPlatformVersion)" TargetPlatformIdentifier="$(TargetPlatformIdentifier)" WarnOnMissingPlatformVersion="$(SDKReferenceWarnOnMissingMaxPlatformVersion)" ProjectName="$(MSBuildProjectName)" TargetedSDKConfiguration="$(TargetedSDKConfiguration)" TargetedSDKArchitecture="$(TargetedSDKArchitecture)" InstalledSDKs="@(InstalledSDKLocations)" LogResolutionErrorsAsWarnings="$(LogSDKReferenceResolutionErrorsAsWarnings)" Prefer32Bit="$(Prefer32Bit)" ContinueOnError="$(ContinueOnError)" Condition="'@(SDKReference)'!=''">
      <Output TaskParameter="ResolvedSDKReferences" ItemName="ResolvedSDKReference" />
    </ResolveSDKReference>
  </Target>
  <Target Name="ResolveSDKReferencesDesignTime" Returns="@(ResolvedSDKReference)" DependsOnTargets="ResolveSDKReferences" />
  <!--
    ============================================================

                                        FindInvalidProjectReferences

    Find project to project references with target platform version higher than the one used by the current project and 
    creates a list of invalid references to be unresolved. It issues a warning for each invalid reference.

        [IN]
        $(TargetPlatformVersion) - Project's target platform version
        @(_ProjectReferenceTargetPlatformMonikers) - List of monikers of all referenced projects gathered by the helper 
                                                     target GetTargetPlatformMonikers.

        [OUT]
    @(InvalidProjectReferences) - List of invalid project references

    ============================================================
    -->
  <PropertyGroup>
    <FindInvalidProjectReferencesDependsOn>
      GetReferenceTargetPlatformMonikers
    </FindInvalidProjectReferencesDependsOn>
  </PropertyGroup>
  <Target Name="FindInvalidProjectReferences" Condition="'$(FindInvalidProjectReferences)' == 'true'" DependsOnTargets="$(FindInvalidProjectReferencesDependsOn)">
    <FindInvalidProjectReferences TargetPlatformVersion="$(TargetPlatformVersion)" TargetPlatformIdentifier="$(TargetPlatformIdentifier)" ProjectReferences="@(TargetPathWithTargetPlatformMoniker)">
      <Output TaskParameter="InvalidReferences" ItemName="InvalidProjectReferences" />
    </FindInvalidProjectReferences>
    <ItemGroup>
      <_ResolvedProjectReferencePaths Remove="@(InvalidProjectReferences)" />
    </ItemGroup>
  </Target>
  <Target Name="GetReferenceTargetPlatformMonikers" DependsOnTargets="AssignProjectConfiguration;_SplitProjectReferencesByFileExistence">
    <MSBuild Projects="@(_MSBuildProjectReferenceExistent)" Properties="%(_MSBuildProjectReferenceExistent.SetConfiguration); %(_MSBuildProjectReferenceExistent.SetPlatform)" Targets="GetTargetPathWithTargetPlatformMoniker" BuildInParallel="$(BuildInParallel)" ContinueOnError="!$(BuildingProject)" RemoveProperties="%(_MSBuildProjectReferenceExistent.GlobalPropertiesToRemove)">
      <Output TaskParameter="TargetOutputs" ItemName="TargetPathWithTargetPlatformMoniker" />
    </MSBuild>
  </Target>
  <!--
    ============================================================

                       ExpandSDKReferences

        After we have resolved the sdk refrence we need to make sure that we automatically include the references which are part of the SDK (both winmd and dll)
        as part of the assemblies passed to the compiler.

        Project systems or project which do not want to reference all dlls or winmd files should override this target to do nothing.
   ============================================================
    -->
  <PropertyGroup>
    <ExpandSDKReferencesDependsOn>
      ResolveSDKReferences
    </ExpandSDKReferencesDependsOn>
    <ExpandSDKAllowedReferenceExtensions Condition="'$(ExpandSDKAllowedReferenceExtensions)' == ''">
      .winmd;
      .dll
    </ExpandSDKAllowedReferenceExtensions>
  </PropertyGroup>
  <Target Name="ExpandSDKReferences" Returns="@(ReferencesFromSDK)" DependsOnTargets="$(ExpandSDKReferencesDependsOn)">
    <GetSDKReferenceFiles ResolvedSDKReferences="@(ResolvedSDKReference)" ReferenceExtensions="$(ExpandSDKAllowedReferenceExtensions)" TargetSDKIdentifier="$(SDKIdentifier)" TargetSDKVersion="$(SDKVersion)" LogRedistFilesList="$(GetSDKReferenceFilesLogRedistFilesList)" LogRedistConflictWithinSDKAsWarning="$(GetSDKReferenceFilesLogRedistConflictsWithinSDKAsWarning)" LogRedistConflictBetweenSDKsAsWarning="$(GetSDKReferenceFilesLogRedistConflictsBetweenSDKsAsWarning)" LogReferencesList="$(GetSDKReferenceFilesLogReferencesList)" LogReferenceConflictWithinSDKAsWarning="$(GetSDKReferenceFilesLogReferenceConflictsWithinSDKAsWarning)" LogReferenceConflictBetweenSDKsAsWarning="$(GetSDKReferenceFilesLogReferenceConflictsBetweenSDKsAsWarning)" CacheFileFolderPath="$(GetSDKReferenceFilesCacheFolder)" LogCacheFileExceptions="$(GetSDKReferenceFilesLogCacheFileExceptions)" Condition="'@(ResolvedSDKReference)'!=''">
      <Output TaskParameter="References" ItemName="ReferencePath" />
      <Output TaskParameter="References" ItemName="ReferencesFromSDK" />
      <Output TaskParameter="References" ItemName="_ResolveAssemblyReferenceResolvedFiles" />
      <Output TaskParameter="CopyLocalFiles" ItemName="ReferenceCopyLocalPaths" />
      <Output TaskParameter="RedistFiles" ItemName="ResolvedRedistFiles" />
    </GetSDKReferenceFiles>
  </Target>
  <!--
    ============================================================

                                        ExportWindowsMDFile

    When a project is generating a a winmd file through c# or vb, ect the compiler will create a WinMDModule file. This file needs to be run
    through the winmdexp tool in order to generate the resulting WinMD file.

    ===========================================================
    -->
  <Target Name="ExportWindowsMDFile" DependsOnTargets="Compile" Condition="'$(ExportWinMDFile)' == 'true'" Inputs="@(IntermediateAssembly);@(DocFileItem);@(_DebugSymbolsIntermediatePath);@(ReferencePath);$(MSBuildAllProjects)" Outputs="$(_IntermediateWindowsMetadataPath);$(WinMDExpOutputPdb);$(WinMDOutputDocumentationFile)">
    <PropertyGroup>
      <!-- Will be copied by the "copy WinMD artifacts" step instead -->
      <CopyBuildOutputToOutputDirectory>false</CopyBuildOutputToOutputDirectory>
      <CopyOutputSymbolsToOutputDirectory>false</CopyOutputSymbolsToOutputDirectory>
      <WinMdExpToolPath Condition="'$(WinMdExpToolPath)' == ''">$(TargetFrameworkSDKToolsDirectory)</WinMdExpToolPath>
      <WinMdExpUTF8Ouput Condition="'$(WinMdExpUTF8Ouput)' == ''">true</WinMdExpUTF8Ouput>
    </PropertyGroup>
    <WinMDExp WinMDModule="@(IntermediateAssembly)" References="@(ReferencePath)" DisabledWarnings="$(WinMdExpNoWarn)" InputDocumentationFile="@(DocFileItem)" OutputDocumentationFile="$(WinMDOutputDocumentationFile)" TreatWarningsAsErrors="$(TreatWarningsAsErrors)" InputPDBFile="@(_DebugSymbolsIntermediatePath)" OutputPDBFile="$(WinMDExpOutputPdb)" OutputWindowsMetadataFile="$(_IntermediateWindowsMetadataPath)" EnvironmentVariables="$(WinMDExpEnvironment)" UTF8Output="$(WinMdExpUTF8Ouput)" SdkToolsPath="$(WinMdExpToolPath)" AssemblyUnificationPolicy="$(WinMDExpAssemblyUnificationPolicy)">
      <Output TaskParameter="OutputWindowsMetadataFile" ItemName="FileWrites" />
    </WinMDExp>
    <ItemGroup>
      <WinMDExpArtifacts Include="$(_IntermediateWindowsMetadataPath)" />
      <WinMDExpArtifacts Include="$(WinMDOutputDocumentationFile)" />
      <WinMDExpArtifacts Include="$(WinMDExpOutputPdb)" />
      <FileWrites Include="$(WinMDOutputDocumentationFile);$(WinMDExpOutputPdb)" />
    </ItemGroup>
  </Target>
  <Target Name="ResolveAssemblyReferencesDesignTime" Returns="@(_ReferencesFromRAR)" DependsOnTargets="ResolveProjectReferences;ResolveAssemblyReferences">
    <!-- We need to do this here because we only want references which have been passed into rar but are not project to project references. -->
    <ItemGroup>
      <_ReferencesFromRAR Include="@(ReferencePath-&gt;WithMetadataValue('ReferenceSourceTarget', 'ResolveAssemblyReference'))" />
    </ItemGroup>
  </Target>
  <PropertyGroup>
    <ProjectDesignTimeAssemblyResolutionSearchPaths Condition=" '$(ProjectDesignTimeAssemblyResolutionSearchPaths)' == '' ">
      {CandidateAssemblyFiles};
      $(ReferencePath);
      {HintPathFromItem};
      {TargetFrameworkDirectory};
      {Registry:$(FrameworkRegistryBase),$(TargetFrameworkVersion),$(AssemblyFoldersSuffix)$(AssemblyFoldersExConditions)};
      {RawFileName};
      $(TargetDir)
    </ProjectDesignTimeAssemblyResolutionSearchPaths>
  </PropertyGroup>
  <!--
    ==============================================================

                                       DesignTimeResolveAssemblyReferences

    Given the list of assemblies, resolve their reference paths.
    This target is called by Visual Studio at run time in order to filter references
    according to the targeted framework.

        [IN]
        @(DesignTimeReference) - List of assembly references as simple/fusion names.


        [OUT]
        @(ReferencePath) - Paths to resolved primary files.

    ==============================================================
    -->
  <PropertyGroup>
    <DesignTimeResolveAssemblyReferencesDependsOn>
      GetFrameworkPaths;
      GetReferenceAssemblyPaths;
      ResolveReferences
    </DesignTimeResolveAssemblyReferencesDependsOn>
  </PropertyGroup>
  <Target Name="DesignTimeResolveAssemblyReferences" Condition="'$(DesignTimeReference)'!=''" DependsOnTargets="$(DesignTimeResolveAssemblyReferencesDependsOn)">
    <ItemGroup>
      <_DesignTimeReferenceInstalledAssemblyDirectory Include="$(TargetFrameworkDirectory)" />
    </ItemGroup>
    <PropertyGroup>
      <DesignTimeResolveAssemblyReferencesStateFile Condition="'$(BuildingProject)'=='true'">$(IntermediateOutputPath)$(MSBuildProjectFile)DesignTimeResolveAssemblyReferences.cache</DesignTimeResolveAssemblyReferencesStateFile>
    </PropertyGroup>
    <PropertyGroup>
      <DesignTimeAssemblySearchPaths Condition=" '$(DesignTimeAssemblySearchPaths)' == '' ">
        {CandidateAssemblyFiles};
        $(ReferencePath);
        {HintPathFromItem};
        {TargetFrameworkDirectory};
        {Registry:$(FrameworkRegistryBase),$(TargetFrameworkVersion),$(AssemblyFoldersSuffix)$(AssemblyFoldersExConditions)};
        {RawFileName};
        $(OutDir)
      </DesignTimeAssemblySearchPaths>
    </PropertyGroup>
    <PropertyGroup>
      <DesignTimeFindDependencies Condition=" '$(DesignTimeFindDependencies)' == '' ">false</DesignTimeFindDependencies>
      <DesignTimeIgnoreVersionForFrameworkReferences Condition=" '$(DesignTimeIgnoreVersionForFrameworkReferences)' == '' ">false</DesignTimeIgnoreVersionForFrameworkReferences>
      <DesignTimeFindSatellites Condition=" '$(DesignTimeFindSatellites)' == '' ">false</DesignTimeFindSatellites>
      <DesignTimeFindSerializationAssemblies Condition=" '$(DesignTimeFindSerializationAssemblies)' == '' ">false</DesignTimeFindSerializationAssemblies>
      <DesignTimeFindRelatedFiles Condition=" '$(DesignTimeFindRelatedFiles)' == '' ">false</DesignTimeFindRelatedFiles>
      <DesignTimeSilentResolution Condition=" '$(DesignTimeSilentResolution)' == '' and '$(TraceDesignTime)' != 'true'">true</DesignTimeSilentResolution>
      <DesignTimeAutoUnify Condition="'$(DesignTimeAutoUnify)' == ''">false</DesignTimeAutoUnify>
    </PropertyGroup>
    <ItemGroup>
      <_DesignTimeReferenceAssemblies Include="$(DesignTimeReference)" />
    </ItemGroup>
    <ItemGroup>
      <_RARResolvedReferencePath Include="@(ReferencePath)" />
      <ReferencePath Remove="@(ReferencePath)" />
    </ItemGroup>
    <ResolveAssemblyReference Assemblies="@(_DesignTimeReferenceAssemblies)" TargetFrameworkDirectories="@(_DesignTimeReferenceInstalledAssemblyDirectory)" SearchPaths="$(DesignTimeAssemblySearchPaths)" AllowedAssemblyExtensions="$(AllowedReferenceAssemblyFileExtensions)" TargetProcessorArchitecture="$(ProcessorArchitecture)" CandidateAssemblyFiles="@(Content);@(None);@(_RARResolvedReferencePath)" FindDependencies="$(DesignTimeFindDependencies)" AutoUnify="$(DesignTimeAutoUnify)" IgnoreVersionForFrameworkReferences="$(DesignTimeIgnoreVersionForFrameworkReferences)" FindSatellites="$(DesignTimeFindSatellites)" FindSerializationAssemblies="$(DesignTimeFindSerializationAssemblies)" FindRelatedFiles="$(DesignTimeFindRelatedFiles)" Silent="$(DesignTimeSilentResolution)" TargetFrameworkVersion="$(TargetFrameworkVersion)" TargetFrameworkMoniker="$(TargetFrameworkMoniker)" TargetFrameworkMonikerDisplayName="$(TargetFrameworkMonikerDisplayName)" TargetedRuntimeVersion="$(TargetedRuntimeVersion)" StateFile="$(DesignTimeResolveAssemblyReferencesStateFile)" InstalledAssemblySubsetTables="@(InstalledAssemblySubsetTables)" IgnoreDefaultInstalledAssemblySubsetTables="$(IgnoreInstalledAssemblySubsetTables)" TargetFrameworkSubsets="@(_ReferenceInstalledAssemblySubsets)" FullTargetFrameworkSubsetNames="$(FullReferenceAssemblyNames)" FullFrameworkFolders="$(_FullFrameworkReferenceAssemblyPaths)" FullFrameworkAssemblyTables="@(FullFrameworkAssemblyTables)" ProfileName="$(TargetFrameworkProfile)" ResolvedSDKReferences="@(ResolvedSDKReference)" IgnoreTargetFrameworkAttributeVersionMismatch="$(DesignTimeIgnoreTargetFrameworkAttributeVersionMismatch)">
      <Output TaskParameter="ResolvedFiles" ItemName="DesignTimeReferencePath" />
      <Output TaskParameter="FilesWritten" ItemName="FileWrites" />
    </ResolveAssemblyReference>
  </Target>
  <!--
    ============================================================
                                        ResolveComReferences

    Resolve COM references

        [IN]
        @(COMReference) - The list of COM references
        $(BaseIntermediateOutputPath) - The output directory in which to generate wrapper assemblies

        [OUT]
        @(ReferencePath) - Paths to referenced wrappers.

        If ResolveComReferences is invoked from the IDE, PrepareForBuild may need to run to create directories.
    ============================================================
    -->
  <PropertyGroup>
    <ComReferenceExecuteAsTool Condition="'$(ComReferenceExecuteAsTool)'==''">false</ComReferenceExecuteAsTool>
  </PropertyGroup>
  <Target Name="ResolveComReferences" Condition="'@(COMReference)'!='' or '@(COMFileReference)'!=''" Returns="@(ReferencePath)" DependsOnTargets="PrepareForBuild;ResolveKeySource;ResolveAssemblyReferences">
    <PropertyGroup Condition=" '$(InteropOutputPath)' == '' ">
      <InteropOutputPath>$(IntermediateOutputPath)</InteropOutputPath>
    </PropertyGroup>
    <MakeDir Directories="$(InteropOutputPath)" />
    <!--
        Note: This task should not be batched, since it relies on having all the COM references fed into it at once.
        -->
    <PropertyGroup>
      <ResolveComReferenceMSBuildArchitecture Condition="'$(ResolveComReferenceMSBuildArchitecture)' == ''">$(PlatformTargetAsMSBuildArchitecture)</ResolveComReferenceMSBuildArchitecture>
      <ResolveComReferenceToolPath Condition="'$(ResolveComReferenceToolPath)' == ''">$(TargetFrameworkSDKToolsDirectory)</ResolveComReferenceToolPath>
      <ResolveComReferenceSilent Condition="'$(ResolveComReferenceSilent)' == ''">false</ResolveComReferenceSilent>
    </PropertyGroup>
    <ResolveComReference TypeLibNames="@(COMReference)" TypeLibFiles="@(COMFileReference)" ResolvedAssemblyReferences="@(ReferencePath)" WrapperOutputDirectory="$(InteropOutputPath)" IncludeVersionInInteropName="$(IncludeVersionInInteropName)" KeyContainer="$(KeyContainerName)" KeyFile="$(KeyOriginatorFile)" DelaySign="$(DelaySign)" StateFile="@(_ResolveComReferenceCache)" TargetFrameworkVersion="$(TargetFrameworkVersion)" TargetProcessorArchitecture="$(ProcessorArchitecture)" NoClassMembers="$(ComReferenceNoClassMembers)" Silent="$(ResolveComReferenceSilent)" EnvironmentVariables="$(ResolveComReferenceEnvironment)" SdkToolsPath="$(ResolveComReferenceToolPath)" ExecuteAsTool="$(ComReferenceExecuteAsTool)" MSBuildArchitecture="$(ResolveComReferenceMSBuildArchitecture)" ContinueOnError="$(ContinueOnError)">
      <Output TaskParameter="ResolvedFiles" ItemName="ReferencePath" />
      <Output TaskParameter="ResolvedFiles" ItemName="ComReferenceWrappers" />
      <Output TaskParameter="ResolvedFiles" ItemName="FileWrites" />
      <!-- This output list only includes items with Isolated attribute set to True.  It's done by the task itself. -->
      <Output TaskParameter="ResolvedModules" ItemName="ResolvedIsolatedComModules" />
    </ResolveComReference>
    <ItemGroup>
      <FileWrites Include="@(_ResolveComReferenceCache)" />
      <ReferenceComWrappersToCopyLocal Include="@(ComReferenceWrappers)" Condition="'%(ComReferenceWrappers.CopyLocal)'!='false'" />
    </ItemGroup>
  </Target>
  <Target Name="ResolveComReferencesDesignTime" Returns="@(ComReferenceWrappers)" DependsOnTargets="ResolveComReferences" />
  <!--
    ***********************************************************************************************
    ***********************************************************************************************
                                                                PrepareResources Section
    ***********************************************************************************************
    ***********************************************************************************************
    -->
  <!--
    ============================================================
                                        PrepareResources

    Prepare resources for the Compile step.
    ============================================================
    -->
  <PropertyGroup>
    <PrepareResourcesDependsOn>
      PrepareResourceNames;
      ResGen;
      CompileLicxFiles
    </PrepareResourcesDependsOn>
  </PropertyGroup>
  <Target Name="PrepareResources" DependsOnTargets="$(PrepareResourcesDependsOn)" />
  <!--
    ============================================================
                                        PrepareResourceNames

    Prepare the names of resource files.
    ============================================================
    -->
  <PropertyGroup>
    <PrepareResourceNamesDependsOn>
      AssignTargetPaths;
      SplitResourcesByCulture;
      CreateManifestResourceNames;
      CreateCustomManifestResourceNames
    </PrepareResourceNamesDependsOn>
  </PropertyGroup>
  <Target Name="PrepareResourceNames" DependsOnTargets="$(PrepareResourceNamesDependsOn)" />
  <!--
    ============================================================
                                        AssignTargetPaths

    This target creates <TargetPath> tags for items. <TargetPath> is a relative folder plus filename
    for the destination of this item.
    ============================================================
    -->
  <PropertyGroup>
    <AssignTargetPathsDependsOn />
  </PropertyGroup>
  <Target Name="AssignTargetPaths" DependsOnTargets="$(AssignTargetPathsDependsOn)">
    <ItemGroup>
      <_Temporary Remove="@(_Temporary)" />
    </ItemGroup>
    <!-- AssignTargetPath generates TargetPath metadata that is consumed by CreateManifestResourceNames target for manifest name generation -->
    <AssignTargetPath Files="@(EmbeddedResource)" RootFolder="$(MSBuildProjectDirectory)">
      <Output TaskParameter="AssignedFiles" ItemName="_Temporary" />
    </AssignTargetPath>
    <ItemGroup>
      <!-- Replace items in EmbeddedResource with the items emitted by the AssignTargetPath task that have the TargetPath metadata -->
      <EmbeddedResource Remove="@(_Temporary)" />
      <EmbeddedResource Include="@(_Temporary)" />
      <_Temporary Remove="@(_Temporary)" />
    </ItemGroup>
    <AssignTargetPath Files="@(Content)" RootFolder="$(MSBuildProjectDirectory)">
      <Output TaskParameter="AssignedFiles" ItemName="ContentWithTargetPath" />
    </AssignTargetPath>
    <AssignTargetPath Files="@(None)" RootFolder="$(MSBuildProjectDirectory)">
      <Output TaskParameter="AssignedFiles" ItemName="_NoneWithTargetPath" />
    </AssignTargetPath>
    <AssignTargetPath Files="@(BaseApplicationManifest)" RootFolder="$(MSBuildProjectDirectory)">
      <Output TaskParameter="AssignedFiles" ItemName="_DeploymentBaseManifestWithTargetPath" />
    </AssignTargetPath>
    <AssignTargetPath Files="@(None)" RootFolder="$(MSBuildProjectDirectory)" Condition="'@(_DeploymentBaseManifestWithTargetPath)'=='' and '%(None.Extension)'=='.manifest'">
      <Output TaskParameter="AssignedFiles" ItemName="_DeploymentBaseManifestWithTargetPath" />
    </AssignTargetPath>
  </Target>
  <!--
    ============================================================
                                        GetItemTargetPaths

    This target returns all items that have TargetPath metadata assigned by the AssignTargetPaths target.
    ============================================================
    -->
  <Target Name="GetItemTargetPaths" DependsOnTargets="AssignTargetPaths" Returns="&#xD;&#xA;      @(EmbeddedResource);&#xD;&#xA;      @(ContentWithTargetPath);&#xD;&#xA;      @(_NoneWithTargetPath);&#xD;&#xA;      @(_DeploymentBaseManifestWithTargetPath);&#xD;&#xA;      " />
  <!--
    ============================================================
                                        SplitResourcesByCulture

    Split EmbeddedResource items into five lists based on whether
    they are resx files, licx files or other resources and whether they should be localized. Also adds Type and Culture
    metadata. Type indicates whether the resource is "Resx" or "Non-Resx".

        [IN]/[OUT]
        @(EmbeddedResource) - The raw list of resources.

        [OUT]
        @(_LicxFile) - The EmbeddedResource items with extension equal to '.licx'.
    ============================================================
    -->
  <Target Name="SplitResourcesByCulture" DependsOnTargets="AssignTargetPaths">
    <Warning Condition="'@(ResxWithNoCulture)'!=''" Code="MSB9000" Text="ResxWithNoCulture item type is deprecated. Use EmbeddedResource items instead." />
    <Warning Condition="'@(ResxWithCulture)'!=''" Code="MSB9001" Text="ResxWithCulture item type is deprecated. Use EmbeddedResource items instead." />
    <Warning Condition="'@(NonResxWithCulture)'!=''" Code="MSB9002" Text="NonResxWithCulture item type is deprecated. Use EmbeddedResource items instead." />
    <Warning Condition="'@(NonResxWithNoCulture)'!=''" Code="MSB9003" Text="NonResxWithNoCulture item type is deprecated. Use EmbeddedResource items instead." />
    <ItemGroup>
      <_LicxFile Include="@(EmbeddedResource)" Condition="'%(Extension)'=='.licx'" />
      <!-- CONSUMED FOR COMPATIBILITY REASONS ONLY. EMIT EMBEDDEDRESOURCE INSTEAD -->
      <EmbeddedResource Include="@(ResxWithNoCulture);@(ResxWithCulture)">
        <Type>Resx</Type>
      </EmbeddedResource>
      <EmbeddedResource Include="@(NonResxWithCulture);@(NonResxWithNoCulture)">
        <Type>Non-Resx</Type>
      </EmbeddedResource>
    </ItemGroup>
    <AssignCulture Files="@(EmbeddedResource)" Condition="'%(Extension)'!='.licx'">
      <!-- Create the list of culture resx and embedded resource files -->
      <Output TaskParameter="AssignedFilesWithCulture" ItemName="_MixedResourceWithCulture" />
      <!-- Create the list of non-culture resx and embedded resource files -->
      <Output TaskParameter="AssignedFilesWithNoCulture" ItemName="_MixedResourceWithNoCulture" />
    </AssignCulture>
    <ItemGroup>
      <!-- Remove EmbeddedResource items that we have processed already
                 i.e. either Licx, or resources that don't have culture info -->
      <EmbeddedResource Remove="@(_MixedResourceWithCulture)" />
      <EmbeddedResource Remove="@(_MixedResourceWithNoCulture)" />
      <EmbeddedResource Remove="@(_LicxFile)" />
      <!-- Add back everything except Licx, so that we have culture info -->
      <EmbeddedResource Include="@(_MixedResourceWithNoCulture);@(_MixedResourceWithCulture)" Condition="'%(Extension)'=='.resx' or '%(Extension)'=='.restext'">
        <Type Condition="'%(_MixedResourceWithNoCulture.Type)'=='' and '%(_MixedResourceWithCulture.Type)'==''">Resx</Type>
      </EmbeddedResource>
      <EmbeddedResource Include="@(_MixedResourceWithNoCulture);@(_MixedResourceWithCulture)" Condition="'%(Extension)'!='.resx' and '%(Extension)'!='.restext'">
        <Type Condition="'%(_MixedResourceWithNoCulture.Type)'=='' and '%(_MixedResourceWithCulture.Type)'==''">Non-Resx</Type>
      </EmbeddedResource>
      <!-- EMITTED FOR COMPATIBILITY REASONS ONLY. CONSUME EMBEDDEDRESOURCE INSTEAD -->
      <ResxWithNoCulture Remove="@(ResxWithNoCulture)" />
      <NonResxWithNoCulture Remove="@(NonResxWithNoCulture)" />
      <ResxWithCulture Remove="@(ResxWithCulture)" />
      <NonResxWithCulture Remove="@(NonResxWithCulture)" />
      <ResxWithNoCulture Include="@(_MixedResourceWithNoCulture)" Condition="'%(WithCulture)'=='false' and ('%(Extension)'=='.resx' or '%(Extension)'=='.restext')" />
      <NonResxWithNoCulture Include="@(_MixedResourceWithNoCulture)" Condition="'%(WithCulture)'=='false' and ('%(Extension)'!='.resx' and '%(Extension)'!='.restext')" />
      <ResxWithCulture Include="@(_MixedResourceWithCulture)" Condition="'%(WithCulture)'=='true' and ('%(Extension)'=='.resx' or '%(Extension)'=='.restext')" />
      <NonResxWithCulture Include="@(_MixedResourceWithCulture)" Condition="'%(WithCulture)'=='true' and ('%(Extension)'!='.resx' and '%(Extension)'!='.restext')" />
      <!-- Clean up temporary lists -->
      <_MixedResourceWithNoCulture Remove="@(_MixedResourceWithNoCulture)" />
      <_MixedResourceWithCulture Remove="@(_MixedResourceWithCulture)" />
    </ItemGroup>
  </Target>
  <!--
    =======================================================================
                                        CreateCustomManifestResourceNames

    Allows custom manifest resource name generation tasks to plug
    into the build process
    =======================================================================
    -->
  <PropertyGroup>
    <CreateCustomManifestResourceNamesDependsOn />
  </PropertyGroup>
  <Target Name="CreateCustomManifestResourceNames" DependsOnTargets="$(CreateCustomManifestResourceNamesDependsOn)" />
  <!--
    ============================================================
                                        ResGen

    Run GenerateResource on the given resx files.

    ============================================================
    -->
  <PropertyGroup>
    <ResGenDependsOn>ResolveAssemblyReferences;SplitResourcesByCulture;BeforeResGen;CoreResGen;AfterResGen</ResGenDependsOn>
    <CoreResGenDependsOn />
    <UseSourcePath Condition="'$(UseSourcePath)'==''">true</UseSourcePath>
    <ResGenExecuteAsTool Condition="'$(ResGenExecuteAsTool)'==''">false</ResGenExecuteAsTool>
  </PropertyGroup>
  <Target Name="ResGen" DependsOnTargets="$(ResGenDependsOn)" />
  <!--
    ============================================================
                                        BeforeResGen

    Redefine this target in your project in order to run tasks just before Resgen.
    ============================================================
    -->
  <Target Name="BeforeResGen" />
  <!--
    ============================================================
                                        AfterResGen

    Redefine this target in your project in order to run tasks just after Resgen.
    ============================================================
    -->
  <Target Name="AfterResGen" />
  <!--
    ============================================================
                                        CoreResGen
    ============================================================
    -->
  <Target Name="CoreResGen" DependsOnTargets="$(CoreResGenDependsOn)">
    <ItemGroup>
      <_Temporary Remove="@(_Temporary)" />
    </ItemGroup>
    <PropertyGroup>
      <GenerateResourceMSBuildArchitecture Condition="'$(GenerateResourceMSBuildArchitecture)' == ''">$(PlatformTargetAsMSBuildArchitecture)</GenerateResourceMSBuildArchitecture>
      <ResgenToolPath Condition="'$(ResgenToolPath)' == ''">$(TargetFrameworkSDKToolsDirectory)</ResgenToolPath>
    </PropertyGroup>
    <PropertyGroup Condition="'$(TargetFrameworkAsMSBuildRuntime)' != '' and '$(GenerateResourceMSBuildArchitecture)' != ''">
      <!-- In the general case, we want to fail to run the task if the task host it's requesting doesn't exist, because we'd rather let the
           user know there's something wrong than just silently generate something that's probably not quite right. However, in a few 
           circumstances, there are tasks that are already aware of runtime / bitness concerns, in which case even if we go ahead and run 
           the more recent version of the task, it should be able to generate something correct.  GenerateResource is one such task, so 
           we check for the existence of the targeted task host so that we can use it preferentially, but if it can't be found, we'll fall 
           back to the current task since it's still mostly correct.

           In particular, we need to do this because otherwise people with Dev10 on a machine that they upgrade to Win8 will be broken: 
           they'll have ResGen from the 7.0A SDK installed, so launching ResGen will still work, but the CLR2 task host is only installed by 
           the 8.0A SDK, which they won't have installed, and thus without this fallback mechanism, their projects targeting v3.5 will 
           suddenly start failing to build.-->
      <GenerateResourceMSBuildRuntime Condition="'$(GenerateResourceMSBuildRuntime)' == '' and &#xD;&#xA;                     $([MSBuild]::DoesTaskHostExist(`$(TargetFrameworkAsMSBuildRuntime)`, `$(GenerateResourceMSBuildArchitecture)`))">$(TargetFrameworkAsMSBuildRuntime)</GenerateResourceMSBuildRuntime>
      <!-- If the targeted runtime doesn't exist, fall back to current -->
      <GenerateResourceMSBuildRuntime Condition="'$(GenerateResourceMSBuildRuntime)' == ''">CurrentRuntime</GenerateResourceMSBuildRuntime>
    </PropertyGroup>
    <!-- 4.0 task has some new parameters that we want to make use of if we're targeting 4.0 -->
    <GenerateResource Sources="@(EmbeddedResource)" UseSourcePath="$(UseSourcePath)" References="@(ReferencePath)" AdditionalInputs="$(MSBuildAllProjects)" NeverLockTypeAssemblies="$(GenerateResourceNeverLockTypeAssemblies)" StateFile="$(IntermediateOutputPath)$(MSBuildProjectFile).GenerateResource.Cache" StronglyTypedClassName="%(EmbeddedResource.StronglyTypedClassName)" StronglyTypedFileName="%(EmbeddedResource.StronglyTypedFileName)" StronglyTypedLanguage="%(EmbeddedResource.StronglyTypedLanguage)" StronglyTypedNamespace="%(EmbeddedResource.StronglyTypedNamespace)" StronglyTypedManifestPrefix="%(EmbeddedResource.StronglyTypedManifestPrefix)" PublicClass="%(EmbeddedResource.PublicClass)" OutputResources="@(EmbeddedResource->'$(IntermediateOutputPath)%(ManifestResourceName).resources')" Condition="'%(EmbeddedResource.Type)' == 'Resx' and '%(EmbeddedResource.GenerateResource)' != 'false' and '$(GenerateResourceMSBuildRuntime)' != 'CLR2'" SdkToolsPath="$(ResgenToolPath)" ExecuteAsTool="$(ResGenExecuteAsTool)" EnvironmentVariables="$(ResGenEnvironment)" MSBuildRuntime="$(GenerateResourceMSBuildRuntime)" MSBuildArchitecture="$(GenerateResourceMSBuildArchitecture)">
      <Output TaskParameter="FilesWritten" ItemName="FileWrites" />
      <Output TaskParameter="StronglyTypedFileName" ItemName="Compile" />
      <!-- Gather Sources as an output since it will contain OutputResource metadata indicating the final output resource that it was compiled into -->
      <Output TaskParameter="Sources" ItemName="_Temporary" />
    </GenerateResource>
    <!-- But we can't use those parameters if we're targeting 3.5, since we're using the 3.5 task -->
    <GenerateResource Sources="@(EmbeddedResource)" UseSourcePath="$(UseSourcePath)" References="@(ReferencePath)" AdditionalInputs="$(MSBuildAllProjects)" NeverLockTypeAssemblies="$(GenerateResourceNeverLockTypeAssemblies)" StateFile="$(IntermediateOutputPath)$(MSBuildProjectFile).GenerateResource.Cache" StronglyTypedClassName="%(EmbeddedResource.StronglyTypedClassName)" StronglyTypedFileName="%(EmbeddedResource.StronglyTypedFileName)" StronglyTypedLanguage="%(EmbeddedResource.StronglyTypedLanguage)" StronglyTypedNamespace="%(EmbeddedResource.StronglyTypedNamespace)" StronglyTypedManifestPrefix="%(EmbeddedResource.StronglyTypedManifestPrefix)" PublicClass="%(EmbeddedResource.PublicClass)" OutputResources="@(EmbeddedResource->'$(IntermediateOutputPath)%(ManifestResourceName).resources')" MSBuildRuntime="$(GenerateResourceMSBuildRuntime)" MSBuildArchitecture="$(GenerateResourceMSBuildArchitecture)" Condition="'%(EmbeddedResource.Type)' == 'Resx' and '%(EmbeddedResource.GenerateResource)' != 'false' and '$(GenerateResourceMSBuildRuntime)' == 'CLR2'">
      <Output TaskParameter="FilesWritten" ItemName="FileWrites" />
      <Output TaskParameter="StronglyTypedFileName" ItemName="Compile" />
      <!-- Gather Sources as an output since it will contain OutputResource metadata indicating the final output resource that it was compiled into -->
      <Output TaskParameter="Sources" ItemName="_Temporary" />
    </GenerateResource>
    <ItemGroup>
      <EmbeddedResource Remove="@(_Temporary)" />
      <!-- Add back the Sources list (with OutputResource metadata) that we output from GenerateResource into EmbeddedResource -->
      <EmbeddedResource Include="@(_Temporary)" />
      <_Temporary Remove="@(_Temporary)" />
      <!-- EMITTED FOR COMPATIBILITY REASONS ONLY. CONSUME EMBEDDEDRESOURCE INSTEAD -->
      <ManifestResourceWithNoCulture Include="@(EmbeddedResource->'%(OutputResource)')" Condition="'%(EmbeddedResource.WithCulture)'=='false' and '%(EmbeddedResource.Type)' == 'Resx'">
        <EmittedForCompatibilityOnly>true</EmittedForCompatibilityOnly>
      </ManifestResourceWithNoCulture>
      <ManifestNonResxWithNoCultureOnDisk Include="@(EmbeddedResource)" Condition="'%(EmbeddedResource.WithCulture)'=='false' and '%(EmbeddedResource.Type)' == 'Non-Resx'">
        <EmittedForCompatibilityOnly>true</EmittedForCompatibilityOnly>
      </ManifestNonResxWithNoCultureOnDisk>
      <!-- EMITTED FOR COMPATIBILITY REASONS ONLY. CONSUME EMBEDDEDRESOURCE INSTEAD -->
      <ManifestResourceWithCulture Include="@(EmbeddedResource->'%(OutputResource)')" Condition="'%(EmbeddedResource.WithCulture)'=='true' and '%(EmbeddedResource.Type)' == 'Resx'">
        <EmittedForCompatibilityOnly>true</EmittedForCompatibilityOnly>
      </ManifestResourceWithCulture>
      <ManifestNonResxWithCultureOnDisk Include="@(EmbeddedResource)" Condition="'%(EmbeddedResource.WithCulture)'=='true' and '%(EmbeddedResource.Type)' == 'Non-Resx'">
        <EmittedForCompatibilityOnly>true</EmittedForCompatibilityOnly>
      </ManifestNonResxWithCultureOnDisk>
    </ItemGroup>
  </Target>
  <!--
    ============================================================
                                        CompileLicxFiles

    Compile .licx files (containing information about licensed controls used by the application) into .licenses files.

        [IN]
        @(_LicxFile) - The list of .licx files in the project (usually there will be just one)

        [OUT]
        @(CompiledLicenseFile) - The list of compiled .licenses files (there will be just one)
    ============================================================
    -->
  <PropertyGroup>
    <CompileLicxFilesDependsOn />
  </PropertyGroup>
  <Target Name="CompileLicxFiles" Condition="'@(_LicxFile)'!=''" DependsOnTargets="$(CompileLicxFilesDependsOn)" Inputs="$(MSBuildAllProjects);@(_LicxFile);@(ReferencePath);@(ReferenceDependencyPaths)" Outputs="$(IntermediateOutputPath)$(TargetFileName).licenses">
    <PropertyGroup>
      <LCMSBuildArchitecture Condition="'$(LCMSBuildArchitecture)' == ''">$(PlatformTargetAsMSBuildArchitecture)</LCMSBuildArchitecture>
    </PropertyGroup>
    <LC Sources="@(_LicxFile)" LicenseTarget="$(TargetFileName)" OutputDirectory="$(IntermediateOutputPath)" OutputLicense="$(IntermediateOutputPath)$(TargetFileName).licenses" ReferencedAssemblies="@(ReferencePath);@(ReferenceDependencyPaths)" NoLogo="$(NoLogo)" ToolPath="$(LCToolPath)" SdkToolsPath="$(TargetFrameworkSDKToolsDirectory)" EnvironmentVariables="$(LCEnvironment)" MSBuildArchitecture="$(LCMSBuildArchitecture)" TargetFrameworkVersion="$(TargetFrameworkVersion)">
      <Output TaskParameter="OutputLicense" ItemName="CompiledLicenseFile" />
      <Output TaskParameter="OutputLicense" ItemName="FileWrites" />
    </LC>
  </Target>
  <!--
    ***********************************************************************************************
    ***********************************************************************************************
                                                                ResolveKeySource Section
    ***********************************************************************************************
    ***********************************************************************************************
    -->
  <!--
    ============================================================
                                        ResolveKeySource

    Resolve the strong name key used to sign the assembly as well as the certificate used to
    sign the ClickOnce manifests.

        [IN]
        $(AssemblyOriginatorKeyFile)     - The file used to sign the assembly (.snk or .pfx)
        $(ManifestCertificateThumbprint) - The thumbprint used to locate the certificate in the
                                           user's certificate store.
        $(ManifestKeyFile)               - The key file that contains the certificate in case the
                                           certificate is not in the user's store.

        [OUT]
        $(ResolvedAssemblyKeyFile)        - Key used to sign the assembly
        $(_DeploymentResolvedManifestCertificateThumbprint) - Certificate used to sign the manifests
    ============================================================
    -->
  <Target Name="ResolveKeySource" Condition="$(SignManifests) == 'true' or $(SignAssembly) == 'true'">
    <ResolveKeySource KeyFile="$(AssemblyOriginatorKeyFile)" CertificateThumbprint="$(ManifestCertificateThumbprint)" CertificateFile="$(ManifestKeyFile)" SuppressAutoClosePasswordPrompt="$(BuildingInsideVisualStudio)" ShowImportDialogDespitePreviousFailures="$(BuildingProject)" ContinueOnError="!$(BuildingProject)">
      <Output TaskParameter="ResolvedKeyFile" PropertyName="KeyOriginatorFile" Condition=" '$(SignAssembly)' == 'true' " />
      <Output TaskParameter="ResolvedKeyContainer" PropertyName="KeyContainerName" Condition=" '$(SignAssembly)' == 'true' " />
      <Output TaskParameter="ResolvedThumbprint" PropertyName="_DeploymentResolvedManifestCertificateThumbprint" Condition=" '$(SignManifests)' == 'true' " />
    </ResolveKeySource>
  </Target>
  <!--
    ***********************************************************************************************
    ***********************************************************************************************
                                                                Compile Section
    ***********************************************************************************************
    ***********************************************************************************************
    -->
  <!--
    ============================================================
                                        Compile
    ============================================================
    -->
  <PropertyGroup>
    <CompileDependsOn>
      ResolveReferences;
      ResolveKeySource;
      SetWin32ManifestProperties;
      _GenerateCompileInputs;
      BeforeCompile;
      _TimeStampBeforeCompile;
      CoreCompile;
      _TimeStampAfterCompile;
      AfterCompile;
    </CompileDependsOn>
  </PropertyGroup>
  <Target Name="Compile" DependsOnTargets="$(CompileDependsOn)" />
  <!--
    ============================================================
                                        _GenerateCompileInputs

    Create the _CoreCompileResourceInputs list of inputs to the CoreCompile target.
    ============================================================
    -->
  <Target Name="_GenerateCompileInputs">
    <Warning Condition="'@(ManifestResourceWithNoCulture)'!='' and '%(ManifestResourceWithNoCulture.EmittedForCompatibilityOnly)'==''" Code="MSB9004" Text="ManifestResourceWithNoCulture item type is deprecated. Emit EmbeddedResource items instead, with metadata WithCulture='false', Type='Resx', and optional LogicalName." />
    <Warning Condition="'@(ManifestNonResxWithNoCultureOnDisk)'!='' and '%(ManifestNonResxWithNoCultureOnDisk.EmittedForCompatibilityOnly)'==''" Code="MSB9005" Text="ManifestNonResxWithNoCultureOnDisk item type is deprecated. Emit EmbeddedResource items instead, with metadata WithCulture='false', Type='Non-Resx', and optional LogicalName." />
    <ItemGroup>
      <!-- _CoreCompileResourceInputs is the list of TLDA inputs that should trigger CoreCompile, and are listed as inputs to that target -->
      <_CoreCompileResourceInputs Include="@(EmbeddedResource->'%(OutputResource)')" Condition="'%(EmbeddedResource.WithCulture)' == 'false' and '%(EmbeddedResource.Type)' == 'Resx'" />
      <_CoreCompileResourceInputs Include="@(EmbeddedResource)" Condition="'%(EmbeddedResource.WithCulture)' == 'false' and '%(EmbeddedResource.Type)' == 'Non-Resx' " />
      <!-- CONSUMED FOR COMPATIBILITY REASONS ONLY. EMIT EMBEDDEDRESOURCE INSTEAD -->
      <_CoreCompileResourceInputs Include="@(ManifestResourceWithNoCulture)" Condition="'%(ManifestResourceWithNoCulture.EmittedForCompatibilityOnly)'==''">
        <Type>Resx</Type>
        <WithCulture>false</WithCulture>
      </_CoreCompileResourceInputs>
      <_CoreCompileResourceInputs Include="@(ManifestNonResxWithNoCultureOnDisk)" Condition="'%(ManifestNonResxWithNoCultureOnDisk.EmittedForCompatibilityOnly)'==''">
        <Type>Non-Resx</Type>
        <WithCulture>false</WithCulture>
      </_CoreCompileResourceInputs>
    </ItemGroup>
  </Target>
  <!--
    ============================================================
                                        GenerateTargetFrameworkMonikerAttribute

    Emit the target framework moniker attribute as  a code fragment into a temporary source file for the compiler.
    ============================================================
    -->
  <PropertyGroup Condition="'$(TargetFrameworkMoniker)' != ''">
    <!-- Do not clean if we are going to default the path to the temp directory -->
    <TargetFrameworkMonikerAssemblyAttributesFileClean Condition="'$(TargetFrameworkMonikerAssemblyAttributesFileClean)' == '' and '$(TargetFrameworkMonikerAssemblyAttributesPath)' != ''">true</TargetFrameworkMonikerAssemblyAttributesFileClean>
    <TargetFrameworkMonikerAssemblyAttributesPath Condition="'$(TargetFrameworkMonikerAssemblyAttributesPath)' == ''">$([System.IO.Path]::Combine('$([System.IO.Path]::GetTempPath())','$(TargetFrameworkMoniker).AssemblyAttributes$(DefaultLanguageSourceExtension)'))</TargetFrameworkMonikerAssemblyAttributesPath>
  </PropertyGroup>
  <PropertyGroup>
    <GenerateTargetFrameworkAttribute Condition="'$(GenerateTargetFrameworkAttribute)' == '' and '$(TargetFrameworkMoniker)' != '' and '$(TargetingClr2Framework)' != 'true'">true</GenerateTargetFrameworkAttribute>
  </PropertyGroup>
  <ItemGroup Condition="'$(TargetFrameworkMonikerAssemblyAttributesFileClean)' == 'true'">
    <Clean Include="$(TargetFrameworkMonikerAssemblyAttributesPath)" />
  </ItemGroup>
  <Target Name="GenerateTargetFrameworkMonikerAttribute" BeforeTargets="BeforeCompile" DependsOnTargets="PrepareForBuild;GetReferenceAssemblyPaths" Inputs="$(MSBuildToolsPath)\Microsoft.Common.targets" Outputs="$(TargetFrameworkMonikerAssemblyAttributesPath)" Condition="'$(GenerateTargetFrameworkAttribute)' == 'true'">
    <!-- This is a file shared between projects so we have to take care to handle simultaneous writes (by ContinueOnError)
             and a race between clean from one project and build from another (by not adding to FilesWritten so it doesn't clean) -->
    <WriteLinesToFile File="$(TargetFrameworkMonikerAssemblyAttributesPath)" Lines="$(TargetFrameworkMonikerAssemblyAttributeText)" Overwrite="true" ContinueOnError="true" Condition="'@(Compile)' != '' and '$(TargetFrameworkMonikerAssemblyAttributeText)' != ''" />
    <ItemGroup Condition="'@(Compile)' != '' and '$(TargetFrameworkMonikerAssemblyAttributeText)' != ''">
      <Compile Include="$(TargetFrameworkMonikerAssemblyAttributesPath)" />
      <!-- Do not put in FileWrites: this is a file shared between projects in %temp%, and cleaning it would create a race between projects during rebuild -->
    </ItemGroup>
  </Target>
  <!--
    ============================================================
                                        GenerateAdditionalSources

    Emit any specified code fragments into a temporary source file for the compiler.
    ============================================================
    -->
  <PropertyGroup Condition="'$(AssemblyAttributesPath)' != ''">
    <GenerateAdditionalSources Condition="'$(GenerateAdditionalSources)' == ''">true</GenerateAdditionalSources>
  </PropertyGroup>
  <ItemGroup Condition="'$(AssemblyAttributesPath)' != ''">
    <Clean Include="$(AssemblyAttributesPath)" Condition="'$(AssemblyAttributesFileClean)' != 'false'" />
  </ItemGroup>
  <Target Name="GenerateAdditionalSources" BeforeTargets="BeforeCompile" DependsOnTargets="PrepareForBuild;GetReferenceAssemblyPaths" Inputs="$(MSBuildAllProjects)" Outputs="$(AssemblyAttributesPath)" Condition="'@(AssemblyAttributes)' != '' and '$(GenerateAdditionalSources)' == 'true'">
    <WriteCodeFragment AssemblyAttributes="@(AssemblyAttributes)" OutputFile="$(AssemblyAttributesPath)" Language="$(Language)">
      <Output TaskParameter="OutputFile" ItemName="Compile" />
      <Output TaskParameter="OutputFile" ItemName="FileWrites" />
    </WriteCodeFragment>
  </Target>
  <!--
    ============================================================
                                        BeforeCompile

    Redefine this target in your project in order to run tasks just before Compile.
    ============================================================
    -->
  <Target Name="BeforeCompile" />
  <!--
    ============================================================
                                        AfterCompile

    Redefine this target in your project in order to run tasks just after Compile.
    ============================================================
    -->
  <Target Name="AfterCompile" />
  <!--
    ============================================================
                                        _TimeStampBeforeCompile

    If post-build events are set to fire "OnOutputUpdated", then take before
    and after timestamps so that we can compare them.
    ============================================================
    -->
  <Target Name="_TimeStampBeforeCompile" Condition="'$(RunPostBuildEvent)'=='OnOutputUpdated' or ('$(RegisterForComInterop)'=='true' and '$(OutputType)'=='library')">
    <PropertyGroup>
      <_AssemblyTimestampBeforeCompile>%(IntermediateAssembly.ModifiedTime)</_AssemblyTimestampBeforeCompile>
    </PropertyGroup>
  </Target>
  <!--
    ============================================================
                                        _TimeStampAfterCompile

    If post-build events are set to fire "OnOutputUpdated", then take before
    and after timestamps so that we can compare them.
    ============================================================
    -->
  <Target Name="_TimeStampAfterCompile" Condition="'$(RunPostBuildEvent)'=='OnOutputUpdated' or ('$(RegisterForComInterop)'=='true' and '$(OutputType)'=='library')">
    <PropertyGroup>
      <_AssemblyTimestampAfterCompile>%(IntermediateAssembly.ModifiedTime)</_AssemblyTimestampAfterCompile>
    </PropertyGroup>
  </Target>
  <!--
    ================================================================
                                        _ComputeNonExistentFileProperty

    There are certain situations in which we want to always run the CoreCompile target (and
    thus the Csc task), even if the timestamps of the outputs appear to be up-to-date on disk.
    If we're inside the IDE during design-time, then the Csc/Vbc/Vjc task is simply being used to
    initialize the host compiler, so we always want to run it.  Also, if we're inside the IDE, and
    the host compiler is responsible for doing the compilation during an actual build, we want to let
    the host compiler determine whether the output is up-to-date, because there may be source files
    in the IDE's in-memory buffers that we don't know about.

    So, we always run the CoreCompile target if we're in the IDE, and either we're in design-time or
    we're delegating to the host compiler for the actual build.

    We compare against BuildOutOfProcess != true because we cannot assume that the build process will 
    have set BuildOutOfProcess to true or false. Therefore the default behavior should be to do the 
    legacy behavior seen before BuildingOutOfProcess was introduced if the property is not set.
    ================================================================
    -->
  <Target Name="_ComputeNonExistentFileProperty" Condition="('$(BuildingInsideVisualStudio)' == 'true') and ('$(BuildingOutOfProcess)' != 'true') and (('$(BuildingProject)' == 'false') or ('$(UseHostCompilerIfAvailable)' == 'true'))">
    <PropertyGroup>
      <NonExistentFile>__NonExistentSubDir__\__NonExistentFile__</NonExistentFile>
    </PropertyGroup>
  </Target>
  <!--
    ***********************************************************************************************
    ***********************************************************************************************
                                                                GenerateSerializationAssemblies Section
    ***********************************************************************************************
    ***********************************************************************************************
    -->
  <PropertyGroup>
    <_SGenDllName>$(TargetName).XmlSerializers.dll</_SGenDllName>
    <_SGenDllCreated>false</_SGenDllCreated>
    <_SGenGenerateSerializationAssembliesConfig>$(GenerateSerializationAssemblies)</_SGenGenerateSerializationAssembliesConfig>
    <_SGenGenerateSerializationAssembliesConfig Condition="'$(GenerateSerializationAssemblies)' == ''">Auto</_SGenGenerateSerializationAssembliesConfig>
    <_SGenGenerateSerializationAssembliesConfig Condition="'$(ConfigurationName)'=='Debug' and '$(_SGenGenerateSerializationAssembliesConfig)' == 'Auto'">Off</_SGenGenerateSerializationAssembliesConfig>
    <SGenUseProxyTypes Condition="'$(SGenUseProxyTypes)' == ''">true</SGenUseProxyTypes>
    <SGenUseKeep Condition="'$(SGenUseKeep)'==''">false</SGenUseKeep>
    <SGenShouldGenerateSerializer Condition="'$(SGenShouldGenerateSerializer)' == ''">true</SGenShouldGenerateSerializer>
  </PropertyGroup>
  <!--
    ============================================================
                                        GenerateSerializationAssemblies

    Run GenerateSerializationAssemblies on the assembly produced by this build.

        [IN]
        @(BuildAssemblyName) - The assembly generated by this build.
        @(BuildAssemblyPath) - The path where the assembly resides.
        @(ReferencePath) - The list of references used by this assembly.

        [OUT]
        @(SerializationAssembly) - The path to the serialization assembly.  Maybe we'll just append to an existing list.
    ============================================================
    -->
  <Target Name="GenerateSerializationAssemblies" Condition="'$(_SGenGenerateSerializationAssembliesConfig)' == 'On' or ('@(WebReferenceUrl)'!='' and '$(_SGenGenerateSerializationAssembliesConfig)' == 'Auto')" DependsOnTargets="AssignTargetPaths;Compile;ResolveKeySource" Inputs="$(MSBuildAllProjects);@(IntermediateAssembly)" Outputs="$(IntermediateOutputPath)$(_SGenDllName)">
    <PropertyGroup>
      <SGenMSBuildArchitecture Condition="'$(SGenMSBuildArchitecture)' == ''">$(PlatformTargetAsMSBuildArchitecture)</SGenMSBuildArchitecture>
    </PropertyGroup>
    <SGen BuildAssemblyName="$(TargetFileName)" BuildAssemblyPath="$(IntermediateOutputPath)" References="@(ReferencePath)" ShouldGenerateSerializer="$(SGenShouldGenerateSerializer)" UseProxyTypes="$(SGenUseProxyTypes)" UseKeep="$(SGenUseKeep)" KeyContainer="$(KeyContainerName)" KeyFile="$(KeyOriginatorFile)" DelaySign="$(DelaySign)" ToolPath="$(SGenToolPath)" SdkToolsPath="$(TargetFrameworkSDKToolsDirectory)" EnvironmentVariables="$(SGenEnvironment)" MSBuildArchitecture="$(SGenMSBuildArchitecture)" SerializationAssembly="$(IntermediateOutputPath)$(_SGenDllName)" Platform="$(SGenPlatformTarget)" Types="$(SGenSerializationTypes)">
      <Output TaskParameter="SerializationAssembly" ItemName="SerializationAssembly" />
    </SGen>
  </Target>
  <!--
    ***********************************************************************************************
    ***********************************************************************************************
                                                                CreateSatelliteAssemblies Section
    ***********************************************************************************************
    ***********************************************************************************************
    -->
  <!--
    ============================================================
                                        CreateSatelliteAssemblies

    Create one satellite assembly for every unique culture in the resources.
    ============================================================
    -->
  <PropertyGroup>
    <CreateSatelliteAssembliesDependsOn>
      _GenerateSatelliteAssemblyInputs;
      ComputeIntermediateSatelliteAssemblies;
      GenerateSatelliteAssemblies
    </CreateSatelliteAssembliesDependsOn>
  </PropertyGroup>
  <Target Name="CreateSatelliteAssemblies" DependsOnTargets="$(CreateSatelliteAssembliesDependsOn)" />
  <!--
    ============================================================
                                        _GenerateSatelliteAssemblyInputs

    Create the _SatelliteAssemblyResourceInputs list of inputs to the CreateSatelliteAssemblies target.
    ============================================================
    -->
  <Target Name="_GenerateSatelliteAssemblyInputs">
    <Warning Condition="'@(ManifestResourceWithCulture)'!='' and '%(ManifestResourceWithCulture.EmittedForCompatibilityOnly)'==''" Code="MSB9006" Text="ManifestResourceWithCulture item type is deprecated. Emit EmbeddedResource items instead, with metadata WithCulture='true', Type='Resx', and optional LogicalName." />
    <Warning Condition="'@(ManifestNonResxWithCultureOnDisk)'!='' and '%(ManifestNonResxWithCultureOnDisk.EmittedForCompatibilityOnly)'==''" Code="MSB9007" Text="ManifestNonResxWithCultureOnDisk item type is deprecated. Emit EmbeddedResource items instead, with metadata WithCulture='true', Type='Non-Resx', and optional LogicalName." />
    <ItemGroup>
      <!-- _SatelliteAssemblyResourceInputs is the list of TLDA inputs that should trigger CreateSatelliteAssemblies, so listed as inputs to that target -->
      <_SatelliteAssemblyResourceInputs Include="@(EmbeddedResource->'%(OutputResource)')" Condition="'%(EmbeddedResource.WithCulture)' == 'true' and '%(EmbeddedResource.Type)' == 'Resx'" />
      <_SatelliteAssemblyResourceInputs Include="@(EmbeddedResource)" Condition="'%(EmbeddedResource.WithCulture)' == 'true' and '%(EmbeddedResource.Type)' == 'Non-Resx'" />
      <!-- CONSUMED FOR COMPATIBILITY REASONS ONLY. EMIT EMBEDDEDRESOURCE INSTEAD -->
      <_SatelliteAssemblyResourceInputs Include="@(ManifestResourceWithCulture)" Condition="'%(ManifestResourceWithCulture.EmittedForCompatibilityOnly)'==''">
        <Type>Resx</Type>
        <WithCulture>true</WithCulture>
      </_SatelliteAssemblyResourceInputs>
      <_SatelliteAssemblyResourceInputs Include="@(ManifestNonResxWithCultureOnDisk)" Condition="'%(ManifestNonResxWithCultureOnDisk.EmittedForCompatibilityOnly)'==''">
        <Type>Non-Resx</Type>
        <WithCulture>true</WithCulture>
      </_SatelliteAssemblyResourceInputs>
    </ItemGroup>
  </Target>
  <!--
    ============================================================
                                        GenerateSatelliteAssemblies

    Actually run al.exe to create the satellite assemblies.
    ============================================================
    -->
  <Target Name="GenerateSatelliteAssemblies" Inputs="$(MSBuildAllProjects);@(_SatelliteAssemblyResourceInputs);$(IntermediateOutputPath)$(TargetName)$(TargetExt)" Outputs="$(IntermediateOutputPath)%(Culture)\$(TargetName).resources.dll" Condition="'@(_SatelliteAssemblyResourceInputs)' != ''">
    <MakeDir Directories="@(EmbeddedResource->'$(IntermediateOutputPath)%(Culture)')" />
    <AL AlgorithmId="$(Satellite_AlgorithmId)" BaseAddress="$(Satellite_BaseAddress)" CompanyName="$(Satellite_CompanyName)" Configuration="$(Satellite_Configuration)" Copyright="$(Satellite_Copyright)" Culture="%(Culture)" DelaySign="$(DelaySign)" Description="$(Satellite_Description)" EmbedResources="@(_SatelliteAssemblyResourceInputs)" EnvironmentVariables="$(AlEnvironment)" EvidenceFile="$(Satellite_EvidenceFile)" FileVersion="$(Satellite_FileVersion)" Flags="$(Satellite_Flags)" GenerateFullPaths="$(Satellite_GenerateFullPaths)" KeyContainer="$(KeyContainerName)" KeyFile="$(KeyOriginatorFile)" LinkResources="@(Satellite_LinkResource)" MainEntryPoint="$(Satellite_MainEntryPoint)" OutputAssembly="$(IntermediateOutputPath)%(Culture)\$(TargetName).resources.dll" Platform="$(PlatformTarget)" ProductName="$(Satellite_ProductName)" ProductVersion="$(Satellite_ProductVersion)" ResponseFiles="@(AlResponseFile)" SourceModules="@(Satellite_SourceModule)" TargetType="$(Satellite_TargetType)" TemplateFile="$(IntermediateOutputPath)$(TargetName)$(TargetExt)" Title="$(Satellite_Title)" ToolPath="$(AlToolPath)" ToolExe="$(AlToolExe)" SdkToolsPath="$(TargetFrameworkSDKToolsDirectory)" Trademark="$(Satellite_Trademark)" Version="$(Satellite_Version)" Win32Icon="$(Satellite_Win32Icon)" Win32Resource="$(Satellite_Win32Resource)">
      <Output TaskParameter="OutputAssembly" ItemName="FileWrites" />
    </AL>
  </Target>
  <!--
    ============================================================
                                        ComputeIntermediateSatelliteAssemblies

    Compute the paths to the intermediate satellite assemblies,
    with culture attributes so we can copy them to the right place.
    ============================================================
    -->
  <PropertyGroup>
    <ComputeIntermediateSatelliteAssembliesDependsOn>
      CreateManifestResourceNames
    </ComputeIntermediateSatelliteAssembliesDependsOn>
  </PropertyGroup>
  <Target Name="ComputeIntermediateSatelliteAssemblies" Condition="@(EmbeddedResource->'%(WithCulture)') != ''" DependsOnTargets="$(ComputeIntermediateSatelliteAssembliesDependsOn)">
    <ItemGroup>
      <IntermediateSatelliteAssembliesWithTargetPath Include="$(IntermediateOutputPath)%(EmbeddedResource.Culture)\$(TargetName).resources.dll" Condition="'%(EmbeddedResource.Culture)' != ''">
        <Culture>%(EmbeddedResource.Culture)</Culture>
        <TargetPath>%(EmbeddedResource.Culture)\$(TargetName).resources.dll</TargetPath>
      </IntermediateSatelliteAssembliesWithTargetPath>
    </ItemGroup>
  </Target>
  <!--
    ***********************************************************************************************
    ***********************************************************************************************
                                                                SetWin32ManifestProperties Section
    ***********************************************************************************************
    ***********************************************************************************************
    -->
  <PropertyGroup>
    <EmbeddedWin32Manifest>$(Win32Manifest)</EmbeddedWin32Manifest>
  </PropertyGroup>
  <!--
    ============================================================
                                        SetWin32ManifestProperties

    Set Win32Manifest and EmbeddedManifest properties to be used later in the build.
    ============================================================
    -->
  <Target Name="SetWin32ManifestProperties" Condition="'$(Win32Manifest)'==''" DependsOnTargets="ResolveComReferences;ResolveNativeReferences;_SetExternalWin32ManifestProperties;_SetEmbeddedWin32ManifestProperties" />
  <Target Name="_SetExternalWin32ManifestProperties" Condition="'$(GenerateClickOnceManifests)'=='true' or '@(NativeReference)'!='' or '@(ResolvedIsolatedComModules)'!=''">
    <PropertyGroup>
      <!-- set _DeploymentBaseManifest property to the value of $(ApplicationManifest) if the property is set,
                 but use _DeploymentBaseManifestWithTargetPath item-group if the property is not set to support backwards
                 compat with earlier MSBuild versions when manifest files were determined by the item-group. If the newer
                 property is set though, prefer that one be used to specify the manifest. -->
      <_DeploymentBaseManifest>$(ApplicationManifest)</_DeploymentBaseManifest>
      <_DeploymentBaseManifest Condition="'$(_DeploymentBaseManifest)'==''">@(_DeploymentBaseManifestWithTargetPath)</_DeploymentBaseManifest>
      <!-- when using external manifests, always set the NoWin32Manifest property to
                 true if there is no value set in the incoming project file so the
                 compilers that support manifest embedding know not to add
                 a manifest to their built assemblies -->
      <NoWin32Manifest Condition="'$(NoWin32Manifest)'==''">true</NoWin32Manifest>
    </PropertyGroup>
  </Target>
  <Target Name="_SetEmbeddedWin32ManifestProperties" Condition="'$(GenerateClickOnceManifests)'!='true' and '@(NativeReference)'=='' and '@(ResolvedIsolatedComModules)'==''">
    <PropertyGroup>
      <EmbeddedWin32Manifest>$(ApplicationManifest)</EmbeddedWin32Manifest>
      <Win32Manifest>$(ApplicationManifest)</Win32Manifest>
    </PropertyGroup>
    <GetFrameworkPath Condition="'$(ApplicationManifest)'=='' and '$(NoWin32Manifest)'!='true'">
      <Output TaskParameter="FrameworkVersion40Path" PropertyName="_FrameworkVersion40Path" />
    </GetFrameworkPath>
    <PropertyGroup>
      <EmbeddedWin32Manifest Condition="'$(ApplicationManifest)'=='' and '$(NoWin32Manifest)'!='true' and Exists('$(_FrameworkVersion40Path)\default.win32manifest')">$(_FrameworkVersion40Path)\default.win32manifest</EmbeddedWin32Manifest>
    </PropertyGroup>
  </Target>
  <!--
    ***********************************************************************************************
    ***********************************************************************************************
                                                                GenerateManifests Section
    ***********************************************************************************************
    ***********************************************************************************************
    -->
  <!--
    ============================================================
                                        GenerateManifests

    Generates ClickOnce application and deployment manifests or a native manifest.
    ============================================================
    -->
  <PropertyGroup>
    <GenerateManifestsDependsOn>
      SetWin32ManifestProperties;
      GenerateApplicationManifest;
      GenerateDeploymentManifest
    </GenerateManifestsDependsOn>
  </PropertyGroup>
  <!--
    ============================================================
                  _GenerateResolvedDeploymentManifestEntryPoint

    Use the ResolveManifestFiles to generate the GenerateResolvedDeploymentManifestEntryPoint

    ============================================================
    -->
  <Target Name="_GenerateResolvedDeploymentManifestEntryPoint">
    <ItemGroup>
      <_DeploymentPublishFileOfTypeManifestEntryPoint Include="@(PublishFile)" Condition="'%(FileType)'=='ManifestEntryPoint'" />
    </ItemGroup>
    <ResolveManifestFiles TargetFrameworkVersion="$(TargetFrameworkVersion)" SigningManifests="$(SignManifests)" DeploymentManifestEntryPoint="@(ApplicationManifest)" PublishFiles="@(_DeploymentPublishFileOfTypeManifestEntryPoint)">
      <Output TaskParameter="OutputDeploymentManifestEntryPoint" ItemName="_DeploymentResolvedDeploymentManifestEntryPoint" />
    </ResolveManifestFiles>
  </Target>
  <Target Name="GenerateManifests" Condition="'$(GenerateClickOnceManifests)'=='true' or '@(NativeReference)'!='' or '@(ResolvedIsolatedComModules)'!='' or '$(GenerateAppxManifest)' == 'true'" DependsOnTargets="$(GenerateManifestsDependsOn)" />
  <!--
    ============================================================
                                        GenerateApplicationManifest

    Generates a ClickOnce or native application manifest.
    An application manifest specifies declarative application identity, dependency and security information.

        [IN]
        $(_DeploymentBaseManifest) - The base app.manifest from project.
        @(ResolvedIsolatedComModules) - The list of COM references to be isolated as reg-free COM dependencies for native assembly loader.
        @(_DeploymentManifestFiles) - The list of loose files (content, pdb, xml, etc.) for ClickOnce.
        @(_DeploymentManifestDependencies) - The list of application dependencies (typically this is the set of assembly dependencies in bin\) for ClickOnce.
        @(AppConfigWithTargetPath) - App config file, if present.
        $(_DeploymentManifestType) - Type of manifest to be generated, either "Native" or "ClickOnce".

        [OUT]
        @(ApplicationManifest) - Generated native or ClickOnce application manifest, i.e. WindowsApplication1.exe.manifest
    ============================================================
    -->
  <Target Name="GenerateApplicationManifest" DependsOnTargets="&#xD;&#xA;            _DeploymentComputeNativeManifestInfo;&#xD;&#xA;            _DeploymentComputeClickOnceManifestInfo;&#xD;&#xA;            ResolveComReferences;&#xD;&#xA;            ResolveNativeReferences;&#xD;&#xA;            _GenerateResolvedDeploymentManifestEntryPoint" Inputs="&#xD;&#xA;            $(MSBuildAllProjects);&#xD;&#xA;            @(AppConfigWithTargetPath);&#xD;&#xA;            $(_DeploymentBaseManifest);&#xD;&#xA;            @(ResolvedIsolatedComModules);&#xD;&#xA;            @(_DeploymentManifestDependencies);&#xD;&#xA;            @(_DeploymentResolvedManifestEntryPoint);&#xD;&#xA;            @(_DeploymentManifestFiles)" Outputs="@(ApplicationManifest)">
    <RequiresFramework35SP1Assembly ReferencedAssemblies="@(Reference)" ErrorReportUrl="$(_DeploymentFormattedErrorReportUrl)" TargetFrameworkVersion="$(TargetFrameworkVersion)" CreateDesktopShortcut="$(CreateDesktopShortcut)" SigningManifests="$(SignManifests)" Assemblies="@(_DeploymentManifestDependencies)" DeploymentManifestEntryPoint="@(_DeploymentResolvedDeploymentManifestEntryPoint)" EntryPoint="@(_DeploymentResolvedManifestEntryPoint)" Files="@(_DeploymentManifestFiles)" SuiteName="$(SuiteName)">
      <Output TaskParameter="RequiresMinimumFramework35SP1" PropertyName="_DeploymentRequiresMinimumFramework35SP1" />
    </RequiresFramework35SP1Assembly>
    <GenerateApplicationManifest AssemblyName="$(_DeploymentApplicationManifestIdentity)" AssemblyVersion="$(_DeploymentManifestVersion)" ConfigFile="@(AppConfigWithTargetPath)" ClrVersion="$(ClrVersion)" Dependencies="@(_DeploymentManifestDependencies)" Description="$(Description)" EntryPoint="@(_DeploymentResolvedManifestEntryPoint)" ErrorReportUrl="$(_DeploymentFormattedErrorReportUrl)" FileAssociations="@(FileAssociation)" Files="@(_DeploymentManifestFiles)" HostInBrowser="$(HostInBrowser)" IconFile="@(_DeploymentManifestIconFile)" InputManifest="$(_DeploymentBaseManifest)" IsolatedComReferences="@(ResolvedIsolatedComModules)" ManifestType="$(_DeploymentManifestType)" MaxTargetPath="$(MaxTargetPath)" OutputManifest="@(ApplicationManifest)" OSVersion="$(OSVersion)" Platform="$(PlatformTarget)" Product="$(ProductName)" Publisher="$(PublisherName)" RequiresMinimumFramework35SP1="$(_DeploymentRequiresMinimumFramework35SP1)" SuiteName="$(SuiteName)" SupportUrl="$(_DeploymentFormattedSupportUrl)" TargetCulture="$(TargetCulture)" TargetFrameworkSubset="$(TargetFrameworkSubset)" TargetFrameworkProfile="$(TargetFrameworkProfile)" TargetFrameworkVersion="$(TargetFrameworkVersion)" TrustInfoFile="@(_DeploymentIntermediateTrustInfoFile)" UseApplicationTrust="$(UseApplicationTrust)">
      <Output TaskParameter="OutputManifest" ItemName="FileWrites" />
    </GenerateApplicationManifest>
    <PropertyGroup>
      <_DeploymentCopyApplicationManifest>true</_DeploymentCopyApplicationManifest>
    </PropertyGroup>
  </Target>
  <!--
    ============================================================
                                        _DeploymentComputeNativeManifestInfo

    Compute info for native manifest generation
    ============================================================
    -->
  <Target Name="_DeploymentComputeNativeManifestInfo" Condition="'$(GenerateClickOnceManifests)'!='true'">
    <!-- Create list of items for manifest generation -->
    <ResolveManifestFiles NativeAssemblies="@(NativeReferenceFile);@(_DeploymentNativePrerequisite)">
      <Output TaskParameter="OutputAssemblies" ItemName="_DeploymentManifestDependencies" />
    </ResolveManifestFiles>
    <PropertyGroup>
      <_DeploymentManifestType>Native</_DeploymentManifestType>
    </PropertyGroup>
    <!-- Obtain manifest version from the built assembly -->
    <GetAssemblyIdentity AssemblyFiles="@(IntermediateAssembly)">
      <Output TaskParameter="Assemblies" ItemName="_IntermediateAssemblyIdentity" />
    </GetAssemblyIdentity>
    <PropertyGroup>
      <_DeploymentManifestVersion>@(_IntermediateAssemblyIdentity->'%(Version)')</_DeploymentManifestVersion>
    </PropertyGroup>
  </Target>
  <!--
    ============================================================
                                        _DeploymentComputeClickOnceManifestInfo

    Compute info for  ClickOnce manifest generation
    ============================================================
    -->
  <Target Name="_DeploymentComputeClickOnceManifestInfo" Condition="'$(GenerateClickOnceManifests)'=='true'" DependsOnTargets="&#xD;&#xA;            CleanPublishFolder;&#xD;&#xA;            _DeploymentGenerateTrustInfo">
    <!-- Grab just the serialization assemblies for a referenced assembly.  There may also be a symbols file in ReferenceRelatedPaths -->
    <ItemGroup>
      <_SGenDllsRelatedToCurrentDll Include="@(_ReferenceSerializationAssemblyPaths->'%(FullPath)')" Condition="'%(Extension)' == '.dll'" />
      <_SGenDllsRelatedToCurrentDll Include="@(SerializationAssembly->'%(FullPath)')" Condition="'%(Extension)' == '.dll'" />
    </ItemGroup>
    <!-- Flag primary dependencies-certain warnings emitted during application manifest generation apply only to them. -->
    <ItemGroup>
      <_DeploymentReferencePaths Include="@(ReferencePath)">
        <IsPrimary>true</IsPrimary>
      </_DeploymentReferencePaths>
    </ItemGroup>
    <!-- Copy the application executable from Obj folder to app.publish folder.
    This is being done to avoid Windows Forms designer memory issues that can arise while operating directly on files located in Obj directory. -->
    <Copy SourceFiles="@(_DeploymentManifestEntryPoint)" DestinationFolder="$(PublishDir)">
      <Output TaskParameter="DestinationFiles" ItemName="_DeploymentClickOnceApplicationExecutable" />
    </Copy>
    <!-- Sign the application executable located in app.publish folder.  Signing this file is done to comply with SmartScreen. -->
    <SignFile CertificateThumbprint="$(_DeploymentResolvedManifestCertificateThumbprint)" TimestampUrl="$(ManifestTimestampUrl)" SigningTarget="@(_DeploymentClickOnceApplicationExecutable)" Condition="'$(_DeploymentResolvedManifestCertificateThumbprint)'!='' and '$(_DeploymentSignClickOnceManifests)'=='true' and '$(TargetExt)' == '.exe'" />
    <!-- Create list of items for manifest generation -->
    <ResolveManifestFiles TargetFrameworkVersion="$(TargetFrameworkVersion)" SigningManifests="$(SignManifests)" EntryPoint="@(_DeploymentClickOnceApplicationExecutable)" ExtraFiles="@(_DebugSymbolsIntermediatePath);$(IntermediateOutputPath)$(TargetName).xml;@(_ReferenceRelatedPaths)" Files="@(ContentWithTargetPath);@(_DeploymentManifestIconFile);@(AppConfigWithTargetPath)" ManagedAssemblies="@(_DeploymentReferencePaths);@(ReferenceDependencyPaths);@(_SGenDllsRelatedToCurrentDll);@(SerializationAssembly)" NativeAssemblies="@(NativeReferenceFile);@(_DeploymentNativePrerequisite)" PublishFiles="@(PublishFile)" SatelliteAssemblies="@(IntermediateSatelliteAssembliesWithTargetPath);@(ReferenceSatellitePaths)" TargetCulture="$(TargetCulture)">
      <Output TaskParameter="OutputAssemblies" ItemName="_DeploymentManifestDependencies" />
      <Output TaskParameter="OutputFiles" ItemName="_DeploymentManifestFiles" />
      <Output TaskParameter="OutputEntryPoint" ItemName="_DeploymentResolvedManifestEntryPoint" />
    </ResolveManifestFiles>
    <PropertyGroup>
      <_DeploymentManifestType>ClickOnce</_DeploymentManifestType>
    </PropertyGroup>
    <!-- Obtain manifest version from ApplicationVersion and ApplicationRevision properties -->
    <FormatVersion Version="$(ApplicationVersion)" Revision="$(ApplicationRevision)">
      <Output TaskParameter="OutputVersion" PropertyName="_DeploymentManifestVersion" />
    </FormatVersion>
    <FormatUrl InputUrl="$(_DeploymentUrl)">
      <Output TaskParameter="OutputUrl" PropertyName="_DeploymentFormattedDeploymentUrl" />
    </FormatUrl>
    <FormatUrl InputUrl="$(SupportUrl)">
      <Output TaskParameter="OutputUrl" PropertyName="_DeploymentFormattedSupportUrl" />
    </FormatUrl>
    <FormatUrl InputUrl="$(ErrorReportUrl)">
      <Output TaskParameter="OutputUrl" PropertyName="_DeploymentFormattedErrorReportUrl" />
    </FormatUrl>
  </Target>
  <!--
    ============================================================
                                        _DeploymentGenerateTrustInfo

    Generates the application permission set for inclusion in the generated ClickOnce application manifest.
    ============================================================
    -->
  <Target Name="_DeploymentGenerateTrustInfo" Condition="'$(TargetZone)'!=''" Inputs="&#xD;&#xA;            $(MSBuildAllProjects);&#xD;&#xA;            $(_DeploymentBaseManifest);&#xD;&#xA;            " Outputs="@(_DeploymentIntermediateTrustInfoFile)">
    <GenerateTrustInfo BaseManifest="$(_DeploymentBaseManifest)" ApplicationDependencies="@(ReferencePath);@(ReferenceDependencyPaths)" ExcludedPermissions="$(ExcludedPermissions)" TargetFrameworkMoniker="$(TargetFrameworkMoniker)" TargetZone="$(TargetZone)" TrustInfoFile="@(_DeploymentIntermediateTrustInfoFile)">
      <Output TaskParameter="TrustInfoFile" ItemName="FileWrites" />
    </GenerateTrustInfo>
  </Target>
  <!--
    ============================================================
                                        GenerateDeploymentManifest

    Generates a ClickOnce deployment manifest.
    An deployment manifest specifies declarative application identity and application update information.
    ============================================================
    -->
  <Target Name="GenerateDeploymentManifest" DependsOnTargets="GenerateApplicationManifest" Inputs="&#xD;&#xA;            $(MSBuildAllProjects);&#xD;&#xA;            @(ApplicationManifest)&#xD;&#xA;            " Outputs="@(DeployManifest)">
    <GenerateDeploymentManifest AssemblyName="$(_DeploymentDeployManifestIdentity)" AssemblyVersion="$(_DeploymentManifestVersion)" CreateDesktopShortcut="$(CreateDesktopShortcut)" DeploymentUrl="$(_DeploymentFormattedDeploymentUrl)" Description="$(Description)" DisallowUrlActivation="$(DisallowUrlActivation)" EntryPoint="@(_DeploymentResolvedDeploymentManifestEntryPoint)" ErrorReportUrl="$(_DeploymentFormattedErrorReportUrl)" Install="$(Install)" MapFileExtensions="$(MapFileExtensions)" MaxTargetPath="$(MaxTargetPath)" MinimumRequiredVersion="$(_DeploymentBuiltMinimumRequiredVersion)" OutputManifest="@(DeployManifest)" Platform="$(PlatformTarget)" Product="$(ProductName)" Publisher="$(PublisherName)" SuiteName="$(SuiteName)" SupportUrl="$(_DeploymentFormattedSupportUrl)" TargetCulture="$(TargetCulture)" TargetFrameworkVersion="$(TargetFrameworkVersion)" TargetFrameworkMoniker="$(TargetFrameworkMoniker)" TrustUrlParameters="$(TrustUrlParameters)" UpdateEnabled="$(UpdateEnabled)" UpdateInterval="$(_DeploymentBuiltUpdateInterval)" UpdateMode="$(UpdateMode)" UpdateUnit="$(_DeploymentBuiltUpdateIntervalUnits)" Condition="'$(GenerateClickOnceManifests)'=='true'">
      <Output TaskParameter="OutputManifest" ItemName="FileWrites" />
    </GenerateDeploymentManifest>
  </Target>
  <!--
    ***********************************************************************************************
    ***********************************************************************************************
                                                                PrepareForRun Section
    ***********************************************************************************************
    ***********************************************************************************************
    -->
  <PropertyGroup>
    <SkipCopyUnchangedFiles Condition="'$(SkipCopyUnchangedFiles)' == ''">true</SkipCopyUnchangedFiles>
    <UseCommonOutputDirectory Condition="'$(UseCommonOutputDirectory)' == ''">false</UseCommonOutputDirectory>
  </PropertyGroup>
  <!--
    ============================================================
                                        PrepareForRun

    Copy the build outputs to the final directory if they have changed.
    ============================================================
    -->
  <PropertyGroup>
    <PrepareForRunDependsOn>
      CopyFilesToOutputDirectory
    </PrepareForRunDependsOn>
  </PropertyGroup>
  <Target Name="PrepareForRun" DependsOnTargets="$(PrepareForRunDependsOn)" />
  <!--
    ============================================================
                                        CopyFilesToOutputDirectory

    Copy all build outputs, satellites and other necessary files to the final directory.
    ============================================================
    -->
  <PropertyGroup>
    <!-- By default we're not using Hard Links to copy to the output directory, and never when building in VS -->
    <CreateHardLinksForCopyAdditionalFilesIfPossible Condition="'$(BuildingInsideVisualStudio)' == 'true' or '$(CreateHardLinksForCopyAdditionalFilesIfPossible)' == ''">false</CreateHardLinksForCopyAdditionalFilesIfPossible>
  </PropertyGroup>
  <Target Name="CopyFilesToOutputDirectory" DependsOnTargets="&#xD;&#xA;            ComputeIntermediateSatelliteAssemblies;&#xD;&#xA;            _CopyFilesMarkedCopyLocal;&#xD;&#xA;            _CopySourceItemsToOutputDirectory;&#xD;&#xA;            _CopyAppConfigFile;&#xD;&#xA;            _CopyManifestFiles;&#xD;&#xA;            _CheckForCompileOutputs;&#xD;&#xA;            _SGenCheckForOutputs">
    <PropertyGroup>
      <!-- By default we're not using Hard Links to copy to the output directory, and never when building in VS -->
      <CreateHardLinksForCopyFilesToOutputDirectoryIfPossible Condition="'$(BuildingInsideVisualStudio)' == 'true' or '$(CreateHardLinksForCopyFilesToOutputDirectoryIfPossible)' == ''">false</CreateHardLinksForCopyFilesToOutputDirectoryIfPossible>
    </PropertyGroup>
    <PropertyGroup>
      <CopyBuildOutputToOutputDirectory Condition="'$(CopyBuildOutputToOutputDirectory)'==''">true</CopyBuildOutputToOutputDirectory>
      <CopyOutputSymbolsToOutputDirectory Condition="'$(CopyOutputSymbolsToOutputDirectory)'==''">true</CopyOutputSymbolsToOutputDirectory>
    </PropertyGroup>
    <!-- Copy the build product (.dll or .exe). -->
    <Copy SourceFiles="@(IntermediateAssembly)" DestinationFolder="$(OutDir)" SkipUnchangedFiles="$(SkipCopyUnchangedFiles)" OverwriteReadOnlyFiles="$(OverwriteReadOnlyFiles)" Retries="$(CopyRetryCount)" RetryDelayMilliseconds="$(CopyRetryDelayMilliseconds)" UseHardlinksIfPossible="$(CreateHardLinksForCopyFilesToOutputDirectoryIfPossible)" Condition="'$(CopyBuildOutputToOutputDirectory)' == 'true' and '$(SkipCopyBuildProduct)' != 'true'">
      <Output TaskParameter="DestinationFiles" ItemName="MainAssembly" />
      <Output TaskParameter="DestinationFiles" ItemName="FileWrites" />
    </Copy>
    <Message Importance="High" Text="$(MSBuildProjectName) -&gt; @(MainAssembly->'%(FullPath)')" Condition="'$(CopyBuildOutputToOutputDirectory)' == 'true' and '$(SkipCopyBuildProduct)'!='true'" />
    <!-- Copy the additional modules. -->
    <Copy SourceFiles="@(AddModules)" DestinationFolder="$(OutDir)" SkipUnchangedFiles="$(SkipCopyUnchangedFiles)" OverwriteReadOnlyFiles="$(OverwriteReadOnlyFiles)" Retries="$(CopyRetryCount)" RetryDelayMilliseconds="$(CopyRetryDelayMilliseconds)" UseHardlinksIfPossible="$(CreateHardLinksForCopyAdditionalFilesIfPossible)" Condition="'@(AddModules)' != ''">
      <Output TaskParameter="DestinationFiles" ItemName="FileWrites" />
    </Copy>
    <!-- Copy the serialization assembly if it exists. -->
    <Copy SourceFiles="$(IntermediateOutputPath)$(_SGenDllName)" DestinationFiles="$(OutDir)$(_SGenDllName)" SkipUnchangedFiles="$(SkipCopyUnchangedFiles)" OverwriteReadOnlyFiles="$(OverwriteReadOnlyFiles)" Retries="$(CopyRetryCount)" RetryDelayMilliseconds="$(CopyRetryDelayMilliseconds)" UseHardlinksIfPossible="$(CreateHardLinksForCopyFilesToOutputDirectoryIfPossible)" Condition="'$(_SGenDllCreated)'=='true'">
      <Output TaskParameter="DestinationFiles" ItemName="FileWrites" />
    </Copy>
    <!-- Copy the debug information file (.pdb), if any -->
    <Copy SourceFiles="@(_DebugSymbolsIntermediatePath)" DestinationFiles="@(_DebugSymbolsOutputPath)" SkipUnchangedFiles="$(SkipCopyUnchangedFiles)" OverwriteReadOnlyFiles="$(OverwriteReadOnlyFiles)" Retries="$(CopyRetryCount)" RetryDelayMilliseconds="$(CopyRetryDelayMilliseconds)" UseHardlinksIfPossible="$(CreateHardLinksForCopyFilesToOutputDirectoryIfPossible)" Condition="'$(_DebugSymbolsProduced)'=='true' and '$(SkipCopyingSymbolsToOutputDirectory)' != 'true' and '$(CopyOutputSymbolsToOutputDirectory)'=='true'">
      <Output TaskParameter="DestinationFiles" ItemName="FileWrites" />
    </Copy>
    <!-- Copy the resulting XML documentation file, if any. -->
    <Copy SourceFiles="@(DocFileItem)" DestinationFiles="@(FinalDocFile)" SkipUnchangedFiles="$(SkipCopyUnchangedFiles)" OverwriteReadOnlyFiles="$(OverwriteReadOnlyFiles)" Retries="$(CopyRetryCount)" RetryDelayMilliseconds="$(CopyRetryDelayMilliseconds)" UseHardlinksIfPossible="$(CreateHardLinksForCopyFilesToOutputDirectoryIfPossible)" Condition="'$(_DocumentationFileProduced)'=='true'">
      <Output TaskParameter="DestinationFiles" ItemName="FileWrites" />
    </Copy>
    <!-- Copy satellite assemblies. -->
    <Copy SourceFiles="@(IntermediateSatelliteAssembliesWithTargetPath)" DestinationFiles="@(IntermediateSatelliteAssembliesWithTargetPath->'$(OutDir)%(Culture)\$(TargetName).resources.dll')" SkipUnchangedFiles="$(SkipCopyUnchangedFiles)" OverwriteReadOnlyFiles="$(OverwriteReadOnlyFiles)" Retries="$(CopyRetryCount)" RetryDelayMilliseconds="$(CopyRetryDelayMilliseconds)" UseHardlinksIfPossible="$(CreateHardLinksForCopyFilesToOutputDirectoryIfPossible)" Condition="'@(IntermediateSatelliteAssembliesWithTargetPath)' != ''">
      <Output TaskParameter="DestinationFiles" ItemName="FileWrites" />
    </Copy>
    <!--
        Copy COM reference wrappers, isolated COM references, COM references included by
        native (manifest) references, native (manifest) reference files themselves.
        -->
    <Copy SourceFiles="@(ReferenceComWrappersToCopyLocal); @(ResolvedIsolatedComModules); @(_DeploymentLooseManifestFile); @(NativeReferenceFile)" DestinationFolder="$(OutDir)" SkipUnchangedFiles="$(SkipCopyUnchangedFiles)" OverwriteReadOnlyFiles="$(OverwriteReadOnlyFiles)" Retries="$(CopyRetryCount)" RetryDelayMilliseconds="$(CopyRetryDelayMilliseconds)" UseHardlinksIfPossible="$(CreateHardLinksForCopyAdditionalFilesIfPossible)" Condition="'@(ReferenceComWrappersToCopyLocal)' != '' or '@(ResolvedIsolatedComModules)' != '' or '@(_DeploymentLooseManifestFile)' != '' or '@(NativeReferenceFile)' != '' ">
      <Output TaskParameter="DestinationFiles" ItemName="FileWritesShareable" />
    </Copy>
    <!-- Copy the build product of WinMDExp. -->
    <Copy SourceFiles="@(WinMDExpArtifacts)" DestinationFolder="$(OutDir)" SkipUnchangedFiles="$(SkipCopyUnchangedFiles)" OverwriteReadOnlyFiles="$(OverwriteReadOnlyFiles)" Retries="$(CopyRetryCount)" RetryDelayMilliseconds="$(CopyRetryDelayMilliseconds)" UseHardlinksIfPossible="$(CreateHardLinksForCopyFilesToOutputDirectoryIfPossible)" Condition="'$(SkipCopyWinMDArtifact)' != 'true' and '@(WinMDExpArtifacts)' != ''">
      <Output TaskParameter="DestinationFiles" ItemName="FileWrites" />
      <Output TaskParameter="DestinationFiles" ItemName="FinalWinmdExpArtifacts" />
    </Copy>
    <Message Importance="High" Text="$(MSBuildProjectName) -&gt; $([System.IO.Path]::GetFullPath('$(_WindowsMetadataOutputPath)'))" Condition="'$(SkipCopyWinMDArtifact)' != 'true' and '$(_WindowsMetadataOutputPath)' != ''" />
  </Target>
  <!--
    ============================================================
                                        _CopyFilesMarkedCopyLocal

    Copy references that are marked as "CopyLocal" and their dependencies, including .pdbs, .xmls and satellites.
    ============================================================
    -->
  <Target Name="_CopyFilesMarkedCopyLocal" Condition="'@(ReferenceCopyLocalPaths)' != ''">
    <PropertyGroup>
      <!-- By default we're not using Hard Links to copy to the output directory, and never when building in VS -->
      <CreateHardLinksForCopyLocalIfPossible Condition="'$(BuildingInsideVisualStudio)' == 'true' or '$(CreateHardLinksForCopyLocalIfPossible)' == ''">false</CreateHardLinksForCopyLocalIfPossible>
    </PropertyGroup>
    <Copy SourceFiles="@(ReferenceCopyLocalPaths)" DestinationFiles="@(ReferenceCopyLocalPaths->'$(OutDir)%(DestinationSubDirectory)%(Filename)%(Extension)')" SkipUnchangedFiles="$(SkipCopyUnchangedFiles)" OverwriteReadOnlyFiles="$(OverwriteReadOnlyFiles)" Retries="$(CopyRetryCount)" RetryDelayMilliseconds="$(CopyRetryDelayMilliseconds)" UseHardlinksIfPossible="$(CreateHardLinksForCopyLocalIfPossible)" Condition="'$(UseCommonOutputDirectory)' != 'true'">
      <Output TaskParameter="DestinationFiles" ItemName="FileWritesShareable" />
    </Copy>
  </Target>
  <!--
    ============================================================
                                        _CopySourceItemsToOutputDirectory
    ============================================================
    -->
  <Target Name="_CopySourceItemsToOutputDirectory" DependsOnTargets="&#xD;&#xA;            GetCopyToOutputDirectoryItems;&#xD;&#xA;            _CopyOutOfDateSourceItemsToOutputDirectory;&#xD;&#xA;            _CopyOutOfDateSourceItemsToOutputDirectoryAlways" />
  <!--
    ============================================================
                                        GetCopyToOutputDirectoryItems

    Get all project items that may need to be transferred to the output directory.
    This includes baggage items from transitively referenced projects. It would appear
    that this target computes full transitive closure of content items for all referenced
    projects; however that is not the case. It only collects the content items from its
    immediate children and not children of children. The reason this happens is that
    the ProjectReferenceWithConfiguration list that is consumed by _SplitProjectReferencesByFileExistence
    is only populated in the current project and is empty in the children. The empty list
    causes _MSBuildProjectReferenceExistent to be empty and terminates the recursion.
    ============================================================
    -->
  <PropertyGroup>
    <GetCopyToOutputDirectoryItemsDependsOn>
      AssignTargetPaths;
      _SplitProjectReferencesByFileExistence
    </GetCopyToOutputDirectoryItemsDependsOn>
  </PropertyGroup>
  <Target Name="GetCopyToOutputDirectoryItems" Returns="@(AllItemsFullPathWithTargetPath)" KeepDuplicateOutputs=" '$(MSBuildDisableGetCopyToOutputDirectoryItemsOptimization)' == '' " DependsOnTargets="$(GetCopyToOutputDirectoryItemsDependsOn)">
    <!-- In the general case, clients need very little of the metadata which is generated by invoking this target on this project and its children.  For those 
         cases, we can immediately discard the unwanted metadata, reducing memory usage, particularly in very large and interconnected systems of projects.
         However, if some client does require the original functionality, it is sufficient to set MSBuildDisableGetCopyToOutputDirectoryItemsOptimization to
         a non-empty value and the original behavior will be restored. -->
    <PropertyGroup Condition=" '$(MSBuildDisableGetCopyToOutputDirectoryItemsOptimization)' == '' ">
      <_GCTODIKeepDuplicates>false</_GCTODIKeepDuplicates>
      <_GCTODIKeepMetadata>CopyToOutputDirectory;TargetPath</_GCTODIKeepMetadata>
    </PropertyGroup>
    <!-- Get items from child projects first. -->
    <MSBuild Projects="@(_MSBuildProjectReferenceExistent)" Targets="GetCopyToOutputDirectoryItems" BuildInParallel="$(BuildInParallel)" Properties="%(_MSBuildProjectReferenceExistent.SetConfiguration); %(_MSBuildProjectReferenceExistent.SetPlatform)" Condition="'@(_MSBuildProjectReferenceExistent)' != '' and '$(_GetChildProjectCopyToOutputDirectoryItems)' == 'true' and '%(_MSBuildProjectReferenceExistent.Private)' != 'false' and '$(UseCommonOutputDirectory)' != 'true'" ContinueOnError="$(ContinueOnError)" RemoveProperties="%(_MSBuildProjectReferenceExistent.GlobalPropertiesToRemove)">
      <Output TaskParameter="TargetOutputs" ItemName="_AllChildProjectItemsWithTargetPath" />
    </MSBuild>
    <!-- Target outputs must be full paths because they will be consumed by a different project. -->
    <ItemGroup>
      <_SourceItemsToCopyToOutputDirectoryAlways KeepDuplicates=" '$(_GCTODIKeepDuplicates)' != 'false' " KeepMetadata="$(_GCTODIKeepMetadata)" Include="@(_AllChildProjectItemsWithTargetPath->'%(FullPath)')" Condition="'%(_AllChildProjectItemsWithTargetPath.CopyToOutputDirectory)'=='Always'" />
      <_SourceItemsToCopyToOutputDirectory KeepDuplicates=" '$(_GCTODIKeepDuplicates)' != 'false' " KeepMetadata="$(_GCTODIKeepMetadata)" Include="@(_AllChildProjectItemsWithTargetPath->'%(FullPath)')" Condition="'%(_AllChildProjectItemsWithTargetPath.CopyToOutputDirectory)'=='PreserveNewest'" />
    </ItemGroup>
    <!-- Remove items which we will never again use - they just sit around taking up memory otherwise -->
    <ItemGroup>
      <_AllChildProjectItemsWithTargetPath Remove="@(_AllChildProjectItemsWithTargetPath)" />
    </ItemGroup>
    <!-- Get items from this project last so that they will be copied last. -->
    <ItemGroup>
      <_SourceItemsToCopyToOutputDirectoryAlways KeepMetadata="$(_GCTODIKeepMetadata)" Include="@(ContentWithTargetPath->'%(FullPath)')" Condition="'%(ContentWithTargetPath.CopyToOutputDirectory)'=='Always'" />
      <_SourceItemsToCopyToOutputDirectory KeepMetadata="$(_GCTODIKeepMetadata)" Include="@(ContentWithTargetPath->'%(FullPath)')" Condition="'%(ContentWithTargetPath.CopyToOutputDirectory)'=='PreserveNewest'" />
    </ItemGroup>
    <ItemGroup>
      <_SourceItemsToCopyToOutputDirectoryAlways KeepMetadata="$(_GCTODIKeepMetadata)" Include="@(EmbeddedResource->'%(FullPath)')" Condition="'%(EmbeddedResource.CopyToOutputDirectory)'=='Always'" />
      <_SourceItemsToCopyToOutputDirectory KeepMetadata="$(_GCTODIKeepMetadata)" Include="@(EmbeddedResource->'%(FullPath)')" Condition="'%(EmbeddedResource.CopyToOutputDirectory)'=='PreserveNewest'" />
    </ItemGroup>
    <ItemGroup>
      <_CompileItemsToCopy Include="@(Compile->'%(FullPath)')" Condition="'%(Compile.CopyToOutputDirectory)'=='Always' or '%(Compile.CopyToOutputDirectory)'=='PreserveNewest'" />
    </ItemGroup>
    <AssignTargetPath Files="@(_CompileItemsToCopy)" RootFolder="$(MSBuildProjectDirectory)">
      <Output TaskParameter="AssignedFiles" ItemName="_CompileItemsToCopyWithTargetPath" />
    </AssignTargetPath>
    <ItemGroup>
      <_SourceItemsToCopyToOutputDirectoryAlways KeepMetadata="$(_GCTODIKeepMetadata)" Include="@(_CompileItemsToCopyWithTargetPath)" Condition="'%(_CompileItemsToCopyWithTargetPath.CopyToOutputDirectory)'=='Always'" />
      <_SourceItemsToCopyToOutputDirectory KeepMetadata="$(_GCTODIKeepMetadata)" Include="@(_CompileItemsToCopyWithTargetPath)" Condition="'%(_CompileItemsToCopyWithTargetPath.CopyToOutputDirectory)'=='PreserveNewest'" />
    </ItemGroup>
    <ItemGroup>
      <_SourceItemsToCopyToOutputDirectoryAlways KeepMetadata="$(_GCTODIKeepMetadata)" Include="@(_NoneWithTargetPath->'%(FullPath)')" Condition="'%(_NoneWithTargetPath.CopyToOutputDirectory)'=='Always'" />
      <_SourceItemsToCopyToOutputDirectory KeepMetadata="$(_GCTODIKeepMetadata)" Include="@(_NoneWithTargetPath->'%(FullPath)')" Condition="'%(_NoneWithTargetPath.CopyToOutputDirectory)'=='PreserveNewest'" />
    </ItemGroup>
    <ItemGroup>
      <AllItemsFullPathWithTargetPath Include="@(_SourceItemsToCopyToOutputDirectoryAlways->'%(FullPath)');@(_SourceItemsToCopyToOutputDirectory->'%(FullPath)')" />
    </ItemGroup>
  </Target>
  <!--
    ============================================================
                                        _CopyOutOfDateSourceItemsToOutputDirectory

    Copy files that have the CopyToOutputDirectory attribute set to 'PreserveNewest'.
    ============================================================
    -->
  <Target Name="_CopyOutOfDateSourceItemsToOutputDirectory" Condition=" '@(_SourceItemsToCopyToOutputDirectory)' != '' " Inputs="@(_SourceItemsToCopyToOutputDirectory)" Outputs="@(_SourceItemsToCopyToOutputDirectory->'$(OutDir)%(TargetPath)')">
    <!--
        Not using SkipUnchangedFiles="true" because the application may want to change
        one of these files and not have an incremental build replace it.
        -->
    <Copy SourceFiles="@(_SourceItemsToCopyToOutputDirectory)" DestinationFiles="@(_SourceItemsToCopyToOutputDirectory->'$(OutDir)%(TargetPath)')" OverwriteReadOnlyFiles="$(OverwriteReadOnlyFiles)" Retries="$(CopyRetryCount)" RetryDelayMilliseconds="$(CopyRetryDelayMilliseconds)" UseHardlinksIfPossible="$(CreateHardLinksForAdditionalFilesIfPossible)">
      <Output TaskParameter="DestinationFiles" ItemName="FileWrites" />
    </Copy>
  </Target>
  <!--
    ============================================================
                                        _CopyOutOfDateSourceItemsToOutputDirectoryAlways

    Copy files that have the CopyToOutputDirectory attribute set to 'Always'.
    ============================================================
    -->
  <Target Name="_CopyOutOfDateSourceItemsToOutputDirectoryAlways" Condition=" '@(_SourceItemsToCopyToOutputDirectoryAlways)' != '' ">
    <!--
        Not using SkipUnchangedFiles="true" because the application may want to change
        one of these files and not have an incremental build replace it.
        -->
    <Copy SourceFiles="@(_SourceItemsToCopyToOutputDirectoryAlways)" DestinationFiles="@(_SourceItemsToCopyToOutputDirectoryAlways->'$(OutDir)%(TargetPath)')" OverwriteReadOnlyFiles="$(OverwriteReadOnlyFiles)" Retries="$(CopyRetryCount)" RetryDelayMilliseconds="$(CopyRetryDelayMilliseconds)" UseHardlinksIfPossible="$(CreateHardLinksForAdditionalFilesIfPossible)">
      <Output TaskParameter="DestinationFiles" ItemName="FileWrites" />
    </Copy>
  </Target>
  <!--
    ============================================================
                                        _CopyAppConfigFile

    Copy the application config file.
    ============================================================
    -->
  <Target Name="_CopyAppConfigFile" Condition=" '@(AppConfigWithTargetPath)' != '' " Inputs="@(AppConfigWithTargetPath)" Outputs="@(AppConfigWithTargetPath->'$(OutDir)%(TargetPath)')">
    <!--
        Copy the application's .config file, if any.
        Not using SkipUnchangedFiles="true" because the application may want to change
        the app.config and not have an incremental build replace it.
        -->
    <Copy SourceFiles="@(AppConfigWithTargetPath)" DestinationFiles="@(AppConfigWithTargetPath->'$(OutDir)%(TargetPath)')" OverwriteReadOnlyFiles="$(OverwriteReadOnlyFiles)" Retries="$(CopyRetryCount)" RetryDelayMilliseconds="$(CopyRetryDelayMilliseconds)" UseHardlinksIfPossible="$(CreateHardLinksForAdditionalFilesIfPossible)">
      <Output TaskParameter="DestinationFiles" ItemName="FileWrites" />
    </Copy>
  </Target>
  <!--
    ================================================================
                                         _CopyManifestFiles
    ================================================================

    Copy the built manifests (.exe.manifest, .application/.xbap) to the final directory.
    -->
  <Target Name="_CopyManifestFiles" Condition=" '$(_DeploymentCopyApplicationManifest)'=='true' or '$(GenerateClickOnceManifests)'=='true' " DependsOnTargets="PrepareForBuild">
    <Copy SourceFiles="@(ApplicationManifest)" DestinationFolder="$(OutDir)" SkipUnchangedFiles="$(SkipCopyUnchangedFiles)" OverwriteReadOnlyFiles="$(OverwriteReadOnlyFiles)" Retries="$(CopyRetryCount)" RetryDelayMilliseconds="$(CopyRetryDelayMilliseconds)" UseHardlinksIfPossible="$(CreateHardLinksForAdditionalFilesIfPossible)" Condition="'$(GenerateClickOnceManifests)'=='true' or '$(_DeploymentCopyApplicationManifest)'=='true'">
      <Output TaskParameter="DestinationFiles" ItemName="_DeploymentMainApplicationManifest" />
      <Output TaskParameter="DestinationFiles" ItemName="FileWrites" />
    </Copy>
    <Message Importance="Normal" Condition="'$(_DeploymentCopyApplicationManifest)'=='true'" Text="$(MSBuildProjectName) -&gt; @(_DeploymentMainApplicationManifest->'%(FullPath)')" />
    <Copy SourceFiles="@(DeployManifest)" DestinationFolder="$(OutDir)" SkipUnchangedFiles="$(SkipCopyUnchangedFiles)" OverwriteReadOnlyFiles="$(OverwriteReadOnlyFiles)" Retries="$(CopyRetryCount)" RetryDelayMilliseconds="$(CopyRetryDelayMilliseconds)" UseHardlinksIfPossible="$(CreateHardLinksForAdditionalFilesIfPossible)" Condition="'$(GenerateClickOnceManifests)'=='true'">
      <Output TaskParameter="DestinationFiles" ItemName="_DeploymentMainDeployManifest" />
      <Output TaskParameter="DestinationFiles" ItemName="FileWrites" />
    </Copy>
    <Message Importance="Normal" Condition="'$(GenerateClickOnceManifests)'=='true'" Text="$(MSBuildProjectName) -&gt; @(_DeploymentMainDeployManifest->'%(FullPath)')" />
  </Target>
  <!--
    ================================================================
                                         _CheckForCompileOutputs

    Checks each file output from the main "Compile" target to make sure they really exist.
    If they do, then record them in the clean cache.
    ============================================================
    -->
  <Target Name="_CheckForCompileOutputs">
    <!--Record the main compile outputs.-->
    <ItemGroup>
      <FileWrites Include="@(IntermediateAssembly)" Condition="Exists('@(IntermediateAssembly)')" />
    </ItemGroup>
    <!-- Record the .xml if one was produced. -->
    <PropertyGroup>
      <_DocumentationFileProduced Condition="!Exists('@(DocFileItem)')">false</_DocumentationFileProduced>
    </PropertyGroup>
    <ItemGroup>
      <FileWrites Include="@(DocFileItem)" Condition="'$(_DocumentationFileProduced)'=='true'" />
    </ItemGroup>
    <!-- Record the .pdb if one was produced. -->
    <PropertyGroup>
      <_DebugSymbolsProduced Condition="!Exists('@(_DebugSymbolsIntermediatePath)')">false</_DebugSymbolsProduced>
    </PropertyGroup>
    <ItemGroup>
      <FileWrites Include="@(_DebugSymbolsIntermediatePath)" Condition="'$(_DebugSymbolsProduced)'=='true'" />
    </ItemGroup>
  </Target>
  <!--
    ============================================================
                                        _SGenCheckForOutputs

    Checks each file output from the "GenerateSerializationAssemblies" target to make sure they really exist.
    If they do, then record them in the clean cache.
    ============================================================
    -->
  <Target Name="_SGenCheckForOutputs" Condition="'$(_SGenGenerateSerializationAssembliesConfig)' == 'On' or ('@(WebReferenceUrl)'!='' and '$(_SGenGenerateSerializationAssembliesConfig)' == 'Auto')">
    <!-- Record the serializer .dll if one was produced.-->
    <PropertyGroup>
      <_SGenDllCreated Condition="Exists('$(IntermediateOutputPath)$(_SGenDllName)')">true</_SGenDllCreated>
    </PropertyGroup>
    <ItemGroup>
      <FileWrites Include="$(IntermediateOutputPath)$(_SGenDllName)" Condition="Exists('$(IntermediateOutputPath)$(_SGenDllName)')" />
    </ItemGroup>
  </Target>
  <!--
    ***********************************************************************************************
    ***********************************************************************************************
                                                                UnmanagedRegistration Section
    ***********************************************************************************************
    ***********************************************************************************************
    -->
  <!--
    ============================================================
                                        UnmanagedRegistration

    Registers the main assembly for COM interop.
    ============================================================
    -->
  <PropertyGroup>
    <UnmanagedRegistrationDependsOn />
  </PropertyGroup>
  <Target Name="UnmanagedRegistration" Condition="'$(RegisterForComInterop)'=='true' and '$(OutputType)'=='library'" DependsOnTargets="$(UnmanagedRegistrationDependsOn)">
    <PropertyGroup>
      <RegisterAssemblyMSBuildArchitecture Condition="'$(RegisterAssemblyMSBuildArchitecture)' == ''">$(PlatformTargetAsMSBuildArchitecture)</RegisterAssemblyMSBuildArchitecture>
    </PropertyGroup>
    <PropertyGroup Condition="'$(TargetFrameworkAsMSBuildRuntime)' != '' and '$(RegisterAssemblyMSBuildArchitecture)' != ''">
      <!-- Falling back to the current runtime if we are targeting CLR2 and the task host doesn't exist will lead to 
           incorrect behavior in some cases, but it's the same incorrect behavior as Visual Studio 2010, and thus better
           than causing build breaks on upgrade to Win8 the way not doing so would.  For more details, see the 
           corresponding comment in GenerateResource. -->
      <RegisterAssemblyMSBuildRuntime Condition="'$(RegisterAssemblyMSBuildRuntime)' == '' and &#xD;&#xA;                     $([MSBuild]::DoesTaskHostExist(`$(TargetFrameworkAsMSBuildRuntime)`, `$(RegisterAssemblyMSBuildArchitecture)`))">$(TargetFrameworkAsMSBuildRuntime)</RegisterAssemblyMSBuildRuntime>
      <!-- If the targeted runtime doesn't exist, fall back to current -->
      <RegisterAssemblyMSBuildRuntime Condition="'$(RegisterAssemblyMSBuildRuntime)' == ''">CurrentRuntime</RegisterAssemblyMSBuildRuntime>
    </PropertyGroup>
    <RegisterAssembly Assemblies="@(_OutputPathItem->'%(FullPath)$(TargetFileName)')" TypeLibFiles="@(_OutputPathItem->'%(FullPath)$(TargetName).tlb')" AssemblyListFile="@(_UnmanagedRegistrationCache)" CreateCodeBase="true" MSBuildRuntime="$(RegisterAssemblyMSBuildRuntime)" MSBuildArchitecture="$(RegisterAssemblyMSBuildArchitecture)" Condition="!Exists('@(_UnmanagedRegistrationCache)')" />
    <ItemGroup>
      <FileWrites Include="@(_OutputPathItem->'%(FullPath)$(TargetName).tlb')" />
    </ItemGroup>
  </Target>
  <!--
    ***********************************************************************************************
    ***********************************************************************************************
                                                                IncrementalClean Section
    ***********************************************************************************************
    ***********************************************************************************************
    -->
  <!--
    ============================================================
                                        IncrementalClean

    Remove files that were produced in a prior build but weren't produced in the current build.
    The reason is that if, for example, the name of the .exe has changed we want to delete the
    old copy.

    Leave the Clean cache file containing only the files produced in the current build.
    ============================================================
    -->
  <Target Name="IncrementalClean" DependsOnTargets="_CleanGetCurrentAndPriorFileWrites">
    <!-- Subtract list of files produced in prior builds from list of files produced in this build. -->
    <ItemGroup>
      <_CleanOrphanFileWrites Include="@(_CleanPriorFileWrites)" Exclude="@(_CleanCurrentFileWrites)" />
    </ItemGroup>
    <!-- Find all files in the final output directory. -->
    <FindUnderPath Path="$(OutDir)" Files="@(_CleanOrphanFileWrites)">
      <Output TaskParameter="InPath" ItemName="_CleanOrphanFileWritesInOutput" />
    </FindUnderPath>
    <!-- Find all files in the intermediate output directory. -->
    <FindUnderPath Path="$(IntermediateOutputPath)" Files="@(_CleanOrphanFileWrites)">
      <Output TaskParameter="InPath" ItemName="_CleanOrphanFileWritesInIntermediate" />
    </FindUnderPath>
    <!-- Delete the orphaned files. -->
    <Delete Files="@(_CleanOrphanFileWritesInIntermediate);@(_CleanOrphanFileWritesInOutput)" TreatErrorsAsWarnings="true">
      <Output TaskParameter="DeletedFiles" ItemName="_CleanOrphanFilesDeleted" />
    </Delete>
    <!-- Create a list of everything that wasn't deleted or was outside
             the current final output and intermediate output directories. -->
    <ItemGroup>
      <_CleanRemainingFileWritesAfterIncrementalClean Include="@(_CleanPriorFileWrites);@(_CleanCurrentFileWrites)" Exclude="@(_CleanOrphanFilesDeleted)" />
    </ItemGroup>
    <!-- Remove duplicates. -->
    <RemoveDuplicates Inputs="@(_CleanRemainingFileWritesAfterIncrementalClean)">
      <Output TaskParameter="Filtered" ItemName="_CleanUniqueRemainingFileWritesAfterIncrementalClean" />
    </RemoveDuplicates>
    <!-- Write new list of current files back to disk, replacing the existing list.-->
    <WriteLinesToFile File="$(IntermediateOutputPath)$(CleanFile)" Lines="@(_CleanUniqueRemainingFileWritesAfterIncrementalClean)" Condition="'@(_CleanUnfilteredPriorFileWrites)'!='@(_CleanUniqueRemainingFileWritesAfterIncrementalClean)'" Overwrite="true" />
  </Target>
  <!--
    ============================================================
                                        _CleanGetCurrentAndPriorFileWrites

    Get the list of files built in the current build and in prior builds.
    ============================================================
    -->
  <Target Name="_CleanGetCurrentAndPriorFileWrites" DependsOnTargets="_CheckForCompileOutputs;_SGenCheckForOutputs">
    <!-- Read the list of files produced by a prior builds from disk. -->
    <ReadLinesFromFile File="$(IntermediateOutputPath)$(CleanFile)">
      <Output TaskParameter="Lines" ItemName="_CleanUnfilteredPriorFileWrites" />
    </ReadLinesFromFile>
    <!--
        Convert the list of references to the absolute paths so we can make valid comparisons
        across two lists
         -->
    <ConvertToAbsolutePath Paths="@(_ResolveAssemblyReferenceResolvedFiles)">
      <Output TaskParameter="AbsolutePaths" ItemName="_ResolveAssemblyReferenceResolvedFilesAbsolute" />
    </ConvertToAbsolutePath>
    <!--
        Subtract any resolved assembly files from *prior* file writes because deleting
        these would break subsequent builds because the assemblies would be unresolvable.
         -->
    <ItemGroup>
      <_CleanPriorFileWrites Include="@(_CleanUnfilteredPriorFileWrites)" Exclude="@(_ResolveAssemblyReferenceResolvedFilesAbsolute)" />
    </ItemGroup>
    <!--
        Of shareable files, keep only those that are in the project's directory.
        We never clean shareable files outside of the project directory because
        the build may be to a common output directory and other projects may need
        them.

        Only subtract the outputs from ResolveAssemblyReferences target because that's the
        only "Resolve" target that tries to resolve assemblies directly from the output
        directory.
        -->
    <FindUnderPath Path="$(MSBuildProjectDirectory)" Files="@(FileWritesShareable)" UpdateToAbsolutePaths="true">
      <Output TaskParameter="InPath" ItemName="FileWrites" />
    </FindUnderPath>
    <!-- Find all files in the final output directory. -->
    <FindUnderPath Path="$(OutDir)" Files="@(FileWrites)" UpdateToAbsolutePaths="true">
      <Output TaskParameter="InPath" ItemName="_CleanCurrentFileWritesInOutput" />
    </FindUnderPath>
    <!-- Find all files in the intermediate output directory. -->
    <FindUnderPath Path="$(IntermediateOutputPath)" Files="@(FileWrites)" UpdateToAbsolutePaths="true">
      <Output TaskParameter="InPath" ItemName="_CleanCurrentFileWritesInIntermediate" />
    </FindUnderPath>
    <!--
        Subtract any resolved assembly files from *current* file writes because deleting
        these would break subsequent builds because the assemblies would be unresolvable.

        Only subtract the outputs from ResolveAssemblyReferences target because that's the
        only "Resolve" target that tries to resolve assemblies directly from the output
        directory.
         -->
    <ItemGroup>
      <_CleanCurrentFileWritesWithNoReferences Include="@(_CleanCurrentFileWritesInOutput);@(_CleanCurrentFileWritesInIntermediate)" Exclude="@(_ResolveAssemblyReferenceResolvedFilesAbsolute)" />
    </ItemGroup>
    <!-- Remove duplicates from files produced in this build. -->
    <RemoveDuplicates Inputs="@(_CleanCurrentFileWritesWithNoReferences)">
      <Output TaskParameter="Filtered" ItemName="_CleanCurrentFileWrites" />
    </RemoveDuplicates>
  </Target>
  <!--
    ***********************************************************************************************
    ***********************************************************************************************
                                                                Clean Section
    ***********************************************************************************************
    ***********************************************************************************************
    -->
  <!--
    ============================================================
                                        Clean

    Delete all intermediate and final build outputs.
    ============================================================
    -->
  <PropertyGroup>
    <CleanDependsOn>
      BeforeClean;
      UnmanagedUnregistration;
      CoreClean;
      CleanReferencedProjects;
      CleanPublishFolder;
      AfterClean
    </CleanDependsOn>
  </PropertyGroup>
  <Target Name="Clean" Condition=" '$(_InvalidConfigurationWarning)' != 'true' " DependsOnTargets="$(CleanDependsOn)" />
  <!--
    ============================================================
                                        BeforeClean

    Redefine this target in your project in order to run tasks just before Clean.
    ============================================================
    -->
  <Target Name="BeforeClean" />
  <!--
    ============================================================
                                        AfterClean

    Redefine this target in your project in order to run tasks just after Clean.
    ============================================================
    -->
  <Target Name="AfterClean" />
  <!--
    ============================================================
                                        CleanReferencedProjects

    Call Clean target on all Referenced Projects.
    ============================================================
    -->
  <Target Name="CleanReferencedProjects" DependsOnTargets="AssignProjectConfiguration; _SplitProjectReferencesByFileExistence">
    <!--
        When building the project directly from the command-line, clean those referenced projects
        that exist on disk.  For IDE builds and command-line .SLN builds, the solution build manager
        takes care of this.
        -->
    <MSBuild Projects="@(_MSBuildProjectReferenceExistent)" Targets="Clean" Properties="%(_MSBuildProjectReferenceExistent.SetConfiguration); %(_MSBuildProjectReferenceExistent.SetPlatform)" BuildInParallel="$(BuildInParallel)" Condition="'$(BuildingInsideVisualStudio)' != 'true' and '$(BuildProjectReferences)' == 'true' and '@(_MSBuildProjectReferenceExistent)' != ''" ContinueOnError="$(ContinueOnError)" RemoveProperties="%(_MSBuildProjectReferenceExistent.GlobalPropertiesToRemove)" />
  </Target>
  <!--
    ============================================================
                                        CoreClean
    ============================================================
    -->
  <PropertyGroup>
    <CoreCleanDependsOn />
  </PropertyGroup>
  <Target Name="CoreClean" DependsOnTargets="$(CoreCleanDependsOn)">
    <!-- First clean any explicitly specified cleanable files.
             Declare items of this type if you want Clean to delete them. -->
    <Delete Files="@(Clean)" TreatErrorsAsWarnings="true" />
    <!-- Read in list of files that were written to disk in past builds. -->
    <ReadLinesFromFile File="$(IntermediateOutputPath)$(CleanFile)">
      <Output TaskParameter="Lines" ItemName="_CleanPriorFileWrites" />
    </ReadLinesFromFile>
    <!-- Find all files in the final output directory. -->
    <FindUnderPath Path="$(OutDir)" Files="@(_CleanPriorFileWrites)">
      <Output TaskParameter="InPath" ItemName="_CleanPriorFileWritesInOutput" />
    </FindUnderPath>
    <!-- Find all files in the intermediate output directory. -->
    <FindUnderPath Path="$(IntermediateOutputPath)" Files="@(_CleanPriorFileWrites)">
      <Output TaskParameter="InPath" ItemName="_CleanPriorFileWritesInIntermediate" />
    </FindUnderPath>
    <!-- Delete those files. -->
    <Delete Files="@(_CleanPriorFileWritesInOutput);@(_CleanPriorFileWritesInIntermediate)" TreatErrorsAsWarnings="true">
      <Output TaskParameter="DeletedFiles" ItemName="_CleanPriorFileWritesDeleted" />
    </Delete>
    <!-- Create a list of everything that wasn't deleted. -->
    <ItemGroup>
      <_CleanRemainingFileWritesAfterClean Include="@(_CleanPriorFileWrites)" Exclude="@(_CleanPriorFileWritesDeleted)" />
    </ItemGroup>
    <!-- Remove duplicates. -->
    <RemoveDuplicates Inputs="@(_CleanRemainingFileWritesAfterClean)">
      <Output TaskParameter="Filtered" ItemName="_CleanUniqueRemainingFileWrites" />
    </RemoveDuplicates>
    <!-- Make sure the directory exists. -->
    <MakeDir Directories="$(IntermediateOutputPath)" />
    <!-- Write new list of current files back to disk. -->
    <WriteLinesToFile File="$(IntermediateOutputPath)$(CleanFile)" Lines="@(_CleanUniqueRemainingFileWrites)" Overwrite="true" />
  </Target>
  <!--
    ============================================================
                                        _CleanRecordFileWrites

    Save the list of all files written to disk so that it can be used for "Clean" later.

    Files written in prior builds are not removed from Clean cache.
    ============================================================
    -->
  <Target Name="_CleanRecordFileWrites" DependsOnTargets="_CleanGetCurrentAndPriorFileWrites">
    <!--
        Merge list of files from prior builds with the current build and then
        remove duplicates.
        -->
    <RemoveDuplicates Inputs="@(_CleanPriorFileWrites);@(_CleanCurrentFileWrites)">
      <Output TaskParameter="Filtered" ItemName="_CleanUniqueFileWrites" />
    </RemoveDuplicates>
    <!-- Make sure the directory exists. -->
    <MakeDir Directories="$(IntermediateOutputPath)" />
    <!-- Write merged file list back to disk, replacing existing contents. -->
    <WriteLinesToFile File="$(IntermediateOutputPath)$(CleanFile)" Lines="@(_CleanUniqueFileWrites)" Overwrite="true" />
  </Target>
  <!--
    ============================================================
                                        CleanPublishFolder
    ============================================================
    -->
  <Target Name="CleanPublishFolder">
    <RemoveDir Directories="$(PublishDir)" Condition="'$(PublishDir)'=='$(OutputPath)app.publish\' and Exists('$(PublishDir)')" />
  </Target>
  <!--
    ***********************************************************************************************
    ***********************************************************************************************
                                                                PostBuildEvent Section
    ***********************************************************************************************
    ***********************************************************************************************
    -->
  <!--
    ============================================================
                                        PostBuildEvent

    Run the post-build event. This step is driven by two parameters:

    (1) The $(RunPostBuildEvent) property is set by the user through the IDE and can be one of four values.

        - OnBuildSuccess: In this case, every step of the build must succeed for the post-build step to run.
        - <Blank>: This is the same as OnBuildSuccess.
        - OnOutputUpdated: In this case, the post-build step will run only if the main output assembly was
        actually updated.
        - Always: The post-build step is always run.

    (2) The $(_AssemblyTimestampBeforeCompile) and $(_AssemblyTimestampAfterCompile) values are
        set by the _TimeStampBeforeCompile and _TimeStampAfterCompile targets.  If the assembly was actually
        rebuilt during this build, then the two values will be different.
    ============================================================
    -->
  <PropertyGroup>
    <PostBuildEventDependsOn />
  </PropertyGroup>
  <Target Name="PostBuildEvent" Condition="'$(PostBuildEvent)' != '' and ('$(RunPostBuildEvent)' != 'OnOutputUpdated' or '$(_AssemblyTimestampBeforeCompile)' != '$(_AssemblyTimestampAfterCompile)')" DependsOnTargets="$(PostBuildEventDependsOn)">
    <Exec WorkingDirectory="$(OutDir)" Command="$(PostBuildEvent)" />
  </Target>
  <!--
    ***********************************************************************************************
    ***********************************************************************************************
                                                                Publish Section
    ***********************************************************************************************
    ***********************************************************************************************
    -->
  <!--
    ============================================================
                                        Publish

    This target is only called when doing ClickOnce publishing outside the IDE, which implicitly builds before publishing.
    ============================================================
    -->
  <PropertyGroup>
    <PublishDependsOn Condition="'$(PublishableProject)'=='true'">
      SetGenerateManifests;
      Build;
      PublishOnly
    </PublishDependsOn>
    <PublishDependsOn Condition="'$(PublishableProject)'!='true'">
      _DeploymentUnpublishable
    </PublishDependsOn>
  </PropertyGroup>
  <Target Name="Publish" DependsOnTargets="$(PublishDependsOn)" />
  <!--
    ============================================================
                                        _DeploymentUnpublishable

    This target is used to block an attempt to ClickOnce publish a non-publishable project, such as a ClassLibrary, when building outside the IDE.
    ============================================================
    -->
  <Target Name="_DeploymentUnpublishable">
    <Message Text="Skipping unpublishable project." />
  </Target>
  <!--
    ============================================================
                                        SetGenerateManifests

    This target simply assures the GenerateClickOnceManifests property is set whenever the publish target is invoked.
    ============================================================
    -->
  <Target Name="SetGenerateManifests">
    <Error Condition="'$(OutputType)'!='winexe' and '$(OutputType)'!='exe' and '$(OutputType)'!='appcontainerexe'" Text="Publish is only valid for 'Windows Application' or 'Console Application' project types." />
    <Error Condition="'$(_DeploymentSignClickOnceManifests)'=='true' and '$(ManifestCertificateThumbprint)'=='' and '$(ManifestKeyFile)'==''" Text="A signing key is required in order to publish this project. Please specify a ManifestKeyFile or ManifestCertificateThumbprint value. Publishing from Visual Studio will automatically configure a signing key for this project." />
    <PropertyGroup>
      <GenerateClickOnceManifests>true</GenerateClickOnceManifests>
    </PropertyGroup>
  </Target>
  <!--
    ============================================================
                                        PublishOnly

    The "PublishOnly" target is intended for ClickOnce publishing inside the IDE, where the build has already been done
    by the BuildManager.
    ============================================================
    -->
  <PropertyGroup>
    <PublishOnlyDependsOn>
      SetGenerateManifests;
      PublishBuild;
      BeforePublish;
      GenerateManifests;
      CopyFilesToOutputDirectory;
      _CopyFilesToPublishFolder;
      _DeploymentGenerateBootstrapper;
      ResolveKeySource;
      _DeploymentSignClickOnceDeployment;
      AfterPublish
    </PublishOnlyDependsOn>
  </PropertyGroup>
  <Target Name="PublishOnly" DependsOnTargets="$(PublishOnlyDependsOn)" />
  <!--
    ============================================================
                                        BeforePublish

    Redefine this target in your project in order to run tasks just before Publish.
    ============================================================
    -->
  <Target Name="BeforePublish" />
  <!--
    ============================================================
                                        AfterPublish

    Redefine this target in your project in order to run tasks just after Publish.
    ============================================================
    -->
  <Target Name="AfterPublish" />
  <!--
    ============================================================
                                        PublishBuild

    Defines the set of targets that publishing is directly dependent on.
    ============================================================
    -->
  <PropertyGroup>
    <PublishBuildDependsOn>
      BuildOnlySettings;
      PrepareForBuild;
      ResolveReferences;
      PrepareResources;
      ResolveKeySource;
      GenerateSerializationAssemblies;
      CreateSatelliteAssemblies;
    </PublishBuildDependsOn>
  </PropertyGroup>
  <Target Name="PublishBuild" DependsOnTargets="$(PublishBuildDependsOn)" />
  <!--
    ============================================================
                                        _CopyFilesToPublishFolder
    ============================================================
    -->
  <Target Name="_CopyFilesToPublishFolder">
    <!-- Compute name of application folder, which includes the assembly name plus formatted application version.
             The application version is formatted to use "_" in place of "." chars (i.e. "1_0_0_0" instead of "1.0.0.0").
             This is done because some servers misinterpret "." as a file extension. -->
    <FormatVersion Version="$(ApplicationVersion)" Revision="$(ApplicationRevision)" FormatType="Path">
      <Output TaskParameter="OutputVersion" PropertyName="_DeploymentApplicationVersionFragment" />
    </FormatVersion>
    <PropertyGroup>
      <_DeploymentApplicationFolderName>Application Files\$(AssemblyName)_$(_DeploymentApplicationVersionFragment)</_DeploymentApplicationFolderName>
      <_DeploymentApplicationDir>$(PublishDir)$(_DeploymentApplicationFolderName)\</_DeploymentApplicationDir>
    </PropertyGroup>
    <PropertyGroup>
      <!-- By default we're not using Hard Links to copy to the publish directory, and never when building in VS -->
      <CreateHardLinksForPublishFilesIfPossible Condition="'$(BuildingInsideVisualStudio)' == 'true' or '$(CreateHardLinksForPublishFilesIfPossible)' == ''">false</CreateHardLinksForPublishFilesIfPossible>
    </PropertyGroup>
    <!-- Copy files to publish folder -->
    <Copy SourceFiles="@(_ApplicationManifestFinal);&#xD;&#xA;                @(_DeploymentResolvedManifestEntryPoint);&#xD;&#xA;                @(_DeploymentManifestFiles);&#xD;&#xA;                @(ReferenceComWrappersToCopyLocal);&#xD;&#xA;                @(ResolvedIsolatedComModules);&#xD;&#xA;                @(_DeploymentLooseManifestFile)" DestinationFiles="@(_ApplicationManifestFinal->'$(_DeploymentApplicationDir)%(TargetPath)');&#xD;&#xA;                @(_DeploymentManifestEntryPoint->'$(_DeploymentApplicationDir)%(TargetPath)$(_DeploymentFileMappingExtension)');&#xD;&#xA;                @(_DeploymentManifestFiles->'$(_DeploymentApplicationDir)%(TargetPath)$(_DeploymentFileMappingExtension)');&#xD;&#xA;                @(ReferenceComWrappersToCopyLocal->'$(_DeploymentApplicationDir)%(FileName)%(Extension)$(_DeploymentFileMappingExtension)');&#xD;&#xA;                @(ResolvedIsolatedComModules->'$(_DeploymentApplicationDir)%(FileName)%(Extension)$(_DeploymentFileMappingExtension)');&#xD;&#xA;                @(_DeploymentLooseManifestFile->'$(_DeploymentApplicationDir)%(FileName)%(Extension)$(_DeploymentFileMappingExtension)')" SkipUnchangedFiles="$(SkipCopyUnchangedFiles)" OverwriteReadOnlyFiles="$(OverwriteReadOnlyFiles)" Retries="$(CopyRetryCount)" UseHardlinksIfPossible="$(CreateHardLinksForPublishFilesIfPossible)" RetryDelayMilliseconds="$(CopyRetryDelayMilliseconds)" />
    <Copy SourceFiles="@(_DeploymentManifestDependencies)" DestinationFiles="@(_DeploymentManifestDependencies->'$(_DeploymentApplicationDir)%(TargetPath)$(_DeploymentFileMappingExtension)')" SkipUnchangedFiles="$(SkipCopyUnchangedFiles)" OverwriteReadOnlyFiles="$(OverwriteReadOnlyFiles)" Retries="$(CopyRetryCount)" RetryDelayMilliseconds="$(CopyRetryDelayMilliseconds)" UseHardlinksIfPossible="$(CreateHardLinksForPublishFilesIfPossible)" Condition="'%(_DeploymentManifestDependencies.DependencyType)'=='Install'" />
    <Copy SourceFiles="@(_ReferenceScatterPaths)" DestinationFiles="@(_ReferenceScatterPaths->'$(_DeploymentApplicationDir)%(Filename)%(Extension)$(_DeploymentFileMappingExtension)')" SkipUnchangedFiles="$(SkipCopyUnchangedFiles)" OverwriteReadOnlyFiles="$(OverwriteReadOnlyFiles)" Retries="$(CopyRetryCount)" RetryDelayMilliseconds="$(CopyRetryDelayMilliseconds)" UseHardlinksIfPossible="$(CreateHardLinksForPublishFilesIfPossible)" />
    <FormatUrl InputUrl="$(_DeploymentApplicationUrl)">
      <Output TaskParameter="OutputUrl" PropertyName="_DeploymentFormattedApplicationUrl" />
    </FormatUrl>
    <FormatUrl InputUrl="$(_DeploymentComponentsUrl)">
      <Output TaskParameter="OutputUrl" PropertyName="_DeploymentFormattedComponentsUrl" />
    </FormatUrl>
  </Target>
  <!--
    ============================================================
                                        _DeploymentGenerateBootstrapper
    ============================================================
    -->
  <Target Name="_DeploymentGenerateBootstrapper">
    <!-- Build setup.exe bootstrapper and copy referenced packages -->
    <GenerateBootstrapper ApplicationFile="$(TargetDeployManifestFileName)" ApplicationName="$(AssemblyName)" ApplicationUrl="$(_DeploymentFormattedApplicationUrl)" BootstrapperItems="@(BootstrapperPackage)" ComponentsLocation="$(BootstrapperComponentsLocation)" ComponentsUrl="$(_DeploymentFormattedComponentsUrl)" Culture="$(TargetCulture)" FallbackCulture="$(FallbackCulture)" OutputPath="$(PublishDir)" SupportUrl="$(_DeploymentFormattedSupportUrl)" Path="$(GenerateBootstrapperSdkPath)" VisualStudioVersion="$(VisualStudioVersion)" Condition="'$(BootstrapperEnabled)'=='true'" />
  </Target>
  <!--
    ============================================================
                                        _DeploymentSignClickOnceDeployment
    ============================================================
    -->
  <Target Name="_DeploymentSignClickOnceDeployment">
    <!-- Sign manifests and the bootstrapper -->
    <SignFile CertificateThumbprint="$(_DeploymentResolvedManifestCertificateThumbprint)" TimestampUrl="$(ManifestTimestampUrl)" SigningTarget="$(_DeploymentApplicationDir)$(_DeploymentTargetApplicationManifestFileName)" TargetFrameworkVersion="$(TargetFrameworkVersion)" Condition="'$(_DeploymentSignClickOnceManifests)'=='true'" />
    <!-- Update entry point path in deploy manifest -->
    <UpdateManifest ApplicationPath="$(_DeploymentApplicationFolderName)\$(_DeploymentTargetApplicationManifestFileName)" TargetFrameworkVersion="$(TargetFrameworkVersion)" ApplicationManifest="$(_DeploymentApplicationDir)$(_DeploymentTargetApplicationManifestFileName)" InputManifest="$(OutDir)$(TargetDeployManifestFileName)" OutputManifest="$(PublishDir)$(TargetDeployManifestFileName)">
      <Output TaskParameter="OutputManifest" ItemName="PublishedDeployManifest" />
    </UpdateManifest>
    <SignFile CertificateThumbprint="$(_DeploymentResolvedManifestCertificateThumbprint)" TimestampUrl="$(ManifestTimestampUrl)" SigningTarget="$(PublishDir)$(TargetDeployManifestFileName)" TargetFrameworkVersion="$(TargetFrameworkVersion)" Condition="'$(_DeploymentSignClickOnceManifests)'=='true'" />
    <SignFile CertificateThumbprint="$(_DeploymentResolvedManifestCertificateThumbprint)" TimestampUrl="$(ManifestTimestampUrl)" SigningTarget="$(PublishDir)\setup.exe" Condition="'$(BootstrapperEnabled)'=='true' and '$(_DeploymentSignClickOnceManifests)'=='true'" />
  </Target>
  <!--
    ***********************************************************************************************
    ***********************************************************************************************
                                                                AllProjectOutputGroups Section
    ***********************************************************************************************
    ***********************************************************************************************
    -->
  <!--
    ============================================================
                                        AllProjectOutputGroups

    The targets below drive output groups, which provide generic information about a
    project's inputs (e.g., content files, compilation sources, etc.) and built outputs
    (e.g., built EXE/DLL, PDB, XML documentation files, etc.)

    Each target may produce two kinds of items:  outputs and dependencies.  Outputs are
    items from the current project; dependencies are items that are brought into the
    current project as a result of referencing other projects or components.

    For both outputs and dependencies, the Include attribute
    specifies the location of the output/dependency; it must be a full path.  Any number
    of additional attributes may be placed on an output/dependency item.
    ============================================================
    -->
  <Target Name="AllProjectOutputGroups" DependsOnTargets="&#xD;&#xA;            BuiltProjectOutputGroup;&#xD;&#xA;            DebugSymbolsProjectOutputGroup;&#xD;&#xA;            DocumentationProjectOutputGroup;&#xD;&#xA;            SatelliteDllsProjectOutputGroup;&#xD;&#xA;            SourceFilesProjectOutputGroup;&#xD;&#xA;            ContentFilesProjectOutputGroup;&#xD;&#xA;            SGenFilesOutputGroup" />
  <!--
    This is the key output for the BuiltProjectOutputGroup and is meant to be read directly from the IDE.
    Reading an item is faster than invoking a target.
    -->
  <ItemGroup Condition=" '$(OutputType)' != 'winmdobj' ">
    <BuiltProjectOutputGroupKeyOutput Include="@(IntermediateAssembly->'%(FullPath)')">
      <IsKeyOutput>true</IsKeyOutput>
      <FinalOutputPath>$(TargetPath)</FinalOutputPath>
      <TargetPath>$(TargetFileName)</TargetPath>
      <COM2REG Condition="'$(RegisterForComInterop)'=='true' and '$(OutputType)'=='library'">true</COM2REG>
    </BuiltProjectOutputGroupKeyOutput>
  </ItemGroup>
  <ItemGroup Condition=" '$(OutputType)' == 'winmdobj' ">
    <WinMDExpOutputWindowsMetadataFileItem Include="$(_IntermediateWindowsMetadataPath)" Condition="'$(_IntermediateWindowsMetadataPath)' != ''" />
    <BuiltProjectOutputGroupKeyOutput Include="@(WinMDExpOutputWindowsMetadataFileItem->'%(FullPath)')">
      <IsKeyOutput>true</IsKeyOutput>
      <FinalOutputPath>$(TargetPath)</FinalOutputPath>
      <TargetPath>$(TargetFileName)</TargetPath>
    </BuiltProjectOutputGroupKeyOutput>
  </ItemGroup>
  <!--
    ============================================================
                                        BuiltProjectOutputGroup
    ============================================================
    -->
  <PropertyGroup>
    <BuiltProjectOutputGroupDependsOn>PrepareForBuild</BuiltProjectOutputGroupDependsOn>
    <AddAppConfigToBuildOutputs Condition="('$(AddAppConfigToBuildOutputs)'=='') and ('$(OutputType)'!='library' and '$(OutputType)'!='winmdobj')">true</AddAppConfigToBuildOutputs>
  </PropertyGroup>
  <Target Name="BuiltProjectOutputGroup" Returns="@(BuiltProjectOutputGroupOutput)" DependsOnTargets="$(BuiltProjectOutputGroupDependsOn)">
    <ItemGroup>
      <_BuiltProjectOutputGroupOutputIntermediate Include="@(BuiltProjectOutputGroupKeyOutput)" />
    </ItemGroup>
    <!-- This item represents the app.config file -->
    <ItemGroup>
      <_BuiltProjectOutputGroupOutputIntermediate Include="$(AppConfig)" Condition="'$(AddAppConfigToBuildOutputs)'=='true'">
        <FinalOutputPath>$(TargetDir)$(TargetFileName).config</FinalOutputPath>
        <TargetPath>$(TargetFileName).config</TargetPath>
        <!-- For compatibility with 2.0 -->
        <OriginalItemSpec>$(AppConfig)</OriginalItemSpec>
      </_BuiltProjectOutputGroupOutputIntermediate>
    </ItemGroup>
    <ItemGroup>
      <_IsolatedComReference Include="@(COMReference)" Condition=" '%(COMReference.Isolated)' == 'true' " />
      <_IsolatedComReference Include="@(COMFileReference)" Condition=" '%(COMFileReference.Isolated)' == 'true' " />
    </ItemGroup>
    <!-- This item represents the native manifest, example: WindowsApplication1.exe.manifest or Native.ClassLibrary1.manifest -->
    <ItemGroup>
      <_BuiltProjectOutputGroupOutputIntermediate Include="$(OutDir)$(_DeploymentTargetApplicationManifestFileName)" Condition="'@(NativeReference)'!='' or '@(_IsolatedComReference)'!=''">
        <TargetPath>$(_DeploymentTargetApplicationManifestFileName)</TargetPath>
        <!-- For compatibility with 2.0 -->
        <OriginalItemSpec>$(OutDir)$(_DeploymentTargetApplicationManifestFileName)</OriginalItemSpec>
      </_BuiltProjectOutputGroupOutputIntermediate>
    </ItemGroup>
    <!-- Convert intermediate items into final items; this way we can get the full path for each item -->
    <ItemGroup>
      <BuiltProjectOutputGroupOutput Include="@(_BuiltProjectOutputGroupOutputIntermediate->'%(FullPath)')">
        <!-- For compatibility with 2.0 -->
        <OriginalItemSpec Condition="'%(_BuiltProjectOutputGroupOutputIntermediate.OriginalItemSpec)' == ''">%(_BuiltProjectOutputGroupOutputIntermediate.FullPath)</OriginalItemSpec>
      </BuiltProjectOutputGroupOutput>
    </ItemGroup>
  </Target>
  <!--
    ============================================================
                                        DebugSymbolsProjectOutputGroup

    This target performs population of the Debug Symbols project output group.
    ============================================================
    -->
  <PropertyGroup>
    <DebugSymbolsProjectOutputGroupDependsOn />
  </PropertyGroup>
  <ItemGroup Condition="'$(_DebugSymbolsProduced)' != 'false' and '$(OutputType)' != 'winmdobj'">
    <DebugSymbolsProjectOutputGroupOutput Include="@(_DebugSymbolsIntermediatePath->'%(FullPath)')">
      <FinalOutputPath>@(_DebugSymbolsOutputPath->'%(FullPath)')</FinalOutputPath>
      <TargetPath>@(_DebugSymbolsIntermediatePath->'%(Filename)%(Extension)')</TargetPath>
    </DebugSymbolsProjectOutputGroupOutput>
  </ItemGroup>
  <ItemGroup Condition="'$(_DebugSymbolsProduced)' != 'false' and '$(OutputType)' == 'winmdobj'">
    <WinMDExpOutputPdbItem Include="$(WinMDExpOutputPdb)" Condition="'$(WinMDExpOutputPdb)' != ''" />
    <WinMDExpFinalOutputPdbItem Include="$(_WinMDDebugSymbolsOutputPath)" Condition="'$(_WinMDDebugSymbolsOutputPath)' != ''" />
    <DebugSymbolsProjectOutputGroupOutput Include="@(WinMDExpOutputPdbItem->'%(FullPath)')">
      <FinalOutputPath>@(WinMDExpFinalOutputPdbItem->'%(FullPath)')</FinalOutputPath>
      <TargetPath>@(WinMDExpOutputPdbItem->'%(Filename)%(Extension)')</TargetPath>
    </DebugSymbolsProjectOutputGroupOutput>
  </ItemGroup>
  <Target Name="DebugSymbolsProjectOutputGroup" Returns="@(DebugSymbolsProjectOutputGroupOutput)" DependsOnTargets="$(DebugSymbolsProjectOutputGroupDependsOn)" />
  <!--
    ============================================================
                                        DocumentationProjectOutputGroup

    This target performs population of the Documentation project output group.
    ============================================================
    -->
  <PropertyGroup>
    <DocumentationProjectOutputGroupDependsOn />
  </PropertyGroup>
  <ItemGroup Condition="'$(DocumentationFile)'!='' and '$(OutputType)' != 'winmdobj'">
    <DocumentationProjectOutputGroupOutput Include="@(DocFileItem->'%(FullPath)')">
      <FinalOutputPath>@(FinalDocFile)</FinalOutputPath>
      <IsKeyOutput>true</IsKeyOutput>
      <TargetPath>@(DocFileItem->'%(Filename)%(Extension)')</TargetPath>
    </DocumentationProjectOutputGroupOutput>
  </ItemGroup>
  <ItemGroup Condition="'$(DocumentationFile)' != '' and '$(OutputType)' == 'winmdobj'">
    <WinMDOutputDocumentationFileItem Include="$(WinMDOutputDocumentationFile)" Condition="'$(WinMDOutputDocumentationFile)' != ''" />
    <WinMDExpFinalOutputDocItem Include="$(_WinMDDocFileOutputPath)" Condition="'$(_WinMDDocFileOutputPath)' != ''" />
    <DocumentationProjectOutputGroupOutput Include="@(WinMDOutputDocumentationFileItem->'%(FullPath)')">
      <FinalOutputPath>@(WinMDExpFinalOutputDocItem->'%(FullPath)')</FinalOutputPath>
      <TargetPath>@(WinMDOutputDocumentationFileItem->'%(Filename)%(Extension)')</TargetPath>
    </DocumentationProjectOutputGroupOutput>
  </ItemGroup>
  <Target Name="DocumentationProjectOutputGroup" Returns="@(DocumentationProjectOutputGroupOutput)" DependsOnTargets="$(DocumentationProjectOutputGroupDependsOn)" />
  <!--
    ============================================================
                                        SatelliteDllsProjectOutputGroup

    This target performs population of the Satellite Files project output group.
    ============================================================
    -->
  <PropertyGroup>
    <SatelliteDllsProjectOutputGroupDependsOn>PrepareForBuild;PrepareResourceNames</SatelliteDllsProjectOutputGroupDependsOn>
  </PropertyGroup>
  <Target Name="SatelliteDllsProjectOutputGroup" Returns="@(SatelliteDllsProjectOutputGroupOutput)" DependsOnTargets="$(SatelliteDllsProjectOutputGroupDependsOn)">
    <ItemGroup>
      <SatelliteDllsProjectOutputGroupOutputIntermediate Include="$(IntermediateOutputPath)%(EmbeddedResource.Culture)\$(TargetName).resources.dll" Condition="'%(WithCulture)' == 'true'">
        <TargetPath>%(EmbeddedResource.Culture)\$(TargetName).resources.dll</TargetPath>
      </SatelliteDllsProjectOutputGroupOutputIntermediate>
    </ItemGroup>
    <!-- Convert intermediate items into final items; this way we can get the full path for each item. -->
    <ItemGroup>
      <SatelliteDllsProjectOutputGroupOutput Include="@(SatelliteDllsProjectOutputGroupOutputIntermediate->'%(FullPath)')">
        <!-- For compatibility with 2.0 -->
        <OriginalItemSpec>%(SatelliteDllsProjectOutputGroupOutputIntermediate.Identity)</OriginalItemSpec>
      </SatelliteDllsProjectOutputGroupOutput>
    </ItemGroup>
  </Target>
  <!--
    ============================================================
                                        SourceFilesProjectOutputGroup

    This target performs population of the Source Files project output group.
    Source files are items in the project whose type is "Compile" and "EmbeddedResource".
    ============================================================
    -->
  <PropertyGroup>
    <SourceFilesProjectOutputGroupDependsOn>PrepareForBuild;AssignTargetPaths</SourceFilesProjectOutputGroupDependsOn>
  </PropertyGroup>
  <Target Name="SourceFilesProjectOutputGroup" Returns="@(SourceFilesProjectOutputGroupOutput)" DependsOnTargets="$(SourceFilesProjectOutputGroupDependsOn)">
    <AssignTargetPath Files="@(Compile)" RootFolder="$(MSBuildProjectDirectory)">
      <Output TaskParameter="AssignedFiles" ItemName="_CompileWithTargetPath" />
    </AssignTargetPath>
    <ItemGroup>
      <!-- First we deal with Compile, EmbeddedResource and AppConfig -->
      <SourceFilesProjectOutputGroupOutput Include="@(_CompileWithTargetPath->'%(FullPath)');@(EmbeddedResource->'%(FullPath)');@(_LicxFile->'%(FullPath)');@(AppConfigWithTargetPath->'%(FullPath)')" />
      <!-- Include the project file -->
      <SourceFilesProjectOutputGroupOutput Include="$(MSBuildProjectFullPath)">
        <!-- For compatibility with 2.0 -->
        <OriginalItemSpec>$(MSBuildProjectFullPath)</OriginalItemSpec>
        <TargetPath>$(ProjectFileName)</TargetPath>
      </SourceFilesProjectOutputGroupOutput>
    </ItemGroup>
  </Target>
  <!-- Get just the compile items -->
  <Target Name="GetCompile" Returns="@(Compile)" />
  <!--
    ============================================================
                                        ContentFilesProjectOutputGroup

    This target performs population of the Content Files project output group.
    Content files are items in the project whose type is "Content".
    ============================================================
    -->
  <PropertyGroup>
    <ContentFilesProjectOutputGroupDependsOn>PrepareForBuild;AssignTargetPaths</ContentFilesProjectOutputGroupDependsOn>
  </PropertyGroup>
  <Target Name="ContentFilesProjectOutputGroup" Returns="@(ContentFilesProjectOutputGroupOutput)" DependsOnTargets="$(ContentFilesProjectOutputGroupDependsOn)">
    <!-- Convert items into final items; this way we can get the full path for each item. -->
    <ItemGroup>
      <ContentFilesProjectOutputGroupOutput Include="@(ContentWithTargetPath->'%(FullPath)')" />
    </ItemGroup>
  </Target>
  <!--
    ============================================================
                                        SGenFilesOutputGroup

    This target performs population of the GenerateSerializationAssemblies Files project output group.
    GenerateSerializationAssemblies files are those generated by the GenerateSerializationAssemblies target and task.
    ============================================================
    -->
  <PropertyGroup>
    <SGenFilesOutputGroupDependsOn />
  </PropertyGroup>
  <ItemGroup Condition="'$(_SGenGenerateSerializationAssembliesConfig)' == 'On' or ('@(WebReferenceUrl)'!='' and '$(_SGenGenerateSerializationAssembliesConfig)' == 'Auto')">
    <SGenFilesOutputGroupOutput Include="@(_OutputPathItem->'%(FullPath)$(_SGenDllName)')">
      <FinalOutputPath>@(_OutputPathItem->'%(FullPath)$(_SGenDllName)')</FinalOutputPath>
      <TargetPath>$(_SGenDllName)</TargetPath>
    </SGenFilesOutputGroupOutput>
  </ItemGroup>
  <Target Name="SGenFilesOutputGroup" Returns="@(SGenFilesOutputGroupOutput)" DependsOnTargets="$(SGenFilesOutputGroupDependsOn)" />
  <!--
    ============================================================
                                        SDKRelated Output groups

    These targets are to gather information from the SDKs.
    ============================================================
   -->
  <!-- Get the resolved SDK reference items -->
  <Target Name="GetResolvedSDKReferences" DependsOnTargets="ResolveSDKReferences" Returns="@(ResolvedSDKReference)" />
  <!--
    ============================================================
                                        PriFilesOutputGroup

    This target performs population of the pri files output group
    ============================================================
    -->
  <Target Name="PriFilesOutputGroup" Condition="'@(_ReferenceRelatedPaths)' != ''" DependsOnTargets="BuildOnlySettings;PrepareForBuild;AssignTargetPaths;ResolveReferences" Returns="@(PriFilesOutputGroupOutput)">
    <!-- This item represents dependent pri file's -->
    <ItemGroup>
      <PriFilesOutputGroupOutput Include="@(_ReferenceRelatedPaths->'%(FullPath)')" Condition="'%(Extension)' == '.pri'" />
    </ItemGroup>
  </Target>
  <PropertyGroup>
    <SDKRedistOutputGroupDependsOn>ResolveSDKReferences;ExpandSDKReferences</SDKRedistOutputGroupDependsOn>
  </PropertyGroup>
  <!--
    ============================================================
                                        SDKRedistOutputGroup

    This target gathers the Redist folders from the SDKs which have been resolved.
    ============================================================
  -->
  <Target Name="SDKRedistOutputGroup" Returns="@(SDKRedistOutputGroupOutput)" DependsOnTargets="$(SDKRedistOutputGroupDependsOn)">
    <!-- This list starts with the least specific files to the most specific so that later files can overwrite earlier files-->
    <ItemGroup>
      <SDKRedistOutputGroupOutput Include="@(ResolvedRedistFiles)" />
    </ItemGroup>
  </Target>
  <!--
    ***********************************************************************************************
    ***********************************************************************************************
                                                                AllProjectOutputGroupsDependencies Section
    ***********************************************************************************************
    ***********************************************************************************************
    -->
  <!--
    ============================================================
                                        AllProjectOutputGroupsDependencies
    ============================================================
    -->
  <Target Name="AllProjectOutputGroupsDependencies" DependsOnTargets="&#xD;&#xA;            BuiltProjectOutputGroupDependencies;&#xD;&#xA;            DebugSymbolsProjectOutputGroupDependencies;&#xD;&#xA;            SatelliteDllsProjectOutputGroupDependencies;&#xD;&#xA;            DocumentationProjectOutputGroupDependencies;&#xD;&#xA;            SGenFilesOutputGroupDependencies" />
  <!--
    ============================================================
                                        BuiltProjectOutputGroupDependencies

    This target performs population of the Built project output group dependencies.
    ============================================================
    -->
  <Target Name="BuiltProjectOutputGroupDependencies" DependsOnTargets="BuildOnlySettings;PrepareForBuild;AssignTargetPaths;ResolveReferences" Returns="@(BuiltProjectOutputGroupDependency)">
    <ItemGroup>
      <BuiltProjectOutputGroupDependency Include="@(ReferencePath->'%(FullPath)');&#xD;&#xA;                                                         @(ReferenceDependencyPaths->'%(FullPath)');&#xD;&#xA;                                                         @(NativeReferenceFile->'%(FullPath)');&#xD;&#xA;                                                         @(_DeploymentLooseManifestFile->'%(FullPath)');&#xD;&#xA;                                                         @(ResolvedIsolatedComModules->'%(FullPath)')" />
    </ItemGroup>
  </Target>
  <!--
    ============================================================
                                        DebugSymbolsProjectOutputGroupDependencies

    This target performs population of the dependencies for the debug symbols project output group.
    ============================================================
    -->
  <Target Name="DebugSymbolsProjectOutputGroupDependencies" Condition="'$(DebugSymbols)'!='false'" DependsOnTargets="BuildOnlySettings;PrepareForBuild;AssignTargetPaths;ResolveReferences" Returns="@(DebugSymbolsProjectOutputGroupDependency)">
    <!-- This item represents dependent PDB's -->
    <ItemGroup>
      <DebugSymbolsProjectOutputGroupDependency Include="@(_ReferenceRelatedPaths->'%(FullPath)')" Condition="'%(Extension)' == '.pdb'" />
    </ItemGroup>
  </Target>
  <!--
    ============================================================
                                        SatelliteDllsProjectOutputGroupDependencies

    This target performs population of the dependencies for the satellite files project output group.
    ============================================================
    -->
  <Target Name="SatelliteDllsProjectOutputGroupDependencies" DependsOnTargets="BuildOnlySettings;PrepareForBuild;AssignTargetPaths;ResolveReferences" Returns="@(SatelliteDllsProjectOutputGroupDependency)">
    <!-- This item represents dependent satellites -->
    <ItemGroup>
      <SatelliteDllsProjectOutputGroupDependency Include="@(ReferenceSatellitePaths->'%(FullPath)')" />
    </ItemGroup>
  </Target>
  <!--
    ============================================================
                                        DocumentationProjectOutputGroupDependencies

    This target performs population of the dependencies for the documentation project output group.
    ============================================================
    -->
  <Target Name="DocumentationProjectOutputGroupDependencies" Condition="'$(DocumentationFile)'!=''" DependsOnTargets="BuildOnlySettings;PrepareForBuild;AssignTargetPaths;ResolveReferences" Returns="@(DocumentationProjectOutputGroupDependency)">
    <!-- This item represents dependent XMLs -->
    <ItemGroup>
      <DocumentationProjectOutputGroupDependency Include="@(_ReferenceRelatedPaths->'%(FullPath)')" Condition="'%(Extension)' == '.xml'" />
    </ItemGroup>
  </Target>
  <!--
    ============================================================
                                        SGenFilesOutputGroupDependencies

    This target performs population of the dependencies for the GenerateSerializationAssemblies project output group.
    ============================================================
    -->
  <Target Name="SGenFilesOutputGroupDependencies" DependsOnTargets="BuildOnlySettings;PrepareForBuild;AssignTargetPaths;ResolveReferences" Returns="@(SGenFilesOutputGroupDependency)">
    <!-- This item represents sgen xml serializer dll's -->
    <ItemGroup>
      <SGenFilesOutputGroupDependency Include="@(_ReferenceSerializationAssemblyPaths->'%(FullPath)')" Condition="'%(Extension)' == '.dll'" />
    </ItemGroup>
  </Target>
  <PropertyGroup>
    <CodeAnalysisTargets Condition="'$(CodeAnalysisTargets)'==''">$(MSBuildExtensionsPath32)\Microsoft\VisualStudio\v$(VisualStudioVersion)\CodeAnalysis\Microsoft.CodeAnalysis.targets</CodeAnalysisTargets>
  </PropertyGroup>
  <!--
============================================================================================================================================
  <Import Project="$(CodeAnalysisTargets)" Condition="Exists('$(CodeAnalysisTargets)')">

C:\Program Files (x86)\MSBuild\Microsoft\VisualStudio\v14.0\CodeAnalysis\Microsoft.CodeAnalysis.targets
============================================================================================================================================
-->
  <UsingTask TaskName="SetEnvironmentVariable" TaskFactory="CodeTaskFactory" AssemblyFile="$(MSBuildToolsPath)\Microsoft.Build.Tasks.v12.0.dll">
    <ParameterGroup>
      <EnvKey ParameterType="System.String" Required="true" />
      <EnvValue ParameterType="System.String" Required="true" />
    </ParameterGroup>
    <Task>
      <Using Namespace="System" />
      <Code Type="Fragment" Language="cs"><![CDATA[
            try {
                Environment.SetEnvironmentVariable(EnvKey, EnvValue, System.EnvironmentVariableTarget.Process);
            }
            catch  {
            }
        ]]></Code>
    </Task>
  </UsingTask>
  <!-- Global properties for all analyzers -->
  <PropertyGroup>
    <CodeAnalysisStaticAnalysisDirectory Condition="'$(CodeAnalysisStaticAnalysisDirectory)'==''">$(Registry:HKEY_LOCAL_MACHINE\Software\Microsoft\VisualStudio\14.0\Setup\EDev@StanDir)</CodeAnalysisStaticAnalysisDirectory>
    <!-- If we didn't find the first registry path, assume we're in a 64bit process. -->
    <!-- read registry from Wow6432Node -->
    <CodeAnalysisStaticAnalysisDirectory Condition="'$(CodeAnalysisStaticAnalysisDirectory)'==''">$(Registry:HKEY_LOCAL_MACHINE\Software\Wow6432Node\Microsoft\VisualStudio\14.0\Setup\EDev@StanDir)</CodeAnalysisStaticAnalysisDirectory>
    <!-- if we didn't find the registry path yet, then try Win8 Express location -->
    <CodeAnalysisStaticAnalysisDirectory Condition="'$(CodeAnalysisStaticAnalysisDirectory)'==''">$(Registry:HKEY_LOCAL_MACHINE\Software\Microsoft\VSWinExpress\14.0\Setup\EDev@StanDir)</CodeAnalysisStaticAnalysisDirectory>
    <!-- If we didn't find the registry path yet, then try Win8 Express 64-bit location -->
    <CodeAnalysisStaticAnalysisDirectory Condition="'$(CodeAnalysisStaticAnalysisDirectory)'==''">$(Registry:HKEY_LOCAL_MACHINE\Software\Wow6432Node\Microsoft\VSWinExpress\14.0\Setup\EDev@StanDir)</CodeAnalysisStaticAnalysisDirectory>
    <!-- If we didn't find the registry path yet, try WP Express locations -->
    <CodeAnalysisStaticAnalysisDirectory Condition="'$(CodeAnalysisStaticAnalysisDirectory)'==''">$(Registry:HKEY_LOCAL_MACHINE\Software\Microsoft\VPDExpress\14.0\Setup\EDev@StanDir)</CodeAnalysisStaticAnalysisDirectory>
    <!-- If we didn't find the registry path yet, try WP Express 64-bit locations -->
    <CodeAnalysisStaticAnalysisDirectory Condition="'$(CodeAnalysisStaticAnalysisDirectory)'==''">$(Registry:HKEY_LOCAL_MACHINE\Software\Wow6432Node\Microsoft\VPDExpress\14.0\Setup\EDev@StanDir)</CodeAnalysisStaticAnalysisDirectory>
    <!-- If we didn't find the registry path yet, try WD Express locations -->
    <CodeAnalysisStaticAnalysisDirectory Condition="'$(CodeAnalysisStaticAnalysisDirectory)'==''">$(Registry:HKEY_LOCAL_MACHINE\Software\Microsoft\WDExpress\14.0\Setup\EDev@StanDir)</CodeAnalysisStaticAnalysisDirectory>
    <!-- If we didn't find the registry path yet, try WD Express 64-bit locations -->
    <CodeAnalysisStaticAnalysisDirectory Condition="'$(CodeAnalysisStaticAnalysisDirectory)'==''">$(Registry:HKEY_LOCAL_MACHINE\Software\Wow6432Node\Microsoft\WDExpress\14.0\Setup\EDev@StanDir)</CodeAnalysisStaticAnalysisDirectory>
    <!-- Default rule set search paths -->
    <CodeAnalysisRuleSetDirectories Condition="'$(CodeAnalysisIgnoreBuiltInRuleSets)'!='true' and&#xD;&#xA;             '$(CodeAnalysisStaticAnalysisDirectory)'!=''">$(CodeAnalysisRuleSetDirectories);$(CodeAnalysisStaticAnalysisDirectory)\Rule Sets</CodeAnalysisRuleSetDirectories>
    <!-- 
         In scenario where we run CA from command-line , we don't get "CodeAnalysisVSSku" variable passed by the IDE, so in case of Express-only installation
         we attempt to load rule sets that are only present on Pro and above - and fail. Let's assume we're in "Express" mode if the Pro+ rule set doesn't exist.
     -->
    <CodeAnalysisVSSku Condition="'$(CodeAnalysisVSSku)'=='' and !Exists('$(CodeAnalysisStaticAnalysisDirectory)\Rule Sets\NativeRecommendedRules.ruleset')">Express</CodeAnalysisVSSku>
  </PropertyGroup>
  <PropertyGroup Condition="'$(RunCodeAnalysis)'=='true' or '$(RunCodeAnalysisOnce)'=='true'">
    <!-- 
       - Checking whether we should run Code Analysis only on specific project in the solution
       - Combine all variables into one "master" control variable to simplify conditions further below  
   -->
    <RunCodeAnalysisOnThisProject>true</RunCodeAnalysisOnThisProject>
    <RunCodeAnalysisOnThisProject Condition="'$(CodeAnalysisProjectFullPath)'!='' and '$(MSBuildProjectFullPath)'!='' and '$(MSBuildProjectFullPath)'!='$(CodeAnalysisProjectFullPath)'">false</RunCodeAnalysisOnThisProject>
  </PropertyGroup>
  <PropertyGroup Condition="'$(RunCodeAnalysisOnThisProject)'=='true'">
    <!-- Define the CODE_ANALYSIS constant -->
    <DefineConstants Condition="'$(Language)'=='C#' ">CODE_ANALYSIS;$(DefineConstants)</DefineConstants>
    <FinalDefineConstants Condition="'$(Language)'=='VB' ">CODE_ANALYSIS=-1,$(FinalDefineConstants)</FinalDefineConstants>
  </PropertyGroup>
  <PropertyGroup Condition="'$(LocalEspcPath)'=='' and '$(Language)'=='C++' and '$(RunCodeAnalysisOnThisProject)'=='true' and '$(CodeAnalysisVSSku)'!='Express'">
    <!-- use 32-bit version by default -->
    <LocalEspcPath>$(VCInstallDir)\bin\localespc.dll</LocalEspcPath>
    <!-- use 64-bit version if 64-bit cl.exe is used -->
    <LocalEspcPath Condition="'$(VCToolArchitecture)'=='Native64Bit'">$(VCInstallDir)\bin\amd64\localespc.dll</LocalEspcPath>
  </PropertyGroup>
  <ItemDefinitionGroup Condition="'$(Language)'=='C++' and '$(RunCodeAnalysisOnThisProject)'=='true'">
    <ClCompile>
      <PreprocessorDefinitions>CODE_ANALYSIS;%(PreprocessorDefinitions)</PreprocessorDefinitions>
      <!-- For the native x64 case, use the 64-bit DLL. -->
      <PREfastAdditionalPlugins Condition="Exists('$(LocalEspcPath)')">$(LocalEspcPath);%(PREfastAdditionalPlugins)</PREfastAdditionalPlugins>
    </ClCompile>
  </ItemDefinitionGroup>
  <!-- Global properties for all analyzers -->
  <!-- FxCop analyzer properties -->
  <PropertyGroup>
    <!-- FxCopDir must be considered for backwards compatibility with the Visual Studio 2005 task, except within the context of a Team Build build. -->
    <CodeAnalysisPath Condition="'$(CodeAnalysisPath)'=='' and '$(FxCopDir)'!='' and '$(TeamBuildConstants)'==''">$(FxCopDir)</CodeAnalysisPath>
    <CodeAnalysisPath Condition="'$(CodeAnalysisPath)'==''">$(Registry:HKEY_LOCAL_MACHINE\Software\Microsoft\VisualStudio\14.0\Setup\EDev@FxCopDir)</CodeAnalysisPath>
    <!-- If we didn't find the first registry path, assume we're in a 64bit process. -->
    <!-- read registry from Wow6432Node -->
    <CodeAnalysisPath Condition="'$(CodeAnalysisPath)'==''">$(Registry:HKEY_LOCAL_MACHINE\Software\Wow6432Node\Microsoft\VisualStudio\14.0\Setup\EDev@FxCopDir)</CodeAnalysisPath>
    <!-- If we didn't find the registry path yet, try Win8 Express locations -->
    <CodeAnalysisPath Condition="'$(CodeAnalysisPath)'==''">$(Registry:HKEY_LOCAL_MACHINE\Software\Microsoft\VSWinExpress\14.0\Setup\EDev@FxCopDir)</CodeAnalysisPath>
    <CodeAnalysisPath Condition="'$(CodeAnalysisPath)'==''">$(Registry:HKEY_LOCAL_MACHINE\Software\Wow6432Node\Microsoft\VSWinExpress\14.0\Setup\EDev@FxCopDir)</CodeAnalysisPath>
    <!-- If we didn't find the registry path yet, try WP Express locations -->
    <CodeAnalysisPath Condition="'$(CodeAnalysisPath)'==''">$(Registry:HKEY_LOCAL_MACHINE\Software\Microsoft\VPDExpress\14.0\Setup\EDev@FxCopDir)</CodeAnalysisPath>
    <CodeAnalysisPath Condition="'$(CodeAnalysisPath)'==''">$(Registry:HKEY_LOCAL_MACHINE\Software\Wow6432Node\Microsoft\VPDExpress\14.0\Setup\EDev@FxCopDir)</CodeAnalysisPath>
    <!-- If we didn't find the registry path yet, try WD Express locations -->
    <CodeAnalysisPath Condition="'$(CodeAnalysisPath)'==''">$(Registry:HKEY_LOCAL_MACHINE\Software\Microsoft\WDExpress\14.0\Setup\EDev@FxCopDir)</CodeAnalysisPath>
    <CodeAnalysisPath Condition="'$(CodeAnalysisPath)'==''">$(Registry:HKEY_LOCAL_MACHINE\Software\Wow6432Node\Microsoft\WDExpress\14.0\Setup\EDev@FxCopDir)</CodeAnalysisPath>
    <!-- Default FxCop settings -->
    <CodeAnalysisApplyLogFileXsl Condition="'$(CodeAnalysisApplyLogFileXsl)'==''">false</CodeAnalysisApplyLogFileXsl>
    <CodeAnalysisFailOnMissingRules Condition="'$(CodeAnalysisFailOnMissingRules)'==''">false</CodeAnalysisFailOnMissingRules>
    <CodeAnalysisForceOutput Condition="'$(CodeAnalysisForceOutput)'==''">true</CodeAnalysisForceOutput>
    <CodeAnalysisGenerateSuccessFile Condition="'$(CodeAnalysisGenerateSuccessFile)'==''">true</CodeAnalysisGenerateSuccessFile>
    <CodeAnalysisIgnoreGeneratedCode Condition="'$(CodeAnalysisIgnoreGeneratedCode)'==''">true</CodeAnalysisIgnoreGeneratedCode>
    <CodeAnalysisIgnoreInvalidTargets Condition="'$(CodeAnalysisIgnoreInvalidTargets)'==''">true</CodeAnalysisIgnoreInvalidTargets>
    <CodeAnalysisIgnoreMissingIndirectReferences Condition="'$(CodeAnalysisIgnoreMissingIndirectReferences)'==''">false</CodeAnalysisIgnoreMissingIndirectReferences>
    <CodeAnalysisInputAssembly Condition="'$(CodeAnalysisInputAssembly)'==''">$(OutDir)$(TargetFileName)</CodeAnalysisInputAssembly>
    <CodeAnalysisLogFile Condition="'$(CodeAnalysisLogFile)'==''">$(CodeAnalysisInputAssembly).CodeAnalysisLog.xml</CodeAnalysisLogFile>
    <CodeAnalysisModuleSuppressionsFile Condition="'$(CodeAnalysisModuleSuppressionsFile)'==''">GlobalSuppressions$(DefaultLanguageSourceExtension)</CodeAnalysisModuleSuppressionsFile>
    <CodeAnalysisOverrideRuleVisibilities Condition="'$(CodeAnalysisOverrideRuleVisibilities)'==''">false</CodeAnalysisOverrideRuleVisibilities>
    <CodeAnalysisOutputToConsole Condition="'$(CodeAnalysisOutputToConsole)'==''">false</CodeAnalysisOutputToConsole>
    <CodeAnalysisQuiet Condition="'$(CodeAnalysisQuiet)'==''">false</CodeAnalysisQuiet>
    <!--
             Do not add the built-in rule directories in any of the following conditions:
             1. CodeAnalysisRuleAssemblies is not empty, CodeAnalysisRuleDirectories is empty, and CodeAnalysisRuleSet is empty. (This is the case when CodeAnalysisRuleAssemblies will be used.)
             2. CodeAnalysisIgnoreBuiltInRules is true.
             3. CodeAnalysisPath is empty.
             4. CodeAnalysisProject is not empty (i.e., an FxCop project file is used).

             The condition below checks ensures none of these four are true.
        -->
    <CodeAnalysisRuleDirectories Condition="('$(CodeAnalysisRuleAssemblies)'=='' or '$(CodeAnalysisRuleDirectories)'!='' or '$(CodeAnalysisRuleSet)'!='') and &#xD;&#xA;            '$(CodeAnalysisIgnoreBuiltInRules)'!='true' and &#xD;&#xA;            '$(CodeAnalysisPath)'!='' and &#xD;&#xA;            '$(CodeAnalysisProject)'==''">$(CodeAnalysisRuleDirectories);$(CodeAnalysisPath)\Rules</CodeAnalysisRuleDirectories>
    <!-- We emit active and suppressed messages in the output log when running code analysis within Visual Studio.
         Delete the below line if you do not want to see suppressed messages within Visual Studio. -->
    <CodeAnalysisSaveMessagesToReport Condition="'$(CodeAnalysisSaveMessagesToReport)'=='' and '$(RunCodeAnalysisOnce)'=='true'">Active,Excluded</CodeAnalysisSaveMessagesToReport>
    <!-- We only emit active messages in the output log when running code analysis from the command line. -->
    <CodeAnalysisSaveMessagesToReport Condition="'$(CodeAnalysisSaveMessagesToReport)'==''">Active</CodeAnalysisSaveMessagesToReport>
    <CodeAnalysisSearchGlobalAssemblyCache Condition="'$(CodeAnalysisSearchGlobalAssemblyCache)'==''">true</CodeAnalysisSearchGlobalAssemblyCache>
    <CodeAnalysisSucceededFile Condition="'$(CodeAnalysisSucceededFile)'==''">$(CodeAnalysisInputAssembly).lastcodeanalysissucceeded</CodeAnalysisSucceededFile>
    <CodeAnalysisSummary Condition="'$(CodeAnalysisSummary)'==''">false</CodeAnalysisSummary>
    <CodeAnalysisTimeout Condition="'$(CodeAnalysisTimeout)'==''">120</CodeAnalysisTimeout>
    <CodeAnalysisTreatWarningsAsErrors Condition="'$(CodeAnalysisTreatWarningsAsErrors)'==''">false</CodeAnalysisTreatWarningsAsErrors>
    <CodeAnalysisUpdateProject Condition="'$(CodeAnalysisUpdateProject)'==''">false</CodeAnalysisUpdateProject>
    <CodeAnalysisUseTypeNameInSuppression Condition="'$(CodeAnalysisUseTypeNameInSuppression)'==''">true</CodeAnalysisUseTypeNameInSuppression>
    <CodeAnalysisVerbose Condition="'$(CodeAnalysisVerbose)'==''">false</CodeAnalysisVerbose>
  </PropertyGroup>
  <!-- Select appropriate default rule set depending on project type and VS Sku-->
  <Choose>
    <When Condition="!Exists('$(CodeAnalysisRuleSet)') and ('$(CodeAnalysisVSSku)'=='Express' or ('$(CodeAnalysisRules)'=='' and '$(CodeAnalysisRuleAssemblies)'=='' and '$(CodeAnalysisRuleSet)'==''))">
      <Choose>
        <When Condition="'$(Language)'=='C++' and '$(CLRSupport)'=='true' and '$(CodeAnalysisVSSku)'=='Express'">
          <PropertyGroup>
            <CodeAnalysisRuleSet>MixedMinimumRules.ruleset</CodeAnalysisRuleSet>
          </PropertyGroup>
        </When>
        <When Condition="'$(Language)'=='C++' and '$(CLRSupport)'=='true'">
          <PropertyGroup>
            <CodeAnalysisRuleSet>MixedRecommendedRules.ruleset</CodeAnalysisRuleSet>
          </PropertyGroup>
        </When>
        <When Condition="'$(Language)'=='C++' and '$(CodeAnalysisVSSku)'=='Express'">
          <PropertyGroup>
            <CodeAnalysisRuleSet>NativeMinimumRules.ruleset</CodeAnalysisRuleSet>
          </PropertyGroup>
        </When>
        <When Condition="'$(Language)'=='C++'">
          <PropertyGroup>
            <CodeAnalysisRuleSet>NativeRecommendedRules.ruleset</CodeAnalysisRuleSet>
          </PropertyGroup>
        </When>
        <When Condition="'$(CodeAnalysisVSSku)'=='Express'">
          <PropertyGroup>
            <CodeAnalysisRuleSet>ManagedMinimumRules.ruleset</CodeAnalysisRuleSet>
          </PropertyGroup>
        </When>
        <Otherwise>
          <PropertyGroup>
            <CodeAnalysisRuleSet>MinimumRecommendedRules.ruleset</CodeAnalysisRuleSet>
          </PropertyGroup>
        </Otherwise>
      </Choose>
    </When>
  </Choose>
  <!-- C#/VB specific properties -->
  <PropertyGroup Condition="'$(Language)'=='C#' or '$(Language)'=='VB'">
    <!-- Run Code Analysis after the build, but before running the application-->
    <PrepareForRunDependsOn>$(PrepareForRunDependsOn);RunCodeAnalysis</PrepareForRunDependsOn>
    <RunCodeAnalysisDependsOn>$(RunCodeAnalysisDependsOn);Compile</RunCodeAnalysisDependsOn>
  </PropertyGroup>
  <!-- C++ specific properties -->
  <PropertyGroup Condition="'$(Language)'=='C++'">
    <!-- Run Code Analysis after the build, but before running the application-->
    <AfterBuildLinkTargets>$(AfterBuildLinkTargets);RunMergeNativeCodeAnalysis;RunNativeCodeAnalysis</AfterBuildLinkTargets>
    <AfterBuildLinkTargets Condition="'$(CLRSupport)'=='true'">$(AfterBuildLinkTargets);RunCodeAnalysis</AfterBuildLinkTargets>
    <RunMergeNativeCodeAnalysisDependsOn>ClCompile</RunMergeNativeCodeAnalysisDependsOn>
    <RunMergeNativeCodeAnalysisDependsOn Condition="'$(RunCodeAnalysisDependsOn)'!=''">$(RunCodeAnalysisDependsOn);$(RunMergeNativeCodeAnalysisDependsOn)</RunMergeNativeCodeAnalysisDependsOn>
    <RunCodeAnalysisDependsOn>$(RunCodeAnalysisDependsOn);ClCompile;RunMergeNativeCodeAnalysis</RunCodeAnalysisDependsOn>
    <PrepareForBuildDependsOn>$(PrepareForBuildDependsOn);SetCABuildNativeEnvironmentVariables</PrepareForBuildDependsOn>
    <ExtensionsToDeleteOnClean>$(ExtensionsToDeleteOnClean);$(CodeAnalysisLogFile);$(CodeAnalysisSucceededFile)</ExtensionsToDeleteOnClean>
    <CodeAnalysisTLogFile>$(IntDir)CodeAnalysis.read.1.tlog</CodeAnalysisTLogFile>
    <NativeCodeAnalysisTLogFile>$(IntDir)NativeCodeAnalysis.read.1.tlog</NativeCodeAnalysisTLogFile>
    <CAExcludePath Condition="'$(WindowsSDK_IncludePath)'!=''">$(WindowsSDK_IncludePath);$(CAExcludePath)</CAExcludePath>
    <CAExcludePath Condition="Exists('$(VCInstallDir)include')">$(VCInstallDir)include;$(CAExcludePath)</CAExcludePath>
    <CAExcludePath Condition="Exists('$(VCInstallDir)atlmfc\include')">$(VCInstallDir)atlmfc\include;$(CAExcludePath)</CAExcludePath>
  </PropertyGroup>
  <Target Name="SetCABuildNativeEnvironmentVariables">
    <SetEnvironmentVariable Condition="'$(Language)'=='C++' and '$(CAExcludePath)' != ''" EnvValue="$(CAExcludePath)" EnvKey="CAExcludePath" />
  </Target>
  <ItemDefinitionGroup Condition="'$(Language)'=='C++' and '$(RunCodeAnalysisOnThisProject)'=='true'">
    <ClCompile>
      <EnablePREFast>true</EnablePREFast>
      <!-- In Dev11 we enable quiet output since we don't show results in the Error List, but in the new CA window,
           however for the projects using v10 toolset, we want the results to go to the Error List 
           (otherwise they will be swallowed, since new CA window doesn't support older-style CA output) -->
      <AdditionalOptions Condition="'$(PlatformToolsetVersion)'&lt;'110'">%(ClCompile.AdditionalOptions)</AdditionalOptions>
      <AdditionalOptions Condition="'$(PlatformToolsetVersion)'&gt;='110'">%(ClCompile.AdditionalOptions)  /analyze:quiet</AdditionalOptions>
      <PREfastLog Condition="'$(PlatformToolsetVersion)'&lt;'120'">$(IntDir)%(FileName)%(Extension).nativecodeanalysis.xml</PREfastLog>
      <PREfastLogFile Condition="'$(PlatformToolsetVersion)'&gt;='120'">%(ObjectFileName)%(FileName).nativecodeanalysis.xml</PREfastLogFile>
    </ClCompile>
  </ItemDefinitionGroup>
  <!-- Make AdditionalFiles and CodeAnalysisDictionary available as a Build Action in Visual Studio -->
  <ItemGroup>
    <AvailableItemName Include="AdditionalFiles" />
    <AvailableItemName Include="CodeAnalysisDictionary" />
  </ItemGroup>
  <!-- FxCop analyzer properties -->
  <!-- Managed analyzer targets -->
  <PropertyGroup>
    <RunCodeAnalysisInputs>$(CodeAnalysisInputAssembly)</RunCodeAnalysisInputs>
    <RunCodeAnalysisInputs Condition="'$(CodeAnalysisRuleSet)'!='' and Exists('$(CodeAnalysisRuleSet)')">$(RunCodeAnalysisInputs);$(CodeAnalysisRuleSet)</RunCodeAnalysisInputs>
    <RunCodeAnalysisInputs Condition="'$(CodeAnalysisRuleSet)'!='' and !Exists('$(CodeAnalysisRuleSet)') and Exists('$(ProjectDir)$(CodeAnalysisRuleSet)')">$(RunCodeAnalysisInputs);$(ProjectDir)$(CodeAnalysisRuleSet)</RunCodeAnalysisInputs>
  </PropertyGroup>
  <UsingTask TaskName="Microsoft.Build.Tasks.CodeAnalysis" AssemblyFile=".\FxCopTask.dll" />
  <Target Name="RunCodeAnalysis" Condition="'$(RunCodeAnalysisOnThisProject)'=='true'" Inputs="$(RunCodeAnalysisInputs)" Outputs="$(CodeAnalysisLogFile);$(CodeAnalysisSucceededFile)" DependsOnTargets="$(RunCodeAnalysisDependsOn)">
    <!-- Build CodeAnalysisReferencePath inside of the RunCodeAnalysis target to ensure that ReferencePath -->
    <!-- has already been populated by the ResolveReferences target prior to using it. -->
    <ItemGroup>
      <CodeAnalysisReferencePath Include="@(ReferencePath)" />
      <CodeAnalysisReferencePath Condition="'$(Language)'=='VB' and '$(VBRuntimePath)'!=''" Include="$(VBRuntimePath)" />
    </ItemGroup>
    <!-- Add AdditionalUsingDirectories as reference assembly paths for C++ projects -->
    <ItemGroup>
      <CodeAnalysisDependentAssemblyPaths Condition="'$(Language)'=='C++'" Include="%(ClCompile.AdditionalUsingDirectories)" />
    </ItemGroup>
    <!-- If it is winmd file than we want to analyze winmdobj instead of winmd file -->
    <PropertyGroup>
      <CodeAnalysisInputAssembly Condition="'$(OutputType)'=='winmdobj'">@(IntermediateAssembly)</CodeAnalysisInputAssembly>
      <CodeAnalysisInputAssembly Condition="'$(OutputType)'=='winmdobj' and '$(Language)'=='VB'">$(IntermediateOutputPath)\TempCA\$(TargetName)$(TargetExt)</CodeAnalysisInputAssembly>
    </PropertyGroup>
    <!-- VBCompiler issue: fix the name of PDB file for winmdobj assembly -->
    <Copy Condition="'$(OutputType)'=='winmdobj' and '$(Language)'=='VB'" DestinationFiles="$(IntermediateOutputPath)\TempCA\$(TargetName).pdb" SourceFiles="$(PdbFile)" OverwriteReadOnlyFiles="True" />
    <Copy Condition="'$(OutputType)'=='winmdobj' and '$(Language)'=='VB'" DestinationFolder="$(IntermediateOutputPath)\TempCA\" SourceFiles="@(IntermediateAssembly)" OverwriteReadOnlyFiles="True" />
    <CodeAnalysis Condition="'$(RunCodeAnalysisOnThisProject)'=='true'" AdditionalOptions="$(CodeAnalysisAdditionalOptions)" AlternativeToolName="$(CodeAnalysisAlternativeToolName)" AnalysisTimeout="$(CodeAnalysisTimeout)" ApplyLogFileXsl="$(CodeAnalysisApplyLogFileXsl)" Assemblies="$(CodeAnalysisInputAssembly)" ConsoleXsl="$(CodeAnalysisConsoleXsl)" Culture="$(CodeAnalysisCulture)" DependentAssemblyPaths="@(CodeAnalysisDependentAssemblyPaths)" Dictionaries="@(CodeAnalysisDictionary)" DisableReferenceSwitchGeneration="$(CodeAnalysisDisableReferenceSwitchGeneration)" FailOnMissingRules="$(CodeAnalysisFailOnMissingRules)" FilesWritten="$(CodeAnalysisLogFile);$(CodeAnalysisSucceededFile)" ForceOutput="$(CodeAnalysisForceOutput)" GenerateSuccessFile="$(CodeAnalysisGenerateSuccessFile)" IgnoreBuildTaskWarnings="$(CodeAnalysisIgnoreBuildTaskWarnings)" IgnoreGeneratedCode="$(CodeAnalysisIgnoreGeneratedCode)" IgnoreInvalidTargets="$(CodeAnalysisIgnoreInvalidTargets)" IgnoreMissingIndirectReferences="$(CodeAnalysisIgnoreMissingIndirectReferences)" Imports="@(CodeAnalysisImport)" LogFile="$(CodeAnalysisLogFile)" LogFileXsl="$(CodeAnalysisLogFileXsl)" MSBuildProjectDirectory="$(MSBuildProjectDirectory)" OutputToConsole="$(CodeAnalysisOutputToConsole)" OverrideRuleVisibilities="$(CodeAnalysisOverrideRuleVisibilities)" NeverReportRuleErrors="$(CodeAnalysisNeverReportRuleErrors)" PlatformPath="$(CodeAnalysisPlatformPath)" Project="$(CodeAnalysisProject)" Quiet="$(CodeAnalysisQuiet)" References="@(CodeAnalysisReferencePath)" RuleAssemblies="$(CodeAnalysisRuleAssemblies)" RuleDirectories="$(CodeAnalysisRuleDirectories)" Rules="$(CodeAnalysisRules)" RuleSet="$(CodeAnalysisRuleSet)" RuleSetDirectories="$(CodeAnalysisRuleSetDirectories)" RuleSetOverrides="$(CodeAnalysisRuleSetOverrides)" SaveMessagesToReport="$(CodeAnalysisSaveMessagesToReport)" SearchGlobalAssemblyCache="$(CodeAnalysisSearchGlobalAssemblyCache)" SuccessFile="$(CodeAnalysisSucceededFile)" Summary="$(CodeAnalysisSummary)" TargetFrameworkVersion="$(TargetFrameworkVersion)" TLogFile="$(CodeAnalysisTLogFile)" ToolPath="$(CodeAnalysisPath)" TreatWarningsAsErrors="$(CodeAnalysisTreatWarningsAsErrors)" UpdateProject="$(CodeAnalysisUpdateProject)" Verbose="$(CodeAnalysisVerbose)">
      <Output TaskParameter="FilesWritten" ItemName="FileWrites" />
    </CodeAnalysis>
  </Target>
  <!-- Managed analyzer targets -->
  <!-- Native analyzer targets -->
  <PropertyGroup>
    <RunNativeCodeAnalysisInputs>$(OutputFile)</RunNativeCodeAnalysisInputs>
    <RunNativeCodeAnalysisInputs Condition="'$(CodeAnalysisRuleSet)'!='' and Exists('$(CodeAnalysisRuleSet)')">$(RunNativeCodeAnalysisInputs);$(CodeAnalysisRuleSet)</RunNativeCodeAnalysisInputs>
    <RunNativeCodeAnalysisInputs Condition="'$(CodeAnalysisRuleSet)'!='' and !Exists('$(CodeAnalysisRuleSet)') and Exists('$(ProjectDir)$(CodeAnalysisRuleSet)')">$(RunNativeCodeAnalysisInputs);$(ProjectDir)$(CodeAnalysisRuleSet)</RunNativeCodeAnalysisInputs>
    <MergedOutputCodeAnalysisFile>$(IntDir)vc.nativecodeanalysis.all.xml</MergedOutputCodeAnalysisFile>
  </PropertyGroup>
  <Choose>
    <When Condition="'$(Language)'=='C++' and '$(RunCodeAnalysisOnThisProject)'=='true'">
      <Choose>
        <When Condition="'$(PlatformToolsetVersion)'&lt;'120'">
          <PropertyGroup>
            <MergeInputCodeAnalysisFiles>@(ClCompile->'%(PREfastLog)')</MergeInputCodeAnalysisFiles>
          </PropertyGroup>
        </When>
        <Otherwise>
          <PropertyGroup>
            <MergeInputCodeAnalysisFiles>@(ClCompile->'%(PREfastLogFile)')</MergeInputCodeAnalysisFiles>
          </PropertyGroup>
        </Otherwise>
      </Choose>
    </When>
  </Choose>
  <UsingTask TaskName="Microsoft.Build.Tasks.NativeCodeAnalysis" AssemblyFile=".\FxCopTask.dll" />
  <Target Name="RunNativeCodeAnalysis" Condition="'$(Language)'=='C++' and '$(RunCodeAnalysisOnThisProject)'=='true'" Inputs="$(RunCodeAnalysisInputs);$(MergedOutputCodeAnalysisFile)" Outputs="$(CodeAnalysisSucceededFile);$(NativeCodeAnalysisTLogFile)" DependsOnTargets="$(RunCodeAnalysisDependsOn)">
    <NativeCodeAnalysis Condition="'$(Language)'=='C++' and '$(RunCodeAnalysisOnThisProject)'=='true'" IgnoreBuildTaskWarnings="$(CodeAnalysisIgnoreBuildTaskWarnings)" NativeCodeAnalysisLogFiles="$(MergedOutputCodeAnalysisFile)" MSBuildProjectDirectory="$(MSBuildProjectDirectory)" NeverReportRuleErrors="$(CodeAnalysisNeverReportRuleErrors)" RuleSet="$(CodeAnalysisRuleSet)" RuleSetDirectories="$(CodeAnalysisRuleSetDirectories)" StaticAnalysisDirectory="$(CodeAnalysisStaticAnalysisDirectory)" TLogFile="$(NativeCodeAnalysisTLogFile)" TreatWarningsAsErrors="$(CodeAnalysisTreatWarningsAsErrors)" VisualStudioSku="$(CodeAnalysisVSSku)" CodeAnalysisSucceededFile="$(CodeAnalysisSucceededFile)">
      <Output TaskParameter="FilesWritten" ItemName="FileWrites" />
    </NativeCodeAnalysis>
  </Target>
  <!-- Native analyzer targets -->
  <!-- Merge native results targets -->
  <UsingTask TaskName="Microsoft.Build.Tasks.MergeNativeCodeAnalysis" AssemblyFile=".\FxCopTask.dll" />
  <Target Name="RunMergeNativeCodeAnalysis" Condition="'$(Language)'=='C++' and '$(RunCodeAnalysisOnThisProject)'=='true'" Inputs="$(RunCodeAnalysisInputs);$(MergeInputCodeAnalysisFiles)" Outputs="$(CodeAnalysisSucceededFile);$(NativeCodeAnalysisTLogFile);$(MergedOutputCodeAnalysisFile)" DependsOnTargets="$(RunMergeNativeCodeAnalysisDependsOn)">
    <MergeNativeCodeAnalysis Condition="'$(Language)'=='C++' and '$(RunCodeAnalysisOnThisProject)'=='true'" InputNativeResultFiles="$(MergeInputCodeAnalysisFiles)" OutputCodeAnalysisFile="$(MergedOutputCodeAnalysisFile)" />
  </Target>
  <ItemGroup>
    <Clean Include="$(IntermediateOutputPath)\TempCA\$(TargetName).pdb" />
    <Clean Include="$(IntermediateOutputPath)\TempCA\$(TargetName)$(TargetExt)" />
  </ItemGroup>
  <!--
============================================================================================================================================
  </Import>

C:\Program Files (x86)\MSBuild\14.0\bin\Microsoft.Common.CurrentVersion.targets
============================================================================================================================================
-->
  <!--<Import Project="$(ReportingServicesTargets)" Condition="Exists('$(ReportingServicesTargets)')" />-->
  <!--
============================================================================================================================================
  <Import Project="$(MSBuildToolsPath)\Microsoft.NETFramework.targets" Condition="('$(TargetFrameworkIdentifier)' == ''  or '$(TargetFrameworkIdentifier)' == '.NETFramework') and ('$(TargetRuntime)' == 'Managed')">

C:\Program Files (x86)\MSBuild\14.0\bin\Microsoft.NETFramework.targets
============================================================================================================================================
-->
  <!--
***********************************************************************************************
Microsoft.NetFramework.targets

WARNING:  DO NOT MODIFY this file unless you are knowledgeable about MSBuild and have
          created a backup copy.  Incorrect changes to this file will make it
          impossible to load or build your projects from the command-line or the IDE.

This file contains .net framework specific properties, items and targets. They are factored into a Microsoft.NETFramework.targets and Microsoft.NetFramework.props
these two files are used to encapsulate the multi-targeting and framework specific build process.

Copyright (C) Microsoft Corporation. All rights reserved.
***********************************************************************************************
-->
  <!-- 
        In VS 2010 SP1 and VS 2012, both supported for asset compatibility, the MSBuild installed 
        as part of them did not enforce using the local ToolsVersion (4.0) in all cases, but instead 
        just used whatever ToolsVersion was in the project file if it existed on the machine, and 
        only forced 4.0 if that ToolsVersion did not exist.  

        Moving forward, we do want to enforce a single acting ToolsVersion per version of Visual Studio, 
        but in order to approximate this behavior on VS 2010 SP1 and VS 2012 as well, we've redirected 
        the targets:  If we're building using 4.X MSBuild (which doesn't define the new reserved 
        property, MSBuildAssemblyVersion), we'll point right back at the 4.0 targets, which still exist 
        as part of the .NET Framework.  Only if we're using the new MSBuild will we point to the current
        targets. 
   -->
  <Choose>
    <When Condition="'$(MSBuildAssemblyVersion)' == ''">
      <PropertyGroup>
        <NetFrameworkTargetsPath>$(MSBuildFrameworkToolsPath)\Microsoft.NetFramework.targets</NetFrameworkTargetsPath>
      </PropertyGroup>
    </When>
    <Otherwise>
      <PropertyGroup>
        <NetFrameworkTargetsPath>$(MSBuildToolsPath)\Microsoft.NetFramework.CurrentVersion.targets</NetFrameworkTargetsPath>
      </PropertyGroup>
    </Otherwise>
  </Choose>
  <PropertyGroup Condition="'$(MSBuildAssemblyVersion)' == ''">
    <!--
           Overrides for the Microsoft.NETFramework.targets extension targets.  Used to make sure that only the imports we specify 
           (hard-coded to 4.0 locations) are used, not the 12.0 locations that would be used by default. 
       -->
    <ImportByWildcardBefore40MicrosoftNetFrameworkTargets Condition="'$(ImportByWildcardBefore40MicrosoftNetFrameworkTargets)' == ''">$(ImportByWildcardBeforeMicrosoftNetFrameworkTargets)</ImportByWildcardBefore40MicrosoftNetFrameworkTargets>
    <ImportByWildcardBefore40MicrosoftNetFrameworkTargets Condition="'$(ImportByWildcardBefore40MicrosoftNetFrameworkTargets)' == ''">true</ImportByWildcardBefore40MicrosoftNetFrameworkTargets>
    <ImportByWildcardAfter40MicrosoftNetFrameworkTargets Condition="'$(ImportByWildcardAfter40MicrosoftNetFrameworkTargets)' == ''">$(ImportByWildcardAfterMicrosoftNetFrameworkTargets)</ImportByWildcardAfter40MicrosoftNetFrameworkTargets>
    <ImportByWildcardAfter40MicrosoftNetFrameworkTargets Condition="'$(ImportByWildcardAfter40MicrosoftNetFrameworkTargets)' == ''">true</ImportByWildcardAfter40MicrosoftNetFrameworkTargets>
    <ImportUserLocationsByWildcardBefore40MicrosoftNetFrameworkTargets Condition="'$(ImportUserLocationsByWildcardBefore40MicrosoftNetFrameworkTargets)' == ''">$(ImportUserLocationsByWildcardBeforeMicrosoftNetFrameworkTargets)</ImportUserLocationsByWildcardBefore40MicrosoftNetFrameworkTargets>
    <ImportUserLocationsByWildcardBefore40MicrosoftNetFrameworkTargets Condition="'$(ImportUserLocationsByWildcardBefore40MicrosoftNetFrameworkTargets)' == ''">true</ImportUserLocationsByWildcardBefore40MicrosoftNetFrameworkTargets>
    <ImportUserLocationsByWildcardAfter40MicrosoftNetFrameworkTargets Condition="'$(ImportUserLocationsByWildcardAfter40MicrosoftNetFrameworkTargets)' == ''">$(ImportUserLocationsByWildcardAfterMicrosoftNetFrameworkTargets)</ImportUserLocationsByWildcardAfter40MicrosoftNetFrameworkTargets>
    <ImportUserLocationsByWildcardAfter40MicrosoftNetFrameworkTargets Condition="'$(ImportUserLocationsByWildcardAfter40MicrosoftNetFrameworkTargets)' == ''">true</ImportUserLocationsByWildcardAfter40MicrosoftNetFrameworkTargets>
    <ImportByWildcardBeforeMicrosoftNetFrameworkTargets>false</ImportByWildcardBeforeMicrosoftNetFrameworkTargets>
    <ImportByWildcardAfterMicrosoftNetFrameworkTargets>false</ImportByWildcardAfterMicrosoftNetFrameworkTargets>
    <ImportUserLocationsByWildcardBeforeMicrosoftNetFrameworkTargets>false</ImportUserLocationsByWildcardBeforeMicrosoftNetFrameworkTargets>
    <ImportUserLocationsByWildcardAfterMicrosoftNetFrameworkTargets>false</ImportUserLocationsByWildcardAfterMicrosoftNetFrameworkTargets>
  </PropertyGroup>
  <!--<ImportGroup Condition="'$(MSBuildAssemblyVersion)' == ''">-->
  <!--<Import Project="$(MSBuildUserExtensionsPath)\4.0\Microsoft.NETFramework.targets\ImportBefore\*" Condition="'$(ImportUserLocationsByWildcardBefore40MicrosoftNetFrameworkTargets)' == 'true' and exists('$(MSBuildUserExtensionsPath)\4.0\Microsoft.NETFramework.targets\ImportBefore')" />-->
  <!--<Import Project="$(MSBuildExtensionsPath)\4.0\Microsoft.NETFramework.targets\ImportBefore\*" Condition="'$(ImportByWildcardBefore40MicrosoftNetFrameworkTargets)' == 'true' and exists('$(MSBuildExtensionsPath)\4.0\Microsoft.NETFramework.targets\ImportBefore')" />-->
  <!--</ImportGroup>-->
  <!--
============================================================================================================================================
  <Import Project="$(NetFrameworkTargetsPath)">

C:\Program Files (x86)\MSBuild\14.0\bin\Microsoft.NetFramework.CurrentVersion.targets
============================================================================================================================================
-->
  <!--
***********************************************************************************************
Microsoft.NETFramework.CurrentVersion.targets

WARNING:  DO NOT MODIFY this file unless you are knowledgeable about MSBuild and have
          created a backup copy.  Incorrect changes to this file will make it
          impossible to load or build your projects from the command-line or the IDE.

This file contains .net framework specific properties, items and targets. They are factored into a Microsoft.NETFramework.targets and Microsoft.NetFramework.props
these two files are used to encapsulate the multi-targeting and framework specific build process.

Copyright (C) Microsoft Corporation. All rights reserved.
***********************************************************************************************
-->
  <PropertyGroup>
    <ImportByWildcardBeforeMicrosoftNetFrameworkTargets Condition="'$(ImportByWildcardBeforeMicrosoftNetFrameworkTargets)' == ''">true</ImportByWildcardBeforeMicrosoftNetFrameworkTargets>
    <ImportByWildcardAfterMicrosoftNetFrameworkTargets Condition="'$(ImportByWildcardAfterMicrosoftNetFrameworkTargets)' == ''">true</ImportByWildcardAfterMicrosoftNetFrameworkTargets>
    <ImportUserLocationsByWildcardBeforeMicrosoftNetFrameworkTargets Condition="'$(ImportUserLocationsByWildcardBeforeMicrosoftNetFrameworkTargets)' == ''">true</ImportUserLocationsByWildcardBeforeMicrosoftNetFrameworkTargets>
    <ImportUserLocationsByWildcardAfterMicrosoftNetFrameworkTargets Condition="'$(ImportUserLocationsByWildcardAfterMicrosoftNetFrameworkTargets)' == ''">true</ImportUserLocationsByWildcardAfterMicrosoftNetFrameworkTargets>
  </PropertyGroup>
  <!--<Import Project="$(MSBuildUserExtensionsPath)\$(MSBuildToolsVersion)\Microsoft.NETFramework.targets\ImportBefore\*" Condition="'$(ImportUserLocationsByWildcardBeforeMicrosoftNetFrameworkTargets)' == 'true' and exists('$(MSBuildUserExtensionsPath)\$(MSBuildToolsVersion)\Microsoft.NETFramework.targets\ImportBefore')" />-->
  <!--<Import Project="$(MSBuildExtensionsPath)\$(MSBuildToolsVersion)\Microsoft.NETFramework.targets\ImportBefore\*" Condition="'$(ImportByWildcardBeforeMicrosoftNetFrameworkTargets)' == 'true' and exists('$(MSBuildExtensionsPath)\$(MSBuildToolsVersion)\Microsoft.NETFramework.targets\ImportBefore')" />-->
  <PropertyGroup>
    <MSBuildAllProjects>$(MSBuildAllProjects);$(MSBuildThisFileFullPath)</MSBuildAllProjects>
  </PropertyGroup>
  <Target Name="GetFrameworkPaths" DependsOnTargets="$(GetFrameworkPathsDependsOn)">
    <!-- For backwards compatibility of targets who replaced this target we cannot move these values outside the target even though they 
             now only depend on statically availiable values-->
    <ItemGroup>
      <_TargetFramework40DirectoryItem Include="$(MSBuildFrameworkToolsRoot)v4.0.30319" />
      <_TargetFramework35DirectoryItem Include="$(MSBuildFrameworkToolsRoot)v3.5" />
      <_TargetFramework30DirectoryItem Include="$(MSBuildFrameworkToolsRoot)v3.0" />
      <_TargetFramework20DirectoryItem Include="$(MSBuildFrameworkToolsRoot)v2.0.50727" />
      <_TargetedFrameworkDirectoryItem Condition="'$(TargetFrameworkVersion)' == 'v2.0'" Include="@(_TargetFramework20DirectoryItem)" />
      <_TargetedFrameworkDirectoryItem Condition="'$(TargetFrameworkVersion)' == 'v3.0' OR '$(TargetFrameworkVersion)' == 'v3.5'" Include="$(MSBuildFrameworkToolsRoot)\$(TargetFrameworkVersion)" />
      <_TargetedFrameworkDirectoryItem Condition="'@(_TargetedFrameworkDirectoryItem)' == ''" Include="@(_TargetFramework40DirectoryItem)" />
    </ItemGroup>
    <ItemGroup>
      <_CombinedTargetFrameworkDirectoriesItem Condition=" '$(TargetFrameworkVersion)' == 'v4.0' " Include="@(_TargetFramework40DirectoryItem)" />
      <_CombinedTargetFrameworkDirectoriesItem Condition=" '$(TargetFrameworkVersion)' == 'v3.5'" Include="@(_TargetFramework35DirectoryItem)" />
      <_CombinedTargetFrameworkDirectoriesItem Condition=" '$(TargetFrameworkVersion)' == 'v3.0' or '$(TargetFrameworkVersion)' == 'v3.5'" Include="@(_TargetFramework30DirectoryItem)" />
      <_CombinedTargetFrameworkDirectoriesItem Condition=" '$(TargetFrameworkVersion)' == 'v2.0' or '$(TargetFrameworkVersion)' == 'v3.0' or '$(TargetFrameworkVersion)' == 'v3.5'" Include="@(_TargetFramework20DirectoryItem)" />
      <_CombinedTargetFrameworkDirectoriesItem Condition=" '@(_CombinedTargetFrameworkDirectoriesItem)' == ''" Include="@(_TargetedFrameworkDirectoryItem)" />
    </ItemGroup>
    <PropertyGroup>
      <TargetFrameworkDirectory>@(_CombinedTargetFrameworkDirectoriesItem)</TargetFrameworkDirectory>
      <TargetFrameworkSDKDirectory>$(FrameworkSDKRoot)</TargetFrameworkSDKDirectory>
    </PropertyGroup>
    <ItemGroup>
      <_TargetFrameworkSDKDirectoryItem Include="$(TargetFrameworkSDKDirectory)" />
    </ItemGroup>
  </Target>
  <PropertyGroup>
    <ResolveReferencesDependsOn>
      $(ResolveReferencesDependsOn);
      ImplicitlyExpandDesignTimeFacades
    </ResolveReferencesDependsOn>
    <ImplicitlyExpandDesignTimeFacadesDependsOn>
      $(ImplicitlyExpandDesignTimeFacadesDependsOn);
      GetReferenceAssemblyPaths
    </ImplicitlyExpandDesignTimeFacadesDependsOn>
  </PropertyGroup>
  <!-- Implicitly references all portable design-time facades if the user is referencing a System.Runtime-based portable library -->
  <Target Name="ImplicitlyExpandDesignTimeFacades" Condition="'$(ImplicitlyExpandDesignTimeFacades)' == 'true'" DependsOnTargets="$(ImplicitlyExpandDesignTimeFacadesDependsOn)">
    <PropertyGroup>
      <!-- Does one of our dependencies reference a System.Runtime-based portable library? -->
      <_HasReferenceToSystemRuntime Condition="'$(DependsOnSystemRuntime)' == 'true' or '%(_ResolvedProjectReferencePaths.TargetPlatformIdentifier)' == 'Portable'">true</_HasReferenceToSystemRuntime>
    </PropertyGroup>
    <ItemGroup Condition="'$(_HasReferenceToSystemRuntime)' == 'true'">
      <_DesignTimeFacadeAssemblies Include="%(DesignTimeFacadeDirectories.Identity)*.dll" />
      <!-- If the user has manually referenced these assemblies, remove them so we don't end up with duplicates -->
      <ReferencePath Remove="@(_DesignTimeFacadeAssemblies)" />
      <ReferencePath Include="%(_DesignTimeFacadeAssemblies.Identity)">
        <WinMDFile>false</WinMDFile>
        <CopyLocal>false</CopyLocal>
        <ResolvedFrom>ImplicitlyExpandDesignTimeFacades</ResolvedFrom>
      </ReferencePath>
      <_ResolveAssemblyReferenceResolvedFiles Include="@(ReferencePath)" Condition="'%(ReferencePath.ResolvedFrom)' == 'ImplicitlyExpandDesignTimeFacades'" />
    </ItemGroup>
    <Message Importance="Low" Text="Including @(ReferencePath)" Condition="'%(ReferencePath.ResolvedFrom)' == 'ImplicitlyExpandDesignTimeFacades'" />
  </Target>
  <!--
============================================================================================================================================
  <Import Project="$(MSBuildToolsPath)\Microsoft.WinFX.targets" Condition="'$(TargetFrameworkVersion)' != 'v2.0' and '$(TargetCompactFramework)' != 'true' and Exists('$(MSBuildToolsPath)\Microsoft.WinFX.targets')">

C:\Program Files (x86)\MSBuild\14.0\bin\Microsoft.WinFX.targets
============================================================================================================================================
-->
  <!-- 
        With MSBuild 12, we've changed MSBuildToolsPath to for the first time point to a directory
        outside of the .NET Framework.  As a result of this, there were several targets files, of which 
        this was one, that were being referenced as out of MSBuildToolsPath that are now no longer there.  

        Thus, we are shimming those targets files so that they do still appear in MSBuildToolsPath, so that 
        consumers of them are not broken, but since the targets files themselves are still part of .NET, 
        the shim will internally simply redirect to the real copy of the targets file in the .NET Framework. 
   -->
  <!--
============================================================================================================================================
  <Import Project="$(MSBuildFrameworkToolsPath)\Microsoft.WinFx.targets">

C:\Windows\Microsoft.NET\Framework\v4.0.30319\Microsoft.WinFx.targets
============================================================================================================================================
-->
  <PropertyGroup>
    <BuildSystem>MSBuild</BuildSystem>
    <TaskVersion Condition=" ('$(TargetFrameworkVersion)' == 'v3.0' or '$(TargetFrameworkVersion)' == 'v3.5') ">3.0.0.0</TaskVersion>
    <TaskVersion Condition=" ('$(TargetFrameworkIdentifier)' == 'Silverlight')">4.0.0.0</TaskVersion>
    <TaskVersion Condition="'$(TaskVersion)' == ''">4.0.0.0</TaskVersion>
    <TaskKeyToken>31bf3856ad364e35</TaskKeyToken>
    <BuildTaskAssembly Condition="'$(BuildTaskAssembly)'==''">PresentationBuildTasks, Version=$(TaskVersion), Culture=neutral, PublicKeyToken=$(TaskKeyToken)</BuildTaskAssembly>
    <AlwaysCompileMarkupFilesInSeparateDomain Condition="'$(BuildingInsideVisualStudio)' == 'true' and '$(AlwaysCompileMarkupFilesInSeparateDomain)' == ''">true</AlwaysCompileMarkupFilesInSeparateDomain>
    <AlwaysCompileMarkupFilesInSeparateDomain Condition="'$(AlwaysCompileMarkupFilesInSeparateDomain)' == '' ">true</AlwaysCompileMarkupFilesInSeparateDomain>
    <LocalizationDirectivesToLocFile Condition="'$(LocalizationDirectivesToLocFile)' == ''">None</LocalizationDirectivesToLocFile>
    <GetReferenceAssemblyPathsDependsOn>
        $(GetReferenceAssemblyPathsDependsOn);
        GetWinFXPath
    </GetReferenceAssemblyPathsDependsOn>
  </PropertyGroup>
  <UsingTask TaskName="Microsoft.Build.Tasks.Windows.MarkupCompilePass1" AssemblyName="$(BuildTaskAssembly)" />
  <UsingTask TaskName="Microsoft.Build.Tasks.Windows.UidManager" AssemblyName="$(BuildTaskAssembly)" />
  <UsingTask TaskName="Microsoft.Build.Tasks.Windows.ResourcesGenerator" AssemblyName="$(BuildTaskAssembly)" />
  <UsingTask TaskName="Microsoft.Build.Tasks.Windows.FileClassifier" AssemblyName="$(BuildTaskAssembly)" />
  <UsingTask TaskName="Microsoft.Build.Tasks.Windows.MarkupCompilePass2" AssemblyName="$(BuildTaskAssembly)" />
  <UsingTask TaskName="Microsoft.Build.Tasks.Windows.GenerateTemporaryTargetAssembly" AssemblyName="$(BuildTaskAssembly)" />
  <UsingTask TaskName="Microsoft.Build.Tasks.Windows.MergeLocalizationDirectives" AssemblyName="$(BuildTaskAssembly)" />
  <UsingTask TaskName="Microsoft.Build.Tasks.Windows.GetWinFXPath" AssemblyName="$(BuildTaskAssembly)" />
  <!-- This target has been kept for compatibility with other targets or projects which override GetWinFXNativePath or GetWinFXWowPath.
       This target and the properties are deprecated because multi-targeting for reference assemblies is handled in the framework specific targets
   -->
  <Target Name="GetWinFXPath" Condition="('@(Page)' != '' or '@(ApplicationDefinition)' != '' or '@(Resource)' != '') and ('$(GetWinFXNativePath)' != '' or '$(GetWinFXWoWPath)' != '' )">
    <GetWinFXPath WinFXNativePath="$(WinFXNativePath)" WinFXWowPath="$(WinFXWowPath)">
      <Output TaskParameter="WinFXPath" PropertyName="WinFXAssemblyDirectory" Condition="'$(ReferenceWinFXAssemblyFromGAC)' != 'true' " />
    </GetWinFXPath>
  </Target>
  <!-- Some Default Settings -->
  <PropertyGroup>
    <!--
          XamlDebuggingInformation property controls whether or not to put line number information in the
          generated binary file for a Xaml markup file.

          If XamlDebuggingInformation is set in project file, take whatever setting.

      If XamlDebuggingInformation property is not explicitly set, and the current build is for debug,
          Set true to XamlDebuggingInformation, if the build is not for Debug, keep the empty setting for
          XamlDebuggingInformation, it means not to put line number information in the generated binary file.

      -->
    <XamlDebuggingInformation Condition="'$(XamlDebuggingInformation)' == '' and '$(ConfigurationName)' == 'Debug'">true</XamlDebuggingInformation>
    <HostInBrowser Condition="'$(HostInBrowser)'==''">false</HostInBrowser>
    <Version Condition="'$(Version)'==''">1.0.0.0</Version>
    <DeploymentType Condition="'$(DeploymentType)'==''">Installed</DeploymentType>
    <RunAfterInstall Condition="'$(RunAfterInstall)'==''">true</RunAfterInstall>
    <GeneratedFileExtension>.g$(DefaultLanguageSourceExtension)</GeneratedFileExtension>
    <OSVersion Condition="'$(OSVersion)' == ''">5.1.2600.0</OSVersion>
    <!-- Initialize some Local-Type_Ref related properties -->
    <_RequireMCPass2ForSatelliteAssemblyOnly>false</_RequireMCPass2ForSatelliteAssemblyOnly>
    <_RequireMCPass2ForMainAssembly>false</_RequireMCPass2ForMainAssembly>
  </PropertyGroup>
  <PropertyGroup>
    <IsApplication Condition="'$(OutputType)'=='exe'">true</IsApplication>
    <IsApplication Condition="'$(OutputType)'=='winexe'">true</IsApplication>
    <IsLibrary Condition="'$(OutputType)'=='library'">true</IsLibrary>
    <IsLibrary Condition="'$(OutputType)'=='module'">true</IsLibrary>
  </PropertyGroup>
  <PropertyGroup>
    <!--
          Inject AssignWinFXEmbeddedResource target at right stage.
      -->
    <PrepareResourceNamesDependsOn>
                    AssignWinFXEmbeddedResource;
                    $(PrepareResourceNamesDependsOn)
      </PrepareResourceNamesDependsOn>
  </PropertyGroup>
  <!-- Common Application and Library Property settings -->
  <PropertyGroup>
    <PrepareResourcesDependsOn>
                MarkupCompilePass1;
                AfterMarkupCompilePass1;
                MarkupCompilePass2ForMainAssembly;
                FileClassification;
                MainResourcesGeneration;
                $(PrepareResourcesDependsOn)
      </PrepareResourcesDependsOn>
  </PropertyGroup>
  <PropertyGroup>
    <!-- Add Markup compilation to the CoreCompileDependsOn so that the IDE inproc compilers (particularly VB)
             can "see" the generated source files. -->
    <CoreCompileDependsOn Condition="'$(BuildingInsideVisualStudio)' == 'true' ">
          DesignTimeMarkupCompilation;
          $(CoreCompileDependsOn)
      </CoreCompileDependsOn>
  </PropertyGroup>
  <Target Name="DesignTimeMarkupCompilation">
    <!-- Only if we are not actually performing a compile i.e. we are in design mode -->
    <CallTarget Condition="'$(BuildingProject)' != 'true'" Targets="MarkupCompilePass1" />
  </Target>
  <!--  WinFX specific ItemGroup  -->
  <ItemGroup Condition="'$(BuildingInsideVisualStudio)'=='true'">
    <!--
            Add WinFX specific Item names to AvailableItemName item, so that they can show up
            in a drop-down menu for Build Action field of the properties window in VisualStudio.
         -->
    <AvailableItemName Include="ApplicationDefinition" />
    <AvailableItemName Include="Page" />
    <AvailableItemName Include="Resource" />
    <AvailableItemName Include="SplashScreen" />
    <AvailableItemName Include="DesignData" />
    <AvailableItemName Include="DesignDataWithDesignTimeCreatableTypes" />
  </ItemGroup>
  <!--
       Prepare Resource For SatelliteAssemblies.
  -->
  <PropertyGroup Condition="'$(UICulture)' != ''">
    <PrepareResourcesForSatelliteAssembliesDependsOn>
               SatelliteOnlyMarkupCompilePass2;
               SatelliteResourceGeneration;
               GenerateResourceWithCultureItem;
      </PrepareResourcesForSatelliteAssembliesDependsOn>
  </PropertyGroup>
  <Target Name="PrepareResourcesForSatelliteAssemblies" Condition="'$(UICulture)' != ''" DependsOnTargets="$(PrepareResourcesForSatelliteAssembliesDependsOn)" />
  <PropertyGroup>
    <!--
         Hook up AfterCompileWinFX to that it runs
         where AfterCompile would have run
    -->
    <CompileDependsOn>
        $(CompileDependsOn);
        _AfterCompileWinFXInternal
    </CompileDependsOn>
    <!--
         Any targets that _AfterCompileWinFXInternal depends on.

         After the xaml file is compiled, the build system needs to generate a final .loc file
         for localization support. MergeLocalizationDirectives target does this.


         If UICulture is set, it needs to do below extra work before generating the .loc file:

             1. Calls the MarkupCompilePass2 for those xaml file which reference local types.
             2. Generate the .resources for given culture from .baml and other resource files.

         Target PrepareResourcesForSatelliteAssemblies is for this.

    -->
    <_AfterCompileWinFXInternalDependsOn>
        PrepareResourcesForSatelliteAssemblies;
        MergeLocalizationDirectives;
        AfterCompileWinFX
    </_AfterCompileWinFXInternalDependsOn>
  </PropertyGroup>
  <!-- Work that we want to be done after the "Compile" target in Microsoft.Common.targets -->
  <Target Name="_AfterCompileWinFXInternal" DependsOnTargets="$(_AfterCompileWinFXInternalDependsOn)" />
  <!--
    ===========================================================================================
                                        Extensibility Points

         Redefine these targets in your project in order to run tasks just after
         MarkupCompilePass1, MarkupCompilePass2 or the entire WinFXCompile.

    ===========================================================================================
  -->
  <Target Name="AfterCompileWinFX" />
  <Target Name="AfterMarkupCompilePass1" />
  <Target Name="AfterMarkupCompilePass2" />
  <!--
    Name : MarkupCompilePass1
    This target generates code for every xaml file as well it also generates code for main and IResourceLoader.
    This target uses MarkupCompilePass1 task.
  -->
  <!--
  ================================================================
                                   MarkupCompilePass1
  ================================================================
  -->
  <Target Name="MarkupCompilePass1" DependsOnTargets="$(MarkupCompilePass1DependsOn);SplashScreenValidation" Condition="'@(Page)' != '' or '@(ApplicationDefinition)' != '' ">
    <Message Text="(in) Page: '@(Page)'" Condition="'$(MSBuildTargetsVerbose)'=='true'" />
    <Message Text="(in) ApplicationDefinition: '@(ApplicationDefinition)'" Condition="'$(MSBuildTargetsVerbose)'=='true'" />
    <Message Text="(in) Resource: '@(Resource)'" Condition="'$(MSBuildTargetsVerbose)'=='true'" />
    <Message Text="(in) CodeGenReference: '@(ReferencePath)'" Condition="'$(MSBuildTargetsVerbose)'=='true'" />
    <!--
             When performing an intellisense compile, we don't want to abort the compile if
             MarkupCompilePass1 fails.  This would prevent the list of files from being handed
             off to the compiler, thereby breaking all intellisense.  For intellisense compiles
             we set ContinueOnError to true.  The property defined here is used as the value
             for ContinueOnError on the MarkupCompilePass1 task.
        -->
    <PropertyGroup>
      <_IntellisenseOnlyCompile>false</_IntellisenseOnlyCompile>
      <_IntellisenseOnlyCompile Condition="'$(BuildingProject)' != 'true'">true</_IntellisenseOnlyCompile>
    </PropertyGroup>
    <MarkupCompilePass1 Language="$(Language)" UICulture="$(UICulture)" ApplicationMarkup="@(ApplicationDefinition)" SplashScreen="@(SplashScreen)" LanguageSourceExtension="$(DefaultLanguageSourceExtension)" PageMarkup="@(Page)" ContentFiles="@(Content)" AssemblyName="$(AssemblyName)" OutputType="$(OutputType)" AssemblyVersion="$(AssemblyVersion)" AssemblyPublicKeyToken="$(AssemblyPublicKeyToken)" References="@(ReferencePath)" RootNamespace="$(RootNamespace)" KnownReferencePaths="$(MSBuildBinPath);$(TargetFrameworkDirectory);@(_TargetFrameworkSDKDirectoryItem);@(KnownReferencePaths)" AssembliesGeneratedDuringBuild="@(AssembliesGeneratedDuringBuild)" AlwaysCompileMarkupFilesInSeparateDomain="$(AlwaysCompileMarkupFilesInSeparateDomain)" HostInBrowser="$(HostInBrowser)" LocalizationDirectivesToLocFile="$(LocalizationDirectivesToLocFile)" ContinueOnError="$(_IntellisenseOnlyCompile)" SourceCodeFiles="@(Compile)" DefineConstants="$(DefineConstants)" ExtraBuildControlFiles="@(ExtraBuildControlFiles)" XamlDebuggingInformation="$(XamlDebuggingInformation)" IsRunningInVisualStudio="$(BuildingInsideVisualStudio)" OutputPath="$(IntermediateOutputPath)">
      <Output ItemName="GeneratedBaml" TaskParameter="GeneratedBamlFiles" />
      <Output ItemName="GeneratedLocalizationFiles" TaskParameter="GeneratedLocalizationFiles" />
      <Output PropertyName="_RequireMCPass2ForMainAssembly" TaskParameter="RequirePass2ForMainAssembly" />
      <Output PropertyName="_RequireMCPass2ForSatelliteAssemblyOnly" TaskParameter="RequirePass2ForSatelliteAssembly" />
      <Output ItemName="Compile" TaskParameter="GeneratedCodeFiles" />
      <!-- Keep a list of all the generated files, it is used to clean up for a next clean build -->
      <Output ItemName="FileWrites" TaskParameter="AllGeneratedFiles" />
      <Output ItemName="_GeneratedCodeFiles" TaskParameter="GeneratedCodeFiles" />
    </MarkupCompilePass1>
    <Message Text="(out) GeneratedBamlFiles: '@(GeneratedBaml)'" Condition="'$(MSBuildTargetsVerbose)'=='true'" />
    <Message Text="(out) SourceCodeFiles: '@(Compile)'" Condition="'$(MSBuildTargetsVerbose)'=='true'" />
    <Message Text="(Out) GeneratedCodeFiles: '@(_GeneratedCodeFiles)'" Condition="'$(MSBuildTargetsVerbose)'=='true'" />
    <Message Text="(out) GeneratedLocalizationFiles: @(GeneratedLocalizationFiles)" Condition="'$(MSBuildTargetsVerbose)'=='true'" />
    <Message Text="(out) _RequireMCPass2ForMainAssembly : '$(_RequireMCPass2ForMainAssembly)'" Condition="'$(MSBuildTargetsVerbose)'=='true'" />
    <Message Text="(out) _RequireMCPass2ForSatelliteAssemblyOnly : '$(_RequireMCPass2ForSatelliteAssemblyOnly)'" Condition="'$(MSBuildTargetsVerbose)'=='true'" />
  </Target>
  <!--

    ================================================================
                                   MarkupCompilePass2
    ================================================================

    Name: MarkupCompilePass2

    For those xaml files that contain local-implemented types, this target will invoke MarkupCompilePass2
    task to compile those xaml files after the main assembly is generated.

    If MarkupCompilePass1 task is not invoked, that means there is no any Xaml input file change since last build,
    and then it is not required to run this MarkupCompilePass2 either.

  -->
  <Target Name="MarkupCompilePass2" Condition="Exists('$(IntermediateOutputPath)$(AssemblyName)_MarkupCompile.lref')">
    <Message Text="(in) References: '@(ReferencePath);@(AssemblyForLocalTypeReference)'" Condition="'$(MSBuildTargetsVerbose)'=='true'" />
    <MarkupCompilePass2 AssemblyName="$(AssemblyName)" OutputType="$(OutputType)" Language="$(Language)" LocalizationDirectivesToLocFile="$(LocalizationDirectivesToLocFile)" RootNamespace="$(RootNamespace)" References="@(ReferencePath);@(AssemblyForLocalTypeReference)" KnownReferencePaths="$(MSBuildBinPath);$(TargetFrameworkDirectory);@(_TargetFrameworkSDKDirectoryItem);@(KnownReferencePaths)" AssembliesGeneratedDuringBuild="@(AssembliesGeneratedDuringBuild)" AlwaysCompileMarkupFilesInSeparateDomain="$(AlwaysCompileMarkupFilesInSeparateDomain)" XamlDebuggingInformation="$(XamlDebuggingInformation)" GeneratedBaml="" OutputPath="$(IntermediateOutputPath)" ContinueOnError="false">
      <!--
               Output Items for MarkupCompilePass2

               If MarkupCompilePass2 is only for SatelliteAssembly, Append all the generated baml files into SatelliteEmbeddedFiles, No FileClassifier is required.
               If MarupCompilePass2 is for Main Assembly as well, output the Baml files into GeneratedBaml, FileClassifier task will be invoked later.
          -->
      <Output ItemName="GeneratedBamlWithLocalType" TaskParameter="GeneratedBaml" Condition="'$(MSBuildTargetsVerbose)'=='true'" />
      <Output ItemName="GeneratedBaml" TaskParameter="GeneratedBaml" Condition="'$(_RequireMCPass2ForMainAssembly)' == 'true'" />
      <Output ItemName="SatelliteEmbeddedFiles" TaskParameter="GeneratedBaml" Condition="'$(_RequireMCPass2ForSatelliteAssemblyOnly)' == 'true'" />
      <!-- Put the generated files in item FileWrites so that they can be cleaned up appropriately in a next Rebuild -->
      <Output ItemName="FileWrites" TaskParameter="GeneratedBaml" />
    </MarkupCompilePass2>
    <Message Text="(out) After MarkupCompilePass2, SatelliteEmbeddedFiles: '@(SatelliteEmbeddedFiles)'" Condition="'$(MSBuildTargetsVerbose)'=='true'" />
    <Message Text="(out) GeneratedBamlWithLocalType: '@(GeneratedBamlWithLocalType)'" Condition="'$(MSBuildTargetsVerbose)'=='true'" />
  </Target>
  <!--

    ================================================================
                                   MarkupCompilePass2ForMainAssembly
    ================================================================

        Name : MarkupCompilePass2ForMainAssembly

        This target is invoked only when there is a xaml file which references local-type and is to embed into main assembly.
        It is possible when UICulture is not set, or the xaml file has explicitly set Localizable metadata to false.

        Condition: _RequireMCPass2ForMainAssembly == true

  -->
  <PropertyGroup>
    <MarkupCompilePass2ForMainAssemblyDependsOn>
                     GenerateTemporaryTargetAssembly;
                     MarkupCompilePass2;
                     AfterMarkupCompilePass2;
                     CleanupTemporaryTargetAssembly
       </MarkupCompilePass2ForMainAssemblyDependsOn>
    <_CompileTargetNameForLocalType Condition="'$(_CompileTargetNameForLocalType)' == ''">_CompileTemporaryAssembly</_CompileTargetNameForLocalType>
  </PropertyGroup>
  <Target Name="_CompileTemporaryAssembly" DependsOnTargets="BuildOnlySettings;ResolveKeySource;CoreCompile" />
  <Target Name="MarkupCompilePass2ForMainAssembly" Condition="'$(_RequireMCPass2ForMainAssembly)' == 'true' " DependsOnTargets="$(MarkupCompilePass2ForMainAssemblyDependsOn)" />
  <!--

                ==========================================
                       GenerateTemporaryTargetAssembly
                ==========================================

                Name : GenerateTemporaryTargetAssembly

  -->
  <Target Name="GenerateTemporaryTargetAssembly" Condition="'$(_RequireMCPass2ForMainAssembly)' == 'true' ">
    <Message Text="MSBuildProjectFile is $(MSBuildProjectFile)" Condition="'$(MSBuildTargetsVerbose)' == 'true'" />
    <GenerateTemporaryTargetAssembly CurrentProject="$(MSBuildProjectFullPath)" MSBuildBinPath="$(MSBuildBinPath)" ReferencePathTypeName="ReferencePath" CompileTypeName="Compile" GeneratedCodeFiles="@(_GeneratedCodeFiles)" ReferencePath="@(ReferencePath)" IntermediateOutputPath="$(IntermediateOutputPath)" AssemblyName="$(AssemblyName)" CompileTargetName="$(_CompileTargetNameForLocalType)" />
    <CreateItem Include="$(IntermediateOutputPath)$(TargetFileName)">
      <Output TaskParameter="Include" ItemName="AssemblyForLocalTypeReference" />
    </CreateItem>
  </Target>
  <!--

                 ===========================================
                          CleanupTemporaryTargetAssembly
                 ===========================================

                Name : CleanupTemporaryTargetAssembly

  -->
  <Target Name="CleanupTemporaryTargetAssembly">
    <Message Text="Remove the temporary project and target assembly" Condition="'$(MSBuildTargetsVerbose)'=='true'" />
    <Delete Files="@(AssemblyForLocalTypeReference)" Condition="Exists('%(Fullpath)')" />
  </Target>
  <!--

    ================================================================
                                   SatelliteOnlyMarkupCompilePass2
    ================================================================

        Name : SatelliteOnlyMarkupCompilePass2

        This target is invoked only when there is a xaml file which references local-type and no such xaml file is going
         to be embedded into main assembly.

        Condition: _RequireMCPass2ForSatelliteAssemblyOnly == true

  -->
  <Target Name="AddIntermediateAssemblyToReferenceList">
    <CreateItem Include="@(IntermediateAssembly)">
      <Output TaskParameter="Include" ItemName="AssemblyForLocalTypeReference" />
    </CreateItem>
  </Target>
  <Target Name="SatelliteOnlyMarkupCompilePass2" Condition="'$(_RequireMCPass2ForSatelliteAssemblyOnly)' == 'true'" DependsOnTargets="AddIntermediateAssemblyToReferenceList;MarkupCompilePass2" />
  <!--
         ============ Manifest Generation Related Properties, Targets ==============
  -->
  <PropertyGroup Condition="'$(HostInBrowser)' == 'true' and '$(IsApplication)' == 'true'">
    <!-- Set default value for some related properties -->
    <!-- For Browser application, manifests should be signed even if the project is not getting published -->
    <GenerateManifestsDependsOn>
             HostInBrowserValidation;
             GenerateApplicationManifest;
             ResignApplicationManifest;
             GenerateDeploymentManifest;
             SignDeploymentManifest
     </GenerateManifestsDependsOn>
    <GenerateManifests Condition="'$(GenerateManifests)' == ''">true</GenerateManifests>
    <GenerateClickOnceManifests Condition="'$(GenerateClickOnceManifests)' == ''">$(GenerateManifests)</GenerateClickOnceManifests>
    <!--
         If 'install' is not set in project file, set it to false here.
         But if 'install' is set in project, don't change it now. Later
         the PropertyValidation target will check if it is correct or not.
     -->
    <Install Condition="'$(Install)'==''">false</Install>
    <!--
         The valid values for TargetZone are :
              Internet, Intranet, LocalMachine, Custom

         User can set all above vaild values in project file.

         If this property is not set in project, for HostInBrowser,
         we set default value 'Internet' here.
     -->
    <TargetZone Condition="'$(TargetZone)' == ''">Internet</TargetZone>
    <!--
        Overwrite below properties which have been set in Microsoft.Common.targets.
     -->
    <TargetUrl Condition="'$(TargetUrl)' != ''">$(TargetUrl)/$(TargetDeployManifestFileName)</TargetUrl>
    <StartURL Condition="'$(StartURL)'==''">$(MSBuildProjectDirectory)\bin\$(Configuration)\$(TargetDeployManifestFileName)</StartURL>
    <StartArguments Condition="'$(StartArguments)' == ''">-debug  "$(StartURL)"</StartArguments>
    <StartArguments Condition="'$(DebugSecurityZoneURL)' != ''">$(StartArguments) -DebugSecurityZoneURL "$(DebugSecurityZoneURL)"</StartArguments>
  </PropertyGroup>
  <!--
      Do some property value check before the real manifest generation task starts.

      WinFX.targets should care about the property setting for Browser application only.

      For a regular ClickOnce application, Microsoft.Common.targets is responsible for
      the setting validation.
  -->
  <Target Name="HostInBrowserValidation" Condition="'$(HostInBrowser)' == 'true'">
    <Message Text="(in) Install: '$(Install)'" Condition="'$(MSBuildTargetsVerbose)' == 'true'" />
    <!--
         TODO: Will get error message from Build task resource so that the message is
         localizable and can be set an unique error ID.
     -->
    <Error Condition="'$(GenerateManifests)' != 'true'" Text="Property GenerateManifests should not be set a value other than true for a browser application." />
    <Error Condition="'$(Install)' == 'true'" Text="Property Install and HostInBrowser should not be both set to true." />
    <Error Condition=" '$(PlatformTarget)' != '' and '$(PlatformTarget)' != 'AnyCpu' " Text="Cannot build a platform-specific XAML Browser Application. If HostInBrowser property is set to 'True', either do not set the PlatformTarget property or set it to 'AnyCpu'." />
  </Target>
  <Target Name="SplashScreenValidation" Condition="'@(SplashScreen)' != ''">
    <Error Condition="'$(TargetFrameworkVersion)' == 'v3.0'" Text="The SplashScreen Build Action is not supported in the selected Target Framework." />
  </Target>
  <!--
         Resign Application Manifest after update.
         _DeploymentResolvedManifestCertificateThumbprint property is set only when SignManifest is set to true.
   -->
  <Target Name="ResignApplicationManifest" Condition="'$(_DeploymentResolvedManifestCertificateThumbprint)'!= ''">
    <Message Text="(in) ApplicationManifest: '@(ApplicationManifest)'" Condition="'$(MSBuildTargetsVerbose)'=='true'" />
    <Message Text="(in) ManifestKeyFile: '$(ManifestKeyFile)'" Condition="'$(MSBuildTargetsVerbose)'=='true'" />
    <Message Text="(in) _DeploymentResolvedManifestCertificateThumbprint: '$(_DeploymentResolvedManifestCertificateThumbprint)'" Condition="'$(MSBuildTargetsVerbose)'=='true'" />
    <SignFile CertificateThumbprint="$(_DeploymentResolvedManifestCertificateThumbprint)" TimestampUrl="$(ManifestTimestampUrl)" SigningTarget="@(ApplicationManifest)" />
  </Target>
  <!--
         Sign Deployment Manifest if SignManifest is set to true.
         _DeploymentResolvedManifestCertificateThumbprint property is set only when SignManifest is set to true.
  -->
  <Target Name="SignDeploymentManifest" Condition=" '$(_DeploymentResolvedManifestCertificateThumbprint)' != '' ">
    <Message Text="(in) DeployManifest: '@(DeployManifest)'" Condition="'$(MSBuildTargetsVerbose)'=='true'" />
    <Message Text="(in) ManifestKeyFile: '$(ManifestKeyFile)'" Condition="'$(MSBuildTargetsVerbose)'=='true'" />
    <Message Text="(in) _DeploymentResolvedManifestCertificateThumbprint: '$(_DeploymentResolvedManifestCertificateThumbprint)'" Condition="'$(MSBuildTargetsVerbose)'=='true'" />
    <SignFile CertificateThumbprint="$(_DeploymentResolvedManifestCertificateThumbprint)" TimestampUrl="$(ManifestTimestampUrl)" SigningTarget="@(DeployManifest)" />
  </Target>
  <!--
      ================================================================
                                   FileClassification
      ================================================================

     Classify baml and image files into different groups for Main assembly and satellite assembly respectively.

  -->
  <Target Name="FileClassification">
    <FileClassifier Condition="'@(GeneratedBaml)' != '' or '@(Resource)' != '' or '@(Font)' != ''" SourceFiles="@(SplashScreen);@(GeneratedBaml);@(Resource);@(Font)" Culture="$(UICulture)" OutputType="$(OutputType)" MainEmbeddedFiles="@(MainEmbeddedFiles)" SatelliteEmbeddedFiles="@(SatelliteEmbeddedFiles)" CLREmbeddedResource="@(CLREmbeddedResources)" CLRSatelliteEmbeddedResource="@(CLRSatelliteEmbeddedResources)" CLRResourceFiles="@(CLRResources)">
      <Output ItemName="MainEmbeddedFiles" TaskParameter="MainEmbeddedFiles" />
      <Output ItemName="SatelliteEmbeddedFiles" TaskParameter="SatelliteEmbeddedFiles" />
      <Output ItemName="WinFXEmbeddedResource" TaskParameter="CLREmbeddedResource" />
      <Output ItemName="WinFXEmbeddedResource" TaskParameter="CLRSatelliteEmbeddedResource" />
    </FileClassifier>
    <Message Text="(out) EmbeddedFiles: '@(MainEmbeddedFiles)'" Condition="'$(MSBuildTargetsVerbose)'=='true'" />
    <Message Text="(out) SatelliteEmbeddedFiles: '@(SatelliteEmbeddedFiles)'" Condition="'$(MSBuildTargetsVerbose)'=='true'" />
  </Target>
  <!--
      ================================================================
                                   MainResourcesGeneration
      ================================================================

  -->
  <PropertyGroup>
    <!--
          If the UICulture is not set, resources will be embedded into main assembly.
          keep $(AssemblyName).g.resources as resource name for this scenario.

          If the UICulture is set to some culture, all the localizable resources will
          be embedded into satellite assembly, and all the non-localizable resources
          will be embedded into main assembly.  for this scenario,  keep

              $(AssemblyName).g for localizable resources,
              $(AssemblyName).unlocalizable.g for unlocalizable resources
      -->
    <_ResourceNameInMainAssembly Condition="'$(UICulture)' == ''">$(AssemblyName).g.resources</_ResourceNameInMainAssembly>
    <_ResourceNameInMainAssembly Condition="'$(UICulture)' != ''">$(AssemblyName).unlocalizable.g.resources</_ResourceNameInMainAssembly>
  </PropertyGroup>
  <Target Name="MainResourcesGeneration" Inputs="@(MainEmbeddedFiles)" Outputs="$(IntermediateOutputPath)$(_ResourceNameInMainAssembly)" Condition="'@(MainEmbeddedFiles)' != ''">
    <!--
        This generates .resources file containing all the resources that are to be
        embedded in the main assembly and dont need to be localized
    -->
    <Message Text="(in) EmbeddedFiles: '@(MainEmbeddedFiles)'" Condition="'$(MSBuildTargetsVerbose)'=='true'" />
    <ResourcesGenerator ResourceFiles="@(MainEmbeddedFiles)" OutputPath="$(IntermediateOutputPath)" OutputResourcesFile="$(IntermediateOutputPath)$(_ResourceNameInMainAssembly)" Condition="'@(MainEmbeddedFiles)' != ''">
      <!-- Put the generated files in item FileWrites so that they can be cleaned up appropriately in a next Rebuild -->
      <Output ItemName="FileWrites" TaskParameter="OutputResourcesFile" />
    </ResourcesGenerator>
    <ItemGroup>
      <EmbeddedResource Include="$(IntermediateOutputPath)$(_ResourceNameInMainAssembly)">
        <GenerateResource>false</GenerateResource>
        <Type>Resx</Type>
        <WithCulture>false</WithCulture>
        <OutputResource>$(IntermediateOutputPath)$(_ResourceNameInMainAssembly)</OutputResource>
      </EmbeddedResource>
    </ItemGroup>
  </Target>
  <!--

       ================================================================
                                   SatelliteResourceGeneration
       ================================================================

       This target just takes the SatelliteEmbeddedFiles such as .baml, images, fonts. etc
       But not any $(Culture).resx and .resText etc.  those files should have been handled by
       PrepareResource target.

       This target should output an EmbeddedResource Item, which is then taken by
       CreateSatelliteAssemblies target.
  -->
  <Target Name="SatelliteResourceGeneration" Condition="'$(UICulture)' != ''" Inputs="@(SatelliteEmbeddedFiles)" Outputs="$(IntermediateOutputPath)$(AssemblyName).g.$(UICulture).resources">
    <!--
        This generates .resources file containing all the resources that are to be embedded
        in the satellite  assembly and need to be localized.

        This task only runs if the default culture of the build is not NULL
      -->
    <Message Text="(in) SatelliteEmbeddedFiles: '@(SatelliteEmbeddedFiles)'" Condition="'$(MSBuildTargetsVerbose)'=='true'" />
    <ResourcesGenerator ResourceFiles="@(SatelliteEmbeddedFiles)" OutputPath="$(IntermediateOutputPath)" OutputResourcesFile="$(IntermediateOutputPath)$(AssemblyName).g.$(UICulture).resources" Condition="'@(SatelliteEmbeddedFiles)' != ''">
      <Output ItemName="_SatelliteResourceFile" TaskParameter="OutputResourcesFile" />
      <!-- Put the generated files in item FileWrites so that they can be cleaned up appropriately in a next Rebuild -->
      <Output ItemName="FileWrites" TaskParameter="OutputResourcesFile" />
    </ResourcesGenerator>
    <Message Text="(out) _SatelliteResourceFile is '@(_SatelliteResourceFile)'" Condition="'$(MSBuildTargetsVerbose)'=='true'" />
  </Target>
  <!--
      This target should always run after SatelliteResourceGeneration, so that it
      can generate the correct Item which contains right Culture attribute even for
      incremental build.
  -->
  <Target Name="GenerateResourceWithCultureItem" Condition="'$(UICulture)' != ''">
    <Message Text="(out) _SatelliteResourceFile: '@(_SatelliteResourceFile)'" Condition="'$(MSBuildTargetsVerbose)'=='true'" />
    <ItemGroup>
      <EmbeddedResource Include="@(_SatelliteResourceFile)">
        <Culture>$(UICulture)</Culture>
        <GenerateResource>false</GenerateResource>
        <Type>Resx</Type>
        <WithCulture>true</WithCulture>
        <OutputResource>@(_SatelliteResourceFile)</OutputResource>
      </EmbeddedResource>
    </ItemGroup>
  </Target>
  <!-- Overwrite some target and properties for Publish support -->
  <!--
         PublishBuildDependsOn property is defined in Microsoft.Common.targets, but it doesn't handle WinFX
         resx file, since this resx file is not set into project file, but is generated at build time.

         For Publish Build, we need to make sure the $(Target).g.$(UICulture).resources is handled correctly.
         Add target "PrepareResourcesForSatelliteAssemblies" to the place prior to CreateSatelliteAssemblies.
    -->
  <PropertyGroup>
    <PublishBuildDependsOn>
            BuildOnlySettings;
            PrepareForBuild;
            ResolveReferences;
            PrepareResources;
            ResolveKeySource;
            PrepareResourcesForSatelliteAssemblies;
            GenerateSerializationAssemblies;
            CreateSatelliteAssemblies;
        </PublishBuildDependsOn>
  </PropertyGroup>
  <!--
         SatelliteDllsProjectOutputGroup target is implemented in Microsoft.Common.targets, but it doesn't handle WinFX
         satellite assembly, since for WinFX, the $(targetname).g.$(UICulture).resx is not set into project file, but is generated
         at build time after Xaml file is compiled, (for some case, it is generated after the main dll is compiled).

        So overwrite this target, copy the content from Microsoft.Common.targets and inject the part for our UICulture support.

    -->
  <!--
    ================================================================
                                         SatelliteDllsProjectOutputGroup
    ================================================================

    This target performs population of the Satellite Files project output group.
    -->
  <Target Name="SatelliteDllsProjectOutputGroup" DependsOnTargets="PrepareResourceNames" Returns="@(SatelliteDllsProjectOutputGroupOutput)" KeepDuplicateOutputs="False">
    <CreateItem Include="$(IntermediateOutputPath)%(ResxWithCulture.Culture)\$(TargetName).resources.dll" AdditionalMetadata="TargetPath=%(ResxWithCulture.Culture)\$(TargetName).resources.dll" Condition="'@(ResxWithCulture)' != ''">
      <Output ItemName="SatelliteDllsProjectOutputGroupOutputIntermediate" TaskParameter="Include" />
    </CreateItem>
    <!--  This task is WinFX specific. -->
    <CreateItem Include="$(IntermediateOutputPath)$(UICulture)\$(TargetName).resources.dll" AdditionalMetadata="TargetPath=$(UICulture)\$(TargetName).resources.dll" Condition="'$(UICulture)' != ''">
      <Output ItemName="SatelliteDllsProjectOutputGroupOutputIntermediate" TaskParameter="Include" />
    </CreateItem>
    <!-- End of WinFX specific -->
    <CreateItem Include="$(IntermediateOutputPath)%(NonResxWithCulture.Culture)\$(TargetName).resources.dll" AdditionalMetadata="TargetPath=%(NonResxWithCulture.Culture)\$(TargetName).resources.dll" Condition="'@(NonResxWithCulture)' != ''">
      <Output ItemName="SatelliteDllsProjectOutputGroupOutputIntermediate" TaskParameter="Include" />
    </CreateItem>
    <CreateItem Include="$(IntermediateOutputPath)">
      <Output ItemName="SatelliteDllsProjectOutputGroupRootRelativeUrlBaseIntermediate" TaskParameter="Include" />
    </CreateItem>
    <!-- Convert intermediate items into final items; this way we can get the full path for each item. -->
    <CreateItem Include="@(SatelliteDllsProjectOutputGroupOutputIntermediate->'%(FullPath)')">
      <Output ItemName="SatelliteDllsProjectOutputGroupOutput" TaskParameter="Include" />
    </CreateItem>
  </Target>
  <!-- Other Targets  -->
  <Target Name="CheckUid" Condition="'@(Page)' != '' or '@(ApplicationDefinition)' != ''">
    <UidManager MarkupFiles="@(Page);@(ApplicationDefinition)" Task="Check" />
  </Target>
  <Target Name="UpdateUid" Condition="'@(Page)' != '' or '@(ApplicationDefinition)' != ''">
    <UidManager MarkupFiles="@(Page);&#xD;&#xA;                               @(ApplicationDefinition)" IntermediateDirectory="$(IntermediateOutputPath)" Task="Update" />
  </Target>
  <Target Name="RemoveUid" Condition="'@(Page)' != '' or '@(ApplicationDefinition)' != ''">
    <UidManager MarkupFiles="@(Page);&#xD;&#xA;                               @(ApplicationDefinition)" IntermediateDirectory="$(IntermediateOutputPath)" Task="Remove" />
  </Target>
  <!--
      ================================================================
                                  MergeLocalizationDirectives
      ================================================================

      Merge localization comments of single bamls into one file for the whole assembly.

  -->
  <Target Name="MergeLocalizationDirectives" Condition="'@(GeneratedLocalizationFiles)' !=''" Inputs="@(GeneratedLocalizationFiles)" Outputs="$(IntermediateOutputPath)$(AssemblyName).loc">
    <MergeLocalizationDirectives GeneratedLocalizationFiles="@(GeneratedLocalizationFiles)" OutputFile="$(IntermediateOutputPath)$(AssemblyName).loc" />
    <!--
          Add the merged loc file into _NoneWithTargetPath so that it will be copied to the
          output directory
       -->
    <CreateItem Condition="Exists('$(IntermediateOutputPath)$(AssemblyName).loc')" Include="$(IntermediateOutputPath)$(AssemblyName).loc" AdditionalMetadata="CopyToOutputDirectory=PreserveNewest; TargetPath=$(AssemblyName).loc">
      <Output ItemName="_NoneWithTargetPath" TaskParameter="Include" />
      <Output ItemName="FileWrites" TaskParameter="Include" />
    </CreateItem>
  </Target>
  <!-- End of other targets -->
  <!--
     This is similar to AssignTargetPaths target in Microsoft.Common.targets.
     But it handles only the generated WinFXEmbeddedResource item type.

     After this target is done, SplitResourceByCulture target can take the right input
     and handle the resource correctly.
  -->
  <Target Name="AssignWinFXEmbeddedResource" Condition="'@(WinFXEmbeddedResource)' != ''">
    <ItemGroup>
      <_Temporary Remove="@(_Temporary)" />
    </ItemGroup>
    <AssignTargetPath Files="@(WinFXEmbeddedResource)" RootFolder="$(MSBuildProjectDirectory)">
      <Output TaskParameter="AssignedFiles" ItemName="_Temporary" />
    </AssignTargetPath>
    <ItemGroup>
      <EmbeddedResource Remove="@(_Temporary)" />
      <EmbeddedResource Include="@(_Temporary)" />
      <_Temporary Remove="@(_Temporary)" />
    </ItemGroup>
  </Target>
  <!-- End of the project file, Do not add any more propeties, items, targets etc. -->
  <!--
============================================================================================================================================
  </Import>

C:\Program Files (x86)\MSBuild\14.0\bin\Microsoft.WinFX.targets
============================================================================================================================================
-->
  <!--
============================================================================================================================================
  </Import>

C:\Program Files (x86)\MSBuild\14.0\bin\Microsoft.NetFramework.CurrentVersion.targets
============================================================================================================================================
-->
  <!--
============================================================================================================================================
  <Import Project="$(MSBuildToolsPath)\Microsoft.Data.Entity.targets" Condition="'$(TargetFrameworkVersion)' != 'v2.0' and '$(TargetFrameworkVersion)' !=  'v3.0' and Exists('$(MSBuildToolsPath)\Microsoft.Data.Entity.targets')">

C:\Program Files (x86)\MSBuild\14.0\bin\Microsoft.Data.Entity.targets
============================================================================================================================================
-->
  <!-- 
        With MSBuild 12, we've changed MSBuildToolsPath to for the first time point to a directory
        outside of the .NET Framework.  As a result of this, there were several targets files, of which 
        this was one, that were being referenced as out of MSBuildToolsPath that are now no longer there.  

        Thus, we are shimming those targets files so that they do still appear in MSBuildToolsPath, so that 
        consumers of them are not broken, but since the targets files themselves are still part of .NET, 
        the shim will internally simply redirect to the real copy of the targets file in the .NET Framework. 
   -->
  <!--
============================================================================================================================================
  <Import Project="$(MSBuildFrameworkToolsPath)\Microsoft.Data.Entity.targets">

C:\Windows\Microsoft.NET\Framework\v4.0.30319\Microsoft.Data.Entity.targets
============================================================================================================================================
-->
  <!-- This .targets file can be used by updating Microsoft.Common.targets to 
         include the line below (as the last import element just before the end project tag)
      <Import Project="$(MSBuildBinPath)\Microsoft.Data.Entity.targets" Condition="Exists('$(MSBuildBinPath)\Microsoft.Data.Entity.targets')"/>
      -->
  <!-- The below ensures that "EntityDeploy" is available in the VS Build Action dropdown -->
  <ItemGroup>
    <AvailableItemName Include="EntityDeploy" />
  </ItemGroup>
  <PropertyGroup>
    <!-- EntityDeployIntermediateResourcePath is the path used to store resources generated from
         the EDMX file before they are embedded in the build target -->
    <EntityDeployIntermediateResourcePath>$(IntermediateOutputPath)edmxResourcesToEmbed\</EntityDeployIntermediateResourcePath>
  </PropertyGroup>
  <UsingTask TaskName="EntityDeploySplit" AssemblyFile="Microsoft.Data.Entity.Build.Tasks.dll" />
  <UsingTask TaskName="EntityDeploy" AssemblyFile="Microsoft.Data.Entity.Build.Tasks.dll" />
  <UsingTask TaskName="EntityDeploySetLogicalNames" AssemblyFile="Microsoft.Data.Entity.Build.Tasks.dll" />
  <UsingTask TaskName="EntityClean" AssemblyFile="Microsoft.Data.Entity.Build.Tasks.dll" />
  <PropertyGroup>
    <!-- EntityDeployDependsOn deliberately left empty so others can override this -->
    <EntityDeployDependsOn />
    <BuildDependsOn>
      EntityDeploy;
      $(BuildDependsOn)
    </BuildDependsOn>
  </PropertyGroup>
  <PropertyGroup>
    <CleanDependsOn>
      $(CleanDependsOn);
      EntityClean;
    </CleanDependsOn>
  </PropertyGroup>
  <Target Name="EntityDeploy" DependsOnTargets="$(EntityDeployDependsOn)" Condition="'@(EntityDeploy)' != ''">
    <CallTarget Targets="EntityDeployNonEmbeddedResources" />
    <CallTarget Targets="EntityDeployEmbeddedResources" />
    <CallTarget Targets="EntityDeploySetLogicalNames" />
  </Target>
  <!-- Split the EDMX files into two groups: those whose resources need to be embedded 
       and those whose resources need to be copied
       Note: this also assigns the EntityDeployRelativeDir metadata to each
       item so that the same metadata can be used regardless of whether the 
       underlying item is a link or a normal file -->
  <Target Name="EntityDeploySplit">
    <EntityDeploySplit Sources="@(EntityDeploy)">
      <Output TaskParameter="EmbeddingItems" ItemName="EntityDeployEmbeddingItems" />
      <Output TaskParameter="NonEmbeddingItems" ItemName="EntityDeployCopyingItems" />
    </EntityDeploySplit>
    <Message Condition="'$(EntityDeployDebug)'=='true'" Text="EntityDeploySplit: EntityDeployEmbeddingItems = @(EntityDeployEmbeddingItems)" />
    <Message Condition="'$(EntityDeployDebug)'=='true'" Text="EntityDeploySplit: EntityDeployCopyingItems   = @(EntityDeployCopyingItems)" />
  </Target>
  <!-- Generate to $(OutputPath) the CSDL, MSL and SSDL resources from the EDMX 
       files set to copy their outputs to the output directory (use SSDL as marker
       file as that is the last one generated) -->
  <Target Name="EntityDeployNonEmbeddedResources" DependsOnTargets="EntityDeploySplit" Inputs="@(EntityDeployCopyingItems)" Outputs="@(EntityDeployCopyingItems->'$(OutputPath)%(EntityDeployRelativeDir)%(Filename).ssdl')">
    <EntityDeploy Sources="@(EntityDeployCopyingItems)" OutputPath="$(OutputPath)" />
  </Target>
  <!-- Generates to $(EntityDeployIntermediateResourcePath) the CSDL, MSL and SSDL
       resources from the EDMX files set to embed their outputs (use SSDL as marker
       file as that is the last one generated) -->
  <Target Name="EntityDeployEmbeddedResources" DependsOnTargets="EntityDeploySplit" Inputs="@(EntityDeployEmbeddingItems)" Outputs="@(EntityDeployEmbeddingItems->'$(EntityDeployIntermediateResourcePath)%(EntityDeployRelativeDir)%(Filename).ssdl')">
    <EntityDeploy Sources="@(EntityDeployEmbeddingItems)" OutputPath="$(EntityDeployIntermediateResourcePath)" />
  </Target>
  <Target Name="EntityClean" Condition="'@(EntityDeploy)' != ''">
    <EntityClean Sources="@(EntityDeploy)" ResourceOutputPath="$(EntityDeployIntermediateResourcePath)" OutputPath="$(OutputPath)" />
  </Target>
  <!-- Define the CSDL/MSL/SSDL files generated from @(EntityDeployEmbeddingItems)
       as part of the EmbeddedResource ItemGroup which includes them in the build target 
       Note: this must happen regardless of whether the EntityDeployEmbeddedResources target is 
       skipped due to incremental build -->
  <Target Name="EntityDeploySetLogicalNames" DependsOnTargets="EntityDeploySplit">
    <!-- First define the resources to be embedded
         Note: ignore resources which are not in @(EntityDeployEmbeddingItems) - this ignores
         resources generated by previous runs which have now had their MetadataArtifactProcessing 
         changed to "CopyToOutput" -->
    <ItemGroup>
      <EntityDeployResourcesToEmbed Include="@(EntityDeployEmbeddingItems->'$(EntityDeployIntermediateResourcePath)%(EntityDeployRelativeDir)%(Filename).csdl')" />
      <EntityDeployResourcesToEmbed Include="@(EntityDeployEmbeddingItems->'$(EntityDeployIntermediateResourcePath)%(EntityDeployRelativeDir)%(Filename).msl')" />
      <EntityDeployResourcesToEmbed Include="@(EntityDeployEmbeddingItems->'$(EntityDeployIntermediateResourcePath)%(EntityDeployRelativeDir)%(Filename).ssdl')" />
    </ItemGroup>
    <Message Condition="'$(EntityDeployDebug)'=='true'" Text="EntityDeploySetLogicalNames: EntityDeployResourcesToEmbed = @(EntityDeployResourcesToEmbed)" />
    <!-- Now update their logical names and add them to the list of resources to be embedded -->
    <EntityDeploySetLogicalNames Sources="@(EntityDeployResourcesToEmbed)" ResourceOutputPath="$(EntityDeployIntermediateResourcePath)">
      <Output TaskParameter="ResourcesToEmbed" ItemName="EmbeddedResource" />
    </EntityDeploySetLogicalNames>
  </Target>
  <!--
============================================================================================================================================
  </Import>

C:\Program Files (x86)\MSBuild\14.0\bin\Microsoft.Data.Entity.targets
============================================================================================================================================
-->
  <!--
============================================================================================================================================
  </Import>

C:\Program Files (x86)\MSBuild\14.0\bin\Microsoft.NetFramework.CurrentVersion.targets
============================================================================================================================================
-->
  <!--<Import Project="$(MSBuildExtensionsPath)\$(MSBuildToolsVersion)\Microsoft.NETFramework.targets\ImportAfter\*" Condition="'$(ImportByWildcardAfterMicrosoftNetFrameworkTargets)' == 'true' and exists('$(MSBuildExtensionsPath)\$(MSBuildToolsVersion)\Microsoft.NETFramework.targets\ImportAfter')" />-->
  <!--<Import Project="$(MSBuildUserExtensionsPath)\$(MSBuildToolsVersion)\Microsoft.NETFramework.targets\ImportAfter\*" Condition="'$(ImportUserLocationsByWildcardAfterMicrosoftNetFrameworkTargets)' == 'true' and exists('$(MSBuildUserExtensionsPath)\$(MSBuildToolsVersion)\Microsoft.NETFramework.targets\ImportAfter')" />-->
  <!--
============================================================================================================================================
  </Import>

C:\Program Files (x86)\MSBuild\14.0\bin\Microsoft.NETFramework.targets
============================================================================================================================================
-->
  <!--<ImportGroup Condition="'$(MSBuildAssemblyVersion)' == ''">-->
  <!--<Import Project="$(MSBuildExtensionsPath)\4.0\Microsoft.NETFramework.targets\ImportAfter\*" Condition="'$(ImportByWildcardAfter40MicrosoftNetFrameworkTargets)' == 'true' and exists('$(MSBuildExtensionsPath)\4.0\Microsoft.NETFramework.targets\ImportAfter')" />-->
  <!--<Import Project="$(MSBuildUserExtensionsPath)\4.0\Microsoft.NETFramework.targets\ImportAfter\*" Condition="'$(ImportUserLocationsByWildcardAfter40MicrosoftNetFrameworkTargets)' == 'true' and exists('$(MSBuildUserExtensionsPath)\4.0\Microsoft.NETFramework.targets\ImportAfter')" />-->
  <!--</ImportGroup>-->
  <!--
============================================================================================================================================
  </Import>

C:\Program Files (x86)\MSBuild\14.0\bin\Microsoft.Common.CurrentVersion.targets
============================================================================================================================================
-->
  <PropertyGroup>
    <ImportXamlTargets Condition="'$(ImportXamlTargets)'=='' and ('$(TargetFrameworkVersion)' != 'v2.0' and '$(TargetFrameworkVersion)' != 'v3.5') and Exists('$(MSBuildToolsPath)\Microsoft.Xaml.targets')">true</ImportXamlTargets>
  </PropertyGroup>
  <!--
============================================================================================================================================
  <Import Project="$(MSBuildToolsPath)\Microsoft.Xaml.targets" Condition="('$(ImportXamlTargets)' == 'true')">

C:\Program Files (x86)\MSBuild\14.0\bin\Microsoft.Xaml.targets
============================================================================================================================================
-->
  <!-- 
        With MSBuild 12, we've changed MSBuildToolsPath to for the first time point to a directory
        outside of the .NET Framework.  As a result of this, there were several targets files, of which 
        this was one, that were being referenced as out of MSBuildToolsPath that are now no longer there.  

        Thus, we are shimming those targets files so that they do still appear in MSBuildToolsPath, so that 
        consumers of them are not broken, but since the targets files themselves are still part of .NET, 
        the shim will internally simply redirect to the real copy of the targets file in the .NET Framework. 
   -->
  <!-- In the original Microsoft.Xaml.targets this is mapped to MSBuildBinPath, which is no longer 
        the .NET Framework directory and thus will no longer be the right answer. Override it to point
        to the correct .NET Framework location. -->
  <PropertyGroup>
    <XamlBuildTaskPath Condition="'$(XamlBuildTaskPath)' == ''">$(MSBuildFrameworkToolsPath)</XamlBuildTaskPath>
  </PropertyGroup>
  <!--
============================================================================================================================================
  <Import Project="$(MSBuildFrameworkToolsPath)\Microsoft.Xaml.targets">

C:\Windows\Microsoft.NET\Framework\v4.0.30319\Microsoft.Xaml.targets
============================================================================================================================================
-->
  <!--
***********************************************************************************************
Microsoft.Xaml.targets

WARNING:  DO NOT MODIFY this file unless you are knowledgeable about MSBuild and have
          created a backup copy.  Incorrect changes to this file will make it
          impossible to load or build your projects from the command-line or the IDE.

Copyright (C) Microsoft Corporation. All rights reserved.
***********************************************************************************************
-->
  <PropertyGroup>
    <LoadTimeSensitiveTargets>
      $(LoadTimeSensitiveTargets);
      XamlMarkupCompilePass1;
    </LoadTimeSensitiveTargets>
    <LoadTimeSensitiveProperties>
      $(LoadTimeSensitiveProperties);
    </LoadTimeSensitiveProperties>
    <TaskVersion>4.0.0.0</TaskVersion>
    <TaskKeyToken>31bf3856ad364e35</TaskKeyToken>
    <XamlBuildTaskAssemblyName Condition="'$(XamlBuildTaskAssemblyName)'==''">XamlBuildTask, Version=$(TaskVersion), Culture=neutral, PublicKeyToken=$(TaskKeyToken)</XamlBuildTaskAssemblyName>
    <XamlRequiresCompilationPass2 Condition="'$(XamlRequiresCompilationPass2)'==''">false</XamlRequiresCompilationPass2>
    <XamlTemporaryAssemblyName Condition="'$(XamlTemporaryAssemblyName)'==''">$(AssemblyName)</XamlTemporaryAssemblyName>
    <CompileTargetNameForTemporaryAssembly Condition="'$(CompileTargetNameForTemporaryAssembly)' == ''">CompileTemporaryAssembly</CompileTargetNameForTemporaryAssembly>
    <!-- Microsoft.Xaml.targets needs to be included after Microsoft.Fx.targets and Microsoft.DevDiv.targets
       to have a chance to add these tasks to the PrepareResources target's dependencies. 
       Unfortunately, Microsoft.DevDiv.targets completely overwrites the PrepareResourcesDependsOnProperty 
       (as a bug workaround-see comment there).
  -->
    <PrepareResourcesDependsOn>
      XamlMarkupCompilePass1;
      XamlMarkupCompilePass2;
      $(PrepareResourcesDependsOn) 
    </PrepareResourcesDependsOn>
  </PropertyGroup>
  <PropertyGroup>
    <XamlBuildTaskLocation Condition="'$(XamlBuildTaskPath)'==''">$(MSBuildBinPath)</XamlBuildTaskLocation>
    <XamlBuildTaskLocation Condition="'$(XamlBuildTaskPath)'!=''">$(XamlBuildTaskPath)</XamlBuildTaskLocation>
  </PropertyGroup>
  <PropertyGroup>
    <MSBuildAllProjects>$(MSBuildAllProjects);$(MSBuildToolsPath)\Microsoft.Xaml.targets</MSBuildAllProjects>
  </PropertyGroup>
  <PropertyGroup>
    <XamlGenCodeFileNames Condition="'$(XamlGenCodeFileNames)'==''">$(MSBuildProjectFile).XamlGeneratedCodeFileListAbsolute.txt</XamlGenCodeFileNames>
    <XamlGenMarkupFileNames Condition="'$(XamlGenMarkupFileNames)'==''">$(MSBuildProjectFile).XamlGeneratedXamlFileListAbsolute.txt</XamlGenMarkupFileNames>
    <XamlPass2FlagFile Condition="'$(XamlPass2FlagFile)'==''">$(MSBuildProjectFile).XamlPass2Flag.txt</XamlPass2FlagFile>
  </PropertyGroup>
  <ItemGroup Condition="'$(BuildingInsideVisualStudio)'=='true'">
    <AvailableItemName Include="XamlAppDef" />
  </ItemGroup>
  <UsingTask Condition="'$(XamlBuildTaskPath)'==''" TaskName="Microsoft.Build.Tasks.Xaml.PartialClassGenerationTask" AssemblyName="$(XamlBuildTaskAssemblyName)" />
  <UsingTask Condition="'$(XamlBuildTaskPath)'!=''" TaskName="Microsoft.Build.Tasks.Xaml.PartialClassGenerationTask" AssemblyFile="$(XamlBuildTaskPath)\XamlBuildTask.dll" />
  <UsingTask Condition="'$(XamlBuildTaskPath)'==''" TaskName="Microsoft.Build.Tasks.Xaml.GenerateTemporaryAssemblyTask" AssemblyName="$(XamlBuildTaskAssemblyName)" />
  <UsingTask Condition="'$(XamlBuildTaskPath)'!=''" TaskName="Microsoft.Build.Tasks.Xaml.GenerateTemporaryAssemblyTask" AssemblyFile="$(XamlBuildTaskPath)\XamlBuildTask.dll" />
  <UsingTask Condition="'$(XamlBuildTaskPath)'==''" TaskName="Microsoft.Build.Tasks.Xaml.CompilationPass2Task" AssemblyName="$(XamlBuildTaskAssemblyName)" />
  <UsingTask Condition="'$(XamlBuildTaskPath)'!=''" TaskName="Microsoft.Build.Tasks.Xaml.CompilationPass2Task" AssemblyFile="$(XamlBuildTaskPath)\XamlBuildTask.dll" />
  <!--
  ================================================================
                         DesignTimeXamlMarkupCompilation
  ================================================================
  -->
  <PropertyGroup>
    <CoreCompileDependsOn Condition="'$(BuildingInsideVisualStudio)' == 'true'">
        DesignTimeXamlMarkupCompilation;
        $(CoreCompileDependsOn)
    </CoreCompileDependsOn>
  </PropertyGroup>
  <PropertyGroup>
    <DesignTimeIntermediateOutputPath Condition="'$(DesignTimeIntermediateOutputPath)' == ''">$(IntermediateOutputPath)InProcessTempFiles\</DesignTimeIntermediateOutputPath>
  </PropertyGroup>
  <Target Name="DesignTimeXamlMarkupCompilation">
    <!-- Make sure the directory exists. -->
    <MakeDir Directories="$(DesignTimeIntermediateOutputPath)" Condition="'@(XamlAppDef)' != ''" />
    <CallTarget Condition="'$(BuildingProject)' != 'true' and '@(XamlAppDef)' != ''" Targets="InProcessXamlMarkupCompilePass1" />
  </Target>
  <!--
  ================================================================
                         InProcessXamlMarkupCompilePass1
  ================================================================
  -->
  <Target Name="InProcessXamlMarkupCompilePass1" Condition="'@(XamlAppDef)' != '' and '$(BuildingProject)' != 'true'">
    <PartialClassGenerationTask BuildTaskPath="$(XamlBuildTaskLocation)" OutputPath="$(DesignTimeIntermediateOutputPath)" Language="$(Language)" ApplicationMarkup="@(XamlAppDef)" References="@(ReferencePath)" RootNamespace="$(RootNamespace)" SourceCodeFiles="@(Compile)" AssemblyName="$(AssemblyName)" IsInProcessXamlMarkupCompile="true" MSBuildProjectDirectory="$(MSBuildProjectDirectory)" XamlBuildTypeInspectionExtensionNames="@(XamlBuildTaskTypeInspectionExtensionName)" XamlBuildTypeGenerationExtensionNames="@(XamlBuildTaskTypeGenerationExtensionName)">
      <Output ItemName="XamlInProcessGeneratedCodeFiles" TaskParameter="GeneratedCodeFiles" />
      <Output ItemName="XamlInProcessGeneratedResources" TaskParameter="GeneratedResources" />
      <!-- This property is not required. However we need to populate it as the output of the task. -->
      <Output PropertyName="XamlInProcessRequiresCompilationPass2" TaskParameter="RequiresCompilationPass2" />
    </PartialClassGenerationTask>
    <ItemGroup>
      <Compile Include="@(XamlInProcessGeneratedCodeFiles)" />
    </ItemGroup>
  </Target>
  <!--
  ================================================================
                         CleanInProcessXamlGeneratedFiles
  ================================================================
  -->
  <Target Name="CleanInProcessXamlGeneratedFiles" Condition="'@(XamlAppDef)' != '' And '$(BuildingInsideVisualStudio)'!='true'" AfterTargets="DesignTimeXamlMarkupCompilation">
    <ItemGroup>
      <FileWrites Include="$(DesignTimeIntermediateOutputPath)\*" />
    </ItemGroup>
  </Target>
  <!--
  ================================================================
                         XamlMarkupCompileReadGeneratedFileList
  ================================================================
  -->
  <Target Name="XamlMarkupCompileReadGeneratedFileList" Condition="'@(XamlPage)' != '' or '@(XamlAppDef)' != ''" BeforeTargets="XamlMarkupCompilePass1">
    <ReadLinesFromFile File="$(IntermediateOutputPath)$(XamlGenCodeFileNames)">
      <Output TaskParameter="Lines" ItemName="XamlOutputCodeFilesList" />
    </ReadLinesFromFile>
    <ReadLinesFromFile File="$(IntermediateOutputPath)$(XamlGenMarkupFileNames)">
      <Output TaskParameter="Lines" ItemName="XamlOutputMarkupFilesList" />
    </ReadLinesFromFile>
  </Target>
  <!--
  ================================================================
                         XamlMarkupCompilePass1
  ================================================================
  -->
  <Target Name="XamlMarkupCompilePass1" Condition="'@(XamlPage)' != '' or '@(XamlAppDef)' != ''" Inputs="@(XamlAppDef);@(Compile);$(MSBuildAllProjects);@(ReferencePath)" Outputs="@(XamlOutputMarkupFilesList);&#xD;&#xA;                  @(XamlOutputCodeFilesList);&#xD;&#xA;                  $(IntermediateOutputPath)$(XamlGenCodeFileNames);&#xD;&#xA;                  $(IntermediateOutputPath)$(XamlGenMarkupFileNames);&#xD;&#xA;                  $(IntermediateOutputPath)$(XamlPass2FlagFile);">
    <Message Text="(in) XamlPage: '@(XamlPage)'" Condition="'$(MSBuildTargetsVerbose)'=='true'" />
    <Message Text="(in) XamlAppDef: '@(XamlAppDef)'" Condition="'$(MSBuildTargetsVerbose)'=='true'" />
    <Message Text="(in) SourceCodeFiles: '@(Compile)'" Condition="'$(MSBuildTargetsVerbose)'=='true'" />
    <ItemGroup>
      <XamlGeneratedResources Remove="@(XamlGeneratedResources)" />
      <XamlGeneratedCodeFiles Remove="@(XamlGeneratedCodeFiles)" />
    </ItemGroup>
    <PartialClassGenerationTask BuildTaskPath="$(XamlBuildTaskLocation)" OutputPath="$(IntermediateOutputPath)" Language="$(Language)" ApplicationMarkup="@(XamlAppDef)" References="@(ReferencePath)" RootNamespace="$(RootNamespace)" SourceCodeFiles="@(Compile)" AssemblyName="$(AssemblyName)" IsInProcessXamlMarkupCompile="false" MSBuildProjectDirectory="$(MSBuildProjectDirectory)" XamlBuildTypeGenerationExtensionNames="@(XamlBuildTaskTypeGenerationExtensionName)" XamlBuildTypeInspectionExtensionNames="@(XamlBuildTaskTypeInspectionExtensionName)">
      <Output ItemName="XamlGeneratedCodeFiles" TaskParameter="GeneratedCodeFiles" />
      <Output ItemName="XamlGeneratedResources" TaskParameter="GeneratedResources" />
      <Output ItemName="XamlFileNames" TaskParameter="ApplicationMarkup" />
      <Output PropertyName="XamlRequiresCompilationPass2" TaskParameter="RequiresCompilationPass2" />
    </PartialClassGenerationTask>
    <WriteLinesToFile File="$(IntermediateOutputPath)$(XamlGenCodeFileNames)" Lines="@(XamlGeneratedCodeFiles)" Overwrite="true" />
    <WriteLinesToFile File="$(IntermediateOutputPath)$(XamlGenMarkupFileNames)" Lines="@(XamlGeneratedResources)" Overwrite="true" />
    <WriteLinesToFile File="$(IntermediateOutputPath)$(XamlPass2FlagFile)" Lines="@(XamlRequiresCompilationPass2)" Overwrite="true" />
    <Message Text="(out) XamlGeneratedCodeFiles: '@(XamlGeneratedCodeFiles)'" Condition="'$(MSBuildTargetsVerbose)'=='true'" />
    <Message Text="(out) XamlGeneratedResources: '@(XamlGeneratedResources)'" Condition="'$(MSBuildTargetsVerbose)'=='true'" />
    <Message Text="(out) XamlRequiresCompilationPass2 : '$(XamlRequiresCompilationPass2)'" Condition="'$(MSBuildTargetsVerbose)'=='true'" />
  </Target>
  <!--
  ================================================================
                         XamlMarkupCompileAddFilesGenerated
  ================================================================
  -->
  <Target Name="XamlMarkupCompileAddFilesGenerated" Condition="'@(XamlPage)' != '' or '@(XamlAppDef)' != ''" AfterTargets="XamlMarkupCompilePass1">
    <ItemGroup>
      <XamlGeneratedCodeFiles Condition="'@(XamlGeneratedCodeFiles)' == ''" Include="@(XamlOutputCodeFilesList)" />
    </ItemGroup>
    <ItemGroup>
      <XamlGeneratedResources Condition="'@(XamlGeneratedResources)' == ''" Include="@(XamlOutputMarkupFilesList)" />
    </ItemGroup>
    <ItemGroup>
      <FileWrites Include="@(XamlGeneratedResources);&#xD;&#xA;                           @(XamlGeneratedCodeFiles);&#xD;&#xA;                           $(IntermediateOutputPath)$(XamlGenCodeFileNames);&#xD;&#xA;                           $(IntermediateOutputPath)$(XamlGenMarkupFileNames)" />
    </ItemGroup>
    <ItemGroup>
      <Compile Include="@(XamlGeneratedCodeFiles)" />
    </ItemGroup>
    <ItemGroup>
      <EmbeddedResource Include="@(XamlGeneratedResources)">
        <GenerateResource>false</GenerateResource>
        <Type>Non-Resx</Type>
        <WithCulture>false</WithCulture>
      </EmbeddedResource>
    </ItemGroup>
  </Target>
  <!--
  ================================================================
                         XamlMarkupCompileReadPass2Flag
  ================================================================
  -->
  <Target Name="XamlMarkupCompileReadPass2Flag" Condition="'@(XamlPage)' != '' or '@(XamlAppDef)' != ''" BeforeTargets="XamlMarkupCompilePass2;XamlTemporaryAssemblyGeneration">
    <ReadLinesFromFile File="$(IntermediateOutputPath)$(XamlPass2FlagFile)">
      <Output TaskParameter="Lines" ItemName="XamlRequiresCompilationPass2" />
    </ReadLinesFromFile>
  </Target>
  <!--
  ================================================================
                         XamlTemporaryAssemblyGeneration
  ================================================================
  -->
  <Target Name="XamlTemporaryAssemblyGeneration" Condition="'$(XamlRequiresCompilationPass2)' == 'true' " Inputs="@(XamlAppDef);@(Compile);$(MSBuildAllProjects);@(XamlGeneratedCodeFiles);@(ReferencePath)" Outputs="$(IntermediateOutputPath)$(XamlTemporaryAssemblyName).dll;&#xD;&#xA;                   $(IntermediateOutputPath)$(XamlTemporaryAssemblyName).pdb" DependsOnTargets="XamlMarkupCompilePass1;MarkupCompilePass1">
    <Message Text="(in) MSBuildProjectFile: '$(MSBuildProjectFile)'" Condition="'$(MSBuildTargetsVerbose)' == 'true'" />
    <Message Text="(in) CompileTargetName: '$(CompileTargetName)'" Condition="'$(MSBuildTargetsVerbose)'=='true'" />
    <Message Text="(in) SourceCodeFiles: '@(XamlGeneratedCodeFiles)'" Condition="'$(MSBuildTargetsVerbose)'=='true'" />
    <GenerateTemporaryAssemblyTask OutputPath="$(IntermediateOutputPath)" CurrentProject="$(MSBuildProjectFullPath)" SourceCodeFiles="@(XamlGeneratedCodeFiles);@(_GeneratedCodeFiles)" AssemblyName="$(XamlTemporaryAssemblyName)" ApplicationMarkupTypeName="XamlAppDef" CompileTargetName="$(CompileTargetNameForTemporaryAssembly)" ReferencePaths="@(ReferencePath)" GeneratedResourcesFiles="@(XamlGeneratedResources)" />
    <PropertyGroup>
      <_XamlTemporaryAssemblyPath_>$(IntermediateOutputPath)$(XamlTemporaryAssemblyName).dll</_XamlTemporaryAssemblyPath_>
      <NonExistentFile>__NonExistentSubDir__\__NonExistentFile__</NonExistentFile>
    </PropertyGroup>
    <ItemGroup>
      <FileWrites Include="$(IntermediateOutputPath)$(XamlTemporaryAssemblyName).*" />
    </ItemGroup>
  </Target>
  <Target Name="CompileTemporaryAssembly" DependsOnTargets="BuildOnlySettings;ResolveKeySource;_GenerateCompileInputs;CoreCompile" />
  <!--
  ================================================================
                         XamlMarkupCompilePass2
  ================================================================
  -->
  <Target Name="XamlMarkupCompilePass2" Condition="'$(XamlRequiresCompilationPass2)' == 'true' " Outputs="@(ExtensionGeneratedCodeFiles)" DependsOnTargets="XamlTemporaryAssemblyGeneration">
    <Message Text="(in) XamlPage: '@(XamlPage)'" Condition="'$(MSBuildTargetsVerbose)'=='true'" />
    <Message Text="(in) XamlAppDef: '@(XamlAppDef)'" Condition="'$(MSBuildTargetsVerbose)'=='true'" />
    <Message Text="(in) References: '@(ReferencePath);$(_XamlTemporaryAssemblyPath_)'" Condition="'$(MSBuildTargetsVerbose)'=='true'" />
    <CompilationPass2Task BuildTaskPath="$(XamlBuildTaskLocation)" ApplicationMarkup="@(XamlAppDef)" References="@(ReferencePath)" LocalAssemblyReference="$(_XamlTemporaryAssemblyPath_)" AssemblyName="$(AssemblyName)" RootNamespace="$(RootNamespace)" OutputPath="$(IntermediateOutputPath)" Language="$(Language)" SourceCodeFiles="@(Compile)" IsInProcessXamlMarkupCompile="false" MSBuildProjectDirectory="$(MSBuildProjectDirectory)" MSBuildArchitecture="$(PlatformTargetAsMSBuildArchitecture)" XamlBuildTypeInspectionExtensionNames="@(XamlBuildTaskTypeInspectionExtensionName)" ApplicationMarkupWithTypeName="@(XamlFileNames)">
      <Output ItemName="ExtensionGeneratedCodeFiles" TaskParameter="ExtensionGeneratedCodeFiles" />
    </CompilationPass2Task>
    <WriteLinesToFile File="$(IntermediateOutputPath)$(XamlPass2FlagFile)" Lines="false" Overwrite="true" />
    <Message Text="(out) ExtensionGeneratedCodeFiles: '@(ExtensionGeneratedCodeFiles)'" />
    <!-- Add extension files to the list of generated files so that they can be monitored and cleaned up -->
    <WriteLinesToFile File="$(IntermediateOutputPath)$(XamlGenCodeFileNames)" Lines="@(ExtensionGeneratedCodeFiles)" Overwrite="false" />
  </Target>
  <!--
  ================================================================
                         XamlMarkupCompileAddFilesGenerated
  ================================================================
  -->
  <Target Name="XamlMarkupCompileAddExtensionFilesGenerated" Condition="'@(XamlPage)' != '' or '@(XamlAppDef)' != ''" AfterTargets="XamlMarkupCompilePass2">
    <ItemGroup>
      <FileWrites Include="@(ExtensionGeneratedCodeFiles)" />
    </ItemGroup>
    <ItemGroup>
      <Compile Include="@(ExtensionGeneratedCodeFiles)" />
    </ItemGroup>
  </Target>
  <!--
  ================================================================
                 GetCopyToOutputDirectoryXamlAppDefs

  Get all XamlAppDefs that may need to be transferred to the output directory.
  Compare GetCopyToOutputDirectoryItems in Microsoft.Common.targets
  ================================================================
  -->
  <Target Name="GetCopyToOutputDirectoryXamlAppDefs" BeforeTargets="GetCopyToOutputDirectoryItems">
    <ItemGroup>
      <_XamlAppDefItemsToCopy Include="@(XamlAppDef->'%(FullPath)')" Condition="'%(XamlAppDef.CopyToOutputDirectory)'=='Always' or '%(XamlAppDef.CopyToOutputDirectory)'=='PreserveNewest'" />
    </ItemGroup>
    <AssignTargetPath Files="@(_XamlAppDefItemsToCopy)" RootFolder="$(MSBuildProjectDirectory)">
      <Output TaskParameter="AssignedFiles" ItemName="_XamlAppDefItemsToCopyWithTargetPath" />
    </AssignTargetPath>
    <!-- The _SourceItems properties are internal to Microsoft.Common.targets,
         but necessary to use here because there is no public equivalent -->
    <ItemGroup>
      <AllItemsFullPathWithTargetPath Include="@(_XamlAppDefItemsToCopyWithTargetPath)" />
      <_SourceItemsToCopyToOutputDirectoryAlways Include="@(_XamlAppDefItemsToCopyWithTargetPath)" Condition="'%(_XamlAppDefItemsToCopyWithTargetPath.CopyToOutputDirectory)'=='Always'" />
      <_SourceItemsToCopyToOutputDirectory Include="@(_XamlAppDefItemsToCopyWithTargetPath)" Condition="'%(_XamlAppDefItemsToCopyWithTargetPath.CopyToOutputDirectory)'=='PreserveNewest'" />
    </ItemGroup>
  </Target>
  <!--
============================================================================================================================================
  </Import>

C:\Program Files (x86)\MSBuild\14.0\bin\Microsoft.Xaml.targets
============================================================================================================================================
-->
  <!--
============================================================================================================================================
  </Import>

C:\Program Files (x86)\MSBuild\14.0\bin\Microsoft.Common.CurrentVersion.targets
============================================================================================================================================
-->
  <!-- imports Microsoft.WorkflowBuildExtensions.targets only if TargetFrameworkVersion is v4.5 or above or TargetFrameworkfVersion specified does not conform to the format of vX.X[.X.X] -->
  <!-- Underlying assumption is that there shouldn't be any other versions between v4.0.* and v4.5 -->
  <!--
============================================================================================================================================
  <Import Project="$(MSBuildToolsPath)\Microsoft.WorkflowBuildExtensions.targets" Condition="('$(TargetFrameworkVersion)' != 'v2.0' and '$(TargetFrameworkVersion)' != 'v3.5' and (!$([System.String]::IsNullOrEmpty('$(TargetFrameworkVersion)')) and !$(TargetFrameworkVersion.StartsWith('v4.0')))) and Exists('$(MSBuildToolsPath)\Microsoft.WorkflowBuildExtensions.targets')">

C:\Program Files (x86)\MSBuild\14.0\bin\Microsoft.WorkflowBuildExtensions.targets
============================================================================================================================================
-->
  <!--
***********************************************************************************************
Microsoft.WorkflowBuildExtensions.targets

WARNING:  DO NOT MODIFY this file unless you are knowledgeable about MSBuild and have
          created a backup copy.  Incorrect changes to this file will make it
          impossible to load or build your projects from the command-line or the IDE.

Copyright (C) Microsoft Corporation. All rights reserved.
***********************************************************************************************
-->
  <!-- 
        With MSBuild 12, we've changed MSBuildToolsPath to for the first time point to a directory
        outside of the .NET Framework.  As a result of this, there were several targets files, of which 
        this was one, that were being referenced as out of MSBuildToolsPath that are now no longer there.  

        Thus, we are shimming those targets files so that they do still appear in MSBuildToolsPath, so that 
        consumers of them are not broken, but since the targets files themselves are still part of .NET, 
        the shim will internally simply redirect to the real copy of the targets file in the .NET Framework. 
   -->
  <!--
============================================================================================================================================
  <Import Project="$(MSBuildFrameworkToolsPath)\Microsoft.WorkflowBuildExtensions.targets">

C:\Windows\Microsoft.NET\Framework\v4.0.30319\Microsoft.WorkflowBuildExtensions.targets
============================================================================================================================================
-->
  <!--
***********************************************************************************************
Microsoft.WorkflowBuildExtensions.targets

WARNING:  DO NOT MODIFY this file unless you are knowledgeable about MSBuild and have
          created a backup copy.  Incorrect changes to this file will make it
          impossible to load or build your projects from the command-line or the IDE.

Copyright (C) Microsoft Corporation. All rights reserved.
***********************************************************************************************
-->
  <PropertyGroup>
    <PrepareResourcesDependsOn>
      ValidationExtension;
      ExpressionBuildExtension;
      $(PrepareResourcesDependsOn)
    </PrepareResourcesDependsOn>
  </PropertyGroup>
  <PropertyGroup>
    <CoreCompileDependsOn Condition="'$(BuildingInsideVisualStudio)' == 'true'">
        GenerateCompiledExpressionsTempFile;
        $(CoreCompileDependsOn)
    </CoreCompileDependsOn>
  </PropertyGroup>
  <PropertyGroup>
    <WorkflowBuildExtensionVersion Condition="'$(WorkflowBuildExtensionVersion)'==''">4.0.0.0</WorkflowBuildExtensionVersion>
    <WorkflowBuildExtensionKeyToken Condition="'$(WorkflowBuildExtensionKeyToken)'==''">31bf3856ad364e35</WorkflowBuildExtensionKeyToken>
    <WorkflowBuildExtensionAssemblyName Condition="'$(WorkflowBuildExtensionAssemblyName)'==''">Microsoft.Activities.Build, Version=$(WorkflowBuildExtensionVersion), Culture=neutral, PublicKeyToken=$(WorkflowBuildExtensionKeyToken)</WorkflowBuildExtensionAssemblyName>
    <GenerateCompiledExpressionsTempFilePathForEditing Condition="'$(MSBuildProjectExtension)' == '.csproj'">$(IntermediateOutputPath)\TemporaryGeneratedFile_E7A71F73-0F8D-4B9B-B56E-8E70B10BC5D3.cs</GenerateCompiledExpressionsTempFilePathForEditing>
    <GenerateCompiledExpressionsTempFilePathForValidation Condition="'$(MSBuildProjectExtension)' == '.csproj'">$(IntermediateOutputPath)\TemporaryGeneratedFile_036C0B5B-1481-4323-8D20-8F5ADCB23D92.cs</GenerateCompiledExpressionsTempFilePathForValidation>
    <GenerateCompiledExpressionsTempFilePathForTypeInfer Condition="'$(MSBuildProjectExtension)' == '.csproj'">$(IntermediateOutputPath)\TemporaryGeneratedFile_5937a670-0e60-4077-877b-f7221da3dda1.cs</GenerateCompiledExpressionsTempFilePathForTypeInfer>
    <DeferredValidationErrorsFileName>$(IntermediateOutputPath)\AC2C1ABA-CCF6-44D4-8127-588FD4D0A860-DeferredValidationErrors.xml</DeferredValidationErrorsFileName>
  </PropertyGroup>
  <UsingTask TaskName="WorkflowBuildMessageTask" AssemblyName="$(WorkflowBuildExtensionAssemblyName)" />
  <UsingTask TaskName="ReportDeferredValidationErrorsTask" AssemblyName="$(WorkflowBuildExtensionAssemblyName)" />
  <UsingTask TaskName="DeferredValidationTask" AssemblyName="$(WorkflowBuildExtensionAssemblyName)" />
  <ItemGroup>
    <XamlBuildTaskTypeGenerationExtensionName Include="Microsoft.Activities.Build.BeforeInitializeComponentExtension">
      <AssemblyName>$(WorkflowBuildExtensionAssemblyName)</AssemblyName>
      <Visible>false</Visible>
    </XamlBuildTaskTypeGenerationExtensionName>
    <XamlBuildTaskTypeGenerationExtensionName Include="Microsoft.Activities.Build.Debugger.DebugBuildExtension">
      <AssemblyName>$(WorkflowBuildExtensionAssemblyName)</AssemblyName>
      <Visible>false</Visible>
    </XamlBuildTaskTypeGenerationExtensionName>
  </ItemGroup>
  <Target Name="ExpressionBuildExtension">
    <WorkflowBuildMessageTask ResourceName="InvalidValueForDisableWorkflowCompiledExpressions" MessageType="Warning" Condition="'$(DisableWorkflowCompiledExpressions)'!='' and '$(DisableWorkflowCompiledExpressions)'!='true' and '$(DisableWorkflowCompiledExpressions)'!='false'" />
    <ItemGroup>
      <XamlBuildTaskTypeInspectionExtensionName Include="Microsoft.Activities.Build.Expressions.ExpressionsBuildExtension" Condition="$(DisableWorkflowCompiledExpressions)!=true">
        <AssemblyName>$(WorkflowBuildExtensionAssemblyName)</AssemblyName>
        <Visible>false</Visible>
      </XamlBuildTaskTypeInspectionExtensionName>
    </ItemGroup>
  </Target>
  <!-- XBT Validation Extension-->
  <Target Name="ValidationExtension">
    <WorkflowBuildMessageTask ResourceName="InvalidValueForSkipWorkflowValidation" MessageType="Warning" Condition="'$(SkipWorkflowValidation)'!='' and '$(SkipWorkflowValidation)'!='true' and '$(SkipWorkflowValidation)'!='false'" />
    <ItemGroup>
      <XamlBuildTaskTypeInspectionExtensionName Include="Microsoft.Activities.Build.Validation.ValidationBuildExtension" Condition="$(SkipWorkflowValidation)!=true">
        <AssemblyName>$(WorkflowBuildExtensionAssemblyName)</AssemblyName>
        <Visible>false</Visible>
      </XamlBuildTaskTypeInspectionExtensionName>
    </ItemGroup>
  </Target>
  <Target Name="GenerateCompiledExpressionsTempFile" Condition="'$(GenerateCompiledExpressionsTempFilePathForEditing)' != ''">
    <WriteLinesToFile File="$(GenerateCompiledExpressionsTempFilePathForEditing)" Condition="!Exists('$(GenerateCompiledExpressionsTempFilePathForEditing)')" />
    <WriteLinesToFile File="$(GenerateCompiledExpressionsTempFilePathForValidation)" Condition="!Exists('$(GenerateCompiledExpressionsTempFilePathForValidation)')" />
    <WriteLinesToFile File="$(GenerateCompiledExpressionsTempFilePathForTypeInfer)" Condition="!Exists('$(GenerateCompiledExpressionsTempFilePathForTypeInfer)')" />
    <ItemGroup>
      <Compile Include="$(GenerateCompiledExpressionsTempFilePathForEditing)" />
      <Compile Include="$(GenerateCompiledExpressionsTempFilePathForValidation)" />
      <Compile Include="$(GenerateCompiledExpressionsTempFilePathForTypeInfer)" />
    </ItemGroup>
  </Target>
  <Target Name="AddDeferredValidationErrorsFileToFileWrites" AfterTargets="XamlMarkupCompilePass2" Condition="Exists('$(DeferredValidationErrorsFileName)')">
    <ItemGroup>
      <FileWrites Include="$(DeferredValidationErrorsFileName)" />
    </ItemGroup>
  </Target>
  <!--
  ================================================================
                 ReportValidationBuildExtensionErrors
        Report deferred validation extension errors.
  ================================================================
  -->
  <Target Name="ReportValidationBuildExtensionErrors" AfterTargets="XamlMarkupCompilePass2" Condition="'$(SkipWorkflowValidation)' != 'true' and ('@(XamlPage)' != '' or '@(XamlAppDef)' != '')">
    <ReportDeferredValidationErrorsTask DeferredValidationErrorsFilePath="$(DeferredValidationErrorsFileName)" />
  </Target>
  <!--
  ==================================================================
                 DeferredValidation
        Fail the entire build process in case any validation errors
        been previously reported, but after Compile succeeded.
  ==================================================================
  -->
  <Target Name="DeferredValidation" AfterTargets="Compile" Condition="'$(SkipWorkflowValidation)' != 'true' and ('@(XamlPage)' != '' or '@(XamlAppDef)' != '')">
    <DeferredValidationTask DeferredValidationErrorsFilePath="$(DeferredValidationErrorsFileName)" />
  </Target>
  <!--
============================================================================================================================================
  </Import>

C:\Program Files (x86)\MSBuild\14.0\bin\Microsoft.WorkflowBuildExtensions.targets
============================================================================================================================================
-->
  <!--
============================================================================================================================================
  </Import>

C:\Program Files (x86)\MSBuild\14.0\bin\Microsoft.Common.CurrentVersion.targets
============================================================================================================================================
-->
  <!-- This import is temporary and will be removed once it is moved into the silverlight targets -->
  <!--<Import Project="$(MSBuildToolsPath)\Microsoft.WinFX.targets" Condition="'$(TargetFrameworkIdentifier)' == 'Silverlight' and Exists('$(MSBuildToolsPath)\Microsoft.WinFX.targets')" />-->
  <PropertyGroup>
    <MsTestToolsTargets Condition="'$(MsTestToolsTargets)'==''">$(MSBuildExtensionsPath32)\Microsoft\VisualStudio\v$(VisualStudioVersion)\TeamTest\Microsoft.TeamTest.targets</MsTestToolsTargets>
  </PropertyGroup>
  <!--
============================================================================================================================================
  <Import Project="$(MsTestToolsTargets)" Condition="Exists('$(MsTestToolsTargets)')">

C:\Program Files (x86)\MSBuild\Microsoft\VisualStudio\v14.0\TeamTest\Microsoft.TeamTest.targets
============================================================================================================================================
-->
  <UsingTask TaskName="BuildShadowTask" AssemblyFile="$(MSBuildExtensionsPath)\Microsoft\VisualStudio\v14.0\TeamTest\Microsoft.VisualStudio.TestTools.BuildShadowsTask.dll" />
  <PropertyGroup>
    <ResolveReferencesDependsOn>
      $(ResolveReferencesDependsOn);
      ResolveTestReferences
    </ResolveReferencesDependsOn>
  </PropertyGroup>
  <!--
       The condition here ensures that we aren't needlessly loaded into projects
       that don't actually have shadow items in them
  -->
  <Target Name="ResolveTestReferences" Condition="'@(Shadow)'!=''">
    <BuildShadowTask ExecuteAsTool="False" CurrentResolvedReferences="@(ReferencePath)" CurrentCopyLocalFiles="@(ReferenceCopyLocalPaths)" Shadows="@(Shadow)" ProjectPath="$(ProjectDir)" IntermediatePath="$(IntermediateOutputPath)" SignAssembly="$(SignAssembly)" KeyFile="$(AssemblyOriginatorKeyFile)" DelaySign="$(DelaySign)">
      <Output TaskParameter="FixedUpReferences" ItemName="ReferencePath" />
      <Output TaskParameter="NewCopyLocalAssemblies" ItemName="ReferenceCopyLocalPaths" />
    </BuildShadowTask>
  </Target>
  <!--
============================================================================================================================================
  </Import>

C:\Program Files (x86)\MSBuild\14.0\bin\Microsoft.Common.CurrentVersion.targets
============================================================================================================================================
-->
  <!-- App packaging support -->
  <!-- 
    Following two targets are needed to be present in every project being built
    because the app packaging targets recursively scan all projects referenced
    from projects that generate app packages for them.
  -->
  <Target Name="CleanAppxPackage" />
  <Target Name="GetPackagingOutputs" />
  <PropertyGroup>
    <MsAppxPackageTargets Condition="'$(MsAppxPackageTargets)'==''">$(MSBuildExtensionsPath32)\Microsoft\VisualStudio\v$(VisualStudioVersion)\AppxPackage\Microsoft.AppXPackage.Targets</MsAppxPackageTargets>
  </PropertyGroup>
  <!--<Import Project="$(MsAppxPackageTargets)" Condition="'$(WindowsAppContainer)' == 'true' and Exists('$(MsAppxPackageTargets)')" />-->
  <!-- This import is temporary and will be removed once it is moved into the silverlight targets -->
  <!--<Import Project="$(MSBuildToolsPath)\Microsoft.Data.Entity.targets" Condition="'$(TargetFrameworkIdentifier)' == 'Silverlight' and Exists('$(MSBuildToolsPath)\Microsoft.Data.Entity.targets')" />-->
  <!--<Import Project="$(CustomAfterMicrosoftCommonTargets)" Condition="'$(CustomAfterMicrosoftCommonTargets)' != '' and Exists('$(CustomAfterMicrosoftCommonTargets)')" />-->
  <!--
============================================================================================================================================
  <Import Project="$(MSBuildExtensionsPath)\$(MSBuildToolsVersion)\Microsoft.Common.targets\ImportAfter\*" Condition="'$(ImportByWildcardAfterMicrosoftCommonTargets)' == 'true' and exists('$(MSBuildExtensionsPath)\$(MSBuildToolsVersion)\Microsoft.Common.targets\ImportAfter')">

C:\Program Files (x86)\MSBuild\14.0\Microsoft.Common.targets\ImportAfter\Microsoft.DotNet.ImportAfter.targets
============================================================================================================================================
-->
  <!--
***********************************************************************************************
Microsoft.DotNet.ImportAfter.targets

Copyright (C) Microsoft Corporation. All rights reserved.
***********************************************************************************************
-->
  <PropertyGroup>
    <DotNetTargets Condition="'$(DotNetTargets)'==''">$(MSBuildExtensionsPath)\Microsoft\VisualStudio\v14.0\DotNet\Microsoft.DotNet.Extensions.targets</DotNetTargets>
  </PropertyGroup>
  <!--
============================================================================================================================================
  <Import Project="$(DotNetTargets)" Condition="Exists('$(DotNetTargets)')">

C:\Program Files (x86)\MSBuild\Microsoft\VisualStudio\v14.0\DotNet\Microsoft.DotNet.Extensions.targets
============================================================================================================================================
-->
  <!--
***********************************************************************************************
Microsoft.DotNet.Extensions.targets

Copyright (C) Microsoft Corporation. All rights reserved.
***********************************************************************************************
-->
  <UsingTask TaskName="GenerateDependencyFragmentJson" AssemblyFile="$(MSBuildThisFileDirectory)Microsoft.DotNet.Tasks.dll" />
  <!-- 
    Called from Microsoft.DotNet.ImportAfter.targets which is injected to all csproj files
    via msbuild extensibility. It gerenates a fragment lock file next to the given csproj 
    file and returns it's path.
  -->
  <Target Name="_GenerateDependencyFragmentJson" Returns="@(_FragmentLockJson)">
    <GenerateDependencyFragmentJson ProjectFullPath="$(MSBuildProjectFullPath)" OutputPath="$(OutputPath)" OutputType="$(OutputType)" AssemblyName="$(AssemblyName)" References="@(Reference)" TargetFrameworkVersion="$(TargetFrameworkVersion)">
      <!-- path to dependency fragment file for current csproj project -->
      <Output ItemName="_FragmentLockJson" TaskParameter="FragmentLockJson" />
    </GenerateDependencyFragmentJson>
  </Target>
  <!--
============================================================================================================================================
  </Import>

C:\Program Files (x86)\MSBuild\14.0\Microsoft.Common.targets\ImportAfter\Microsoft.DotNet.ImportAfter.targets
============================================================================================================================================
-->
  <!--
============================================================================================================================================
  </Import>
============================================================================================================================================
-->
  <!--
============================================================================================================================================
  <Import Project="$(MSBuildExtensionsPath)\$(MSBuildToolsVersion)\Microsoft.Common.targets\ImportAfter\*" Condition="'$(ImportByWildcardAfterMicrosoftCommonTargets)' == 'true' and exists('$(MSBuildExtensionsPath)\$(MSBuildToolsVersion)\Microsoft.Common.targets\ImportAfter')">

C:\Program Files (x86)\MSBuild\14.0\Microsoft.Common.targets\ImportAfter\Microsoft.Net.CoreRuntime.ImportAfter.targets
============================================================================================================================================
-->
  <!--
***********************************************************************************************
Microsoft.Net.CoreRuntime.ImportAfter.targets

WARNING:  DO NOT MODIFY this file unless you are knowledgeable about MSBuild and have
          created a backup copy.  Incorrect changes to this file will make it
          impossible to load or build your projects from the command-line or the IDE.

Copyright (C) Microsoft Corporation. All rights reserved.
***********************************************************************************************
-->
  <PropertyGroup>
    <NetfxCoreRuntimeTargets Condition="'$(NetfxCoreRuntimeTargets)'==''">$(MSBuildExtensionsPath)\Microsoft\.NetNative\Microsoft.Net.CoreRuntime.targets</NetfxCoreRuntimeTargets>
  </PropertyGroup>
  <!--<Import Project="$(NetfxCoreRuntimeTargets)" Condition="'$(TargetPlatformIdentifier)' == 'UAP' and '$(AppxPackage)' == 'true' and exists('$(NetfxCoreRuntimeTargets)')" />-->
  <!--
============================================================================================================================================
  </Import>
============================================================================================================================================
-->
  <!--
============================================================================================================================================
  <Import Project="$(MSBuildExtensionsPath)\$(MSBuildToolsVersion)\Microsoft.Common.targets\ImportAfter\*" Condition="'$(ImportByWildcardAfterMicrosoftCommonTargets)' == 'true' and exists('$(MSBuildExtensionsPath)\$(MSBuildToolsVersion)\Microsoft.Common.targets\ImportAfter')">

C:\Program Files (x86)\MSBuild\14.0\Microsoft.Common.targets\ImportAfter\Microsoft.NetNative.ImportAfter.targets
============================================================================================================================================
-->
  <!--
***********************************************************************************************
Microsoft.NetNative.ImportAfter.targets

WARNING:  DO NOT MODIFY this file unless you are knowledgeable about MSBuild and have
          created a backup copy.  Incorrect changes to this file will make it
          impossible to load or build your projects from the command-line or the IDE.

Copyright (C) Microsoft Corporation. All rights reserved.
***********************************************************************************************
-->
  <PropertyGroup>
    <ProjectNTargets Condition="'$(ProjectNTargets)'==''">$(MSBuildExtensionsPath)\Microsoft\.NetNative\Microsoft.NetNative.targets</ProjectNTargets>
  </PropertyGroup>
  <!--<Import Project="$(ProjectNTargets)" Condition="'$(ProjectNProfileEnabled)' == 'true' and exists('$(ProjectNTargets)')" />-->
  <!--
============================================================================================================================================
  </Import>
============================================================================================================================================
-->
  <!--
============================================================================================================================================
  <Import Project="$(MSBuildExtensionsPath)\$(MSBuildToolsVersion)\Microsoft.Common.targets\ImportAfter\*" Condition="'$(ImportByWildcardAfterMicrosoftCommonTargets)' == 'true' and exists('$(MSBuildExtensionsPath)\$(MSBuildToolsVersion)\Microsoft.Common.targets\ImportAfter')">

C:\Program Files (x86)\MSBuild\14.0\Microsoft.Common.targets\ImportAfter\Microsoft.NuGet.ImportAfter.targets
============================================================================================================================================
-->
  <!--
***********************************************************************************************
Microsoft.NuGet.ImportAfter.targets

WARNING:  DO NOT MODIFY this file unless you are knowledgeable about MSBuild and have
          created a backup copy.  Incorrect changes to this file will make it
          impossible to load or build your projects from the command-line or the IDE.

Copyright (c) .NET Foundation. All rights reserved. 
***********************************************************************************************
-->
  <PropertyGroup>
    <NuGetTargets Condition="'$(NuGetTargets)'==''">$(MSBuildExtensionsPath)\Microsoft\NuGet\Microsoft.NuGet.targets</NuGetTargets>
  </PropertyGroup>
  <!--
============================================================================================================================================
  <Import Project="$(NuGetTargets)" Condition="Exists('$(NuGetTargets)')">

C:\Program Files (x86)\MSBuild\Microsoft\NuGet\Microsoft.NuGet.targets
============================================================================================================================================
-->
  <!--
***********************************************************************************************
Microsoft.NuGet.targets

WARNING:  DO NOT MODIFY this file unless you are knowledgeable about MSBuild and have
          created a backup copy.  Incorrect changes to this file will make it
          impossible to load or build your projects from the command-line or the IDE.

Copyright (c) .NET Foundation. All rights reserved. 
***********************************************************************************************
-->
  <UsingTask TaskName="Microsoft.NuGet.Build.Tasks.ResolveNuGetPackageAssets" AssemblyFile="Microsoft.NuGet.Build.Tasks.dll" />
  <PropertyGroup Condition="'$(ProjectLockFile)' == ''">
    <_ProjectSpecificProjectJsonFile>$(MSBuildProjectName).project.json</_ProjectSpecificProjectJsonFile>
    <ProjectLockFile Condition="Exists('$(_ProjectSpecificProjectJsonFile)')">$(MSBuildProjectName).project.lock.json</ProjectLockFile>
    <ProjectLockFile Condition="!Exists('$(_ProjectSpecificProjectJsonFile)')">project.lock.json</ProjectLockFile>
  </PropertyGroup>
  <PropertyGroup>
    <ResolveNuGetPackages Condition="'$(ResolveNuGetPackages)' == '' and '$(MSBuildProjectExtension)' != '.xproj'">true</ResolveNuGetPackages>
    <BaseNuGetRuntimeIdentifier Condition="'$(BaseNuGetRuntimeIdentifier)' == '' and '$(TargetPlatformIdentifier)' == 'UAP'">win10</BaseNuGetRuntimeIdentifier>
    <BaseNuGetRuntimeIdentifier Condition="'$(BaseNuGetRuntimeIdentifier)' == ''">win</BaseNuGetRuntimeIdentifier>
    <UseTargetPlatformAsNuGetTargetMoniker Condition="'$(UseTargetPlatformAsNuGetTargetMoniker)' == '' AND '$(TargetFrameworkMoniker)' == '.NETCore,Version=v5.0'">true</UseTargetPlatformAsNuGetTargetMoniker>
    <NuGetTargetMoniker Condition="'$(NuGetTargetMoniker)' == '' AND '$(UseTargetPlatformAsNuGetTargetMoniker)' == 'true'">$(TargetPlatformIdentifier),Version=v$([System.Version]::Parse('$(TargetPlatformMinVersion)').ToString(3))</NuGetTargetMoniker>
    <NuGetTargetMoniker Condition="'$(NuGetTargetMoniker)' == '' AND '$(UseTargetPlatformAsNuGetTargetMoniker)' != 'true'">$(TargetFrameworkMoniker)</NuGetTargetMoniker>
    <CopyNuGetImplementations Condition="'$(CopyNuGetImplementations)' == '' and (('$(OutputType)' != 'library' and ('$(OutputType)' != 'winmdobj' or '$(AppxPackage)' == 'true')) or '$(TargetFrameworkIdentifier)' == '.NETFramework')">true</CopyNuGetImplementations>
    <IncludeFrameworkReferencesFromNuGet Condition="'$(IncludeFrameworkReferencesFromNuGet)' == ''">true</IncludeFrameworkReferencesFromNuGet>
    <_NuGetRuntimeIdentifierPlatformTargetSuffix Condition="'$(PlatformTarget)' != '' and '$(PlatformTarget)' != 'AnyCPU'">-$(PlatformTarget.ToLower())</_NuGetRuntimeIdentifierPlatformTargetSuffix>
    <_NuGetRuntimeIdentifierWithoutAot>$(BaseNuGetRuntimeIdentifier)$(_NuGetRuntimeIdentifierPlatformTargetSuffix)</_NuGetRuntimeIdentifierWithoutAot>
  </PropertyGroup>
  <!-- If a NuGetRuntimeIdentifier wasn't already specified, let's go generate it -->
  <PropertyGroup Condition="'$(NuGetRuntimeIdentifier)' == '' and '$(CopyNuGetImplementations)' == 'true'">
    <NuGetRuntimeIdentifier>$(_NuGetRuntimeIdentifierWithoutAot)</NuGetRuntimeIdentifier>
    <NuGetRuntimeIdentifier Condition="'$(UseDotNetNativeToolchain)' == 'true'">$(_NuGetRuntimeIdentifierWithoutAot)-aot</NuGetRuntimeIdentifier>
  </PropertyGroup>
  <ItemGroup>
    <!-- If we are resolving from project.lock.json, we need to consider any edit to it as something that forces a rebuild -->
    <CustomAdditionalCompileInputs Include="$(ProjectLockFile)" Condition="'$(ResolveNuGetPackages)' == 'true' and Exists('$(ProjectLockFile)')" />
  </ItemGroup>
  <PropertyGroup Condition="'$(TargetPlatformIdentifier)' == 'UAP'">
    <_NuGetTargetFallbackMoniker>UAP,Version=v10.0</_NuGetTargetFallbackMoniker>
    <ImplicitlyExpandTargetFramework>false</ImplicitlyExpandTargetFramework>
    <EnableAppLocalFXWorkaround>false</EnableAppLocalFXWorkaround>
    <UseNetNativeCustomFramework>true</UseNetNativeCustomFramework>
  </PropertyGroup>
  <!--
    ============================================================
                                        GetProjectsReferencingProjectJsonFiles
    ============================================================
  -->
  <Target Name="GetProjectsReferencingProjectJson" DependsOnTargets="_SplitProjectReferencesByFileExistence" Returns="@(_ProjectReferencingProjectJsonFile)">
    <ItemGroup Condition="'$(ResolveNuGetPackages)' == 'true'">
      <_ProjectReferencingProjectJsonFile Include="$(MSBuildProjectFullPath)">
        <ProjectReferences>@(ProjectReference)</ProjectReferences>
        <ProjectJson>$(MSBuildProjectDirectory)\project.json</ProjectJson>
      </_ProjectReferencingProjectJsonFile>
    </ItemGroup>
    <MSBuild Projects="@(_MSBuildProjectReferenceExistent)" Targets="GetProjectsReferencingProjectJson" BuildInParallel="$(BuildInParallel)" Properties="%(_MSBuildProjectReferenceExistent.SetConfiguration); %(_MSBuildProjectReferenceExistent.SetPlatform)" RemoveProperties="%(_MSBuildProjectReferenceExistent.GlobalPropertiesToRemove)">
      <Output TaskParameter="TargetOutputs" ItemName="_ProjectReferencingProjectJsonFile" />
    </MSBuild>
  </Target>
  <ItemGroup>
    <NuGetPreprocessorValue Include="rootnamespace">
      <Value>$(RootNamespace)</Value>
    </NuGetPreprocessorValue>
    <NuGetPreprocessorValue Include="assemblyname">
      <Value>$(AssemblyName)</Value>
    </NuGetPreprocessorValue>
    <NuGetPreprocessorValue Include="fullpath">
      <Value>$(MSBuildProjectDirectory)</Value>
    </NuGetPreprocessorValue>
    <NuGetPreprocessorValue Include="outputfilename">
      <Value>$(TargetFileName)</Value>
    </NuGetPreprocessorValue>
    <NuGetPreprocessorValue Include="filename">
      <Value>$(MSBuildProjectFile)</Value>
    </NuGetPreprocessorValue>
  </ItemGroup>
  <!--
    ============================================================
                                        ResolveNuGetPackageAssets

    Resolve assets from consumed NuGet packages listed in the project.lock.json

        [OUT]
        @(Analyzer) - Paths to build-time diagnostic analyzers
        @(Reference) - Paths to build-time NuGet dependencies
        @(ReferenceCopyLocalPaths) - Paths to run-time dependencies to copy
    ============================================================
  -->
  <PropertyGroup>
    <ResolveAssemblyReferencesDependsOn>$(ResolveAssemblyReferencesDependsOn);ResolveNuGetPackageAssets</ResolveAssemblyReferencesDependsOn>
    <PrepareResourcesDependsOn>ResolveNuGetPackageAssets;$(PrepareResourcesDependsOn)</PrepareResourcesDependsOn>
  </PropertyGroup>
  <PropertyGroup>
    <ResolveNuGetPackageAssetsDependsOn>ResolveProjectReferences</ResolveNuGetPackageAssetsDependsOn>
    <ResolveNuGetPackageAssetsDependsOn Condition="'$(ImplicitlyExpandTargetFramework)' == 'true'">$(ResolveNuGetPackageAssetsDependsOn);ImplicitlyExpandTargetFramework</ResolveNuGetPackageAssetsDependsOn>
  </PropertyGroup>
  <Target Name="ResolveNuGetPackageAssets" DependsOnTargets="$(ResolveNuGetPackageAssetsDependsOn)" Condition="'$(ResolveNuGetPackages)' == 'true' and exists('$(ProjectLockFile)')">
    <!-- We need to figure out the output path of any dependent xproj projects -->
    <MSBuild Projects="@(_MSBuildProjectReferenceExistent)" Targets="GetTargetDir" BuildInParallel="$(BuildInParallel)" Properties="%(_MSBuildProjectReferenceExistent.SetConfiguration); %(_MSBuildProjectReferenceExistent.SetPlatform)" RemoveProperties="%(_MSBuildProjectReferenceExistent.GlobalPropertiesToRemove)" Condition="'%(_MSBuildProjectReferenceExistent.Extension)' == '.xproj'">
      <Output TaskParameter="TargetOutputs" ItemName="_XProjTargetDirs" />
    </MSBuild>
    <!-- The items in _XProjTargetDirs have the target directories as the main itemspecs and the originating project as metadata; reverse them -->
    <ItemGroup>
      <ProjectReferenceCreatingPackage Include="%(_XProjTargetDirs.OriginalItemSpec)">
        <OutputBasePath>%(_XProjTargetDirs.Identity)</OutputBasePath>
      </ProjectReferenceCreatingPackage>
    </ItemGroup>
    <ResolveNuGetPackageAssets AllowFallbackOnTargetSelection="$(DesignTimeBuild)" ContinueOnError="$(ContinueOnError)" IncludeFrameworkReferences="$(IncludeFrameworkReferencesFromNuGet)" NuGetPackagesDirectory="$(NuGetPackagesDirectory)" RuntimeIdentifier="$(NuGetRuntimeIdentifier)" ProjectLanguage="$(Language)" ProjectLockFile="$(ProjectLockFile)" ProjectReferencesCreatingPackages="@(ProjectReferenceCreatingPackage)" ContentPreprocessorValues="@(NuGetPreprocessorValue)" ContentPreprocessorOutputDirectory="$(IntermediateOutputPath)\NuGet" TargetMonikers="$(NuGetTargetMoniker);$(_NuGetTargetFallbackMoniker)">
      <Output TaskParameter="ResolvedAnalyzers" ItemName="Analyzer" />
      <Output TaskParameter="ResolvedCopyLocalItems" ItemName="ReferenceCopyLocalPaths" />
      <Output TaskParameter="ResolvedReferences" ItemName="_ReferencesFromNuGetPackages" />
      <Output TaskParameter="ReferencedPackages" ItemName="ReferencedNuGetPackages" />
      <Output TaskParameter="ContentItems" ItemName="_NuGetContentItems" />
      <Output TaskParameter="FileWrites" ItemName="FileWrites" />
    </ResolveNuGetPackageAssets>
    <ItemGroup>
      <!-- Remove exact references, such as if a package had a framework reference to 'System' that we already have -->
      <Reference Remove="@(_ReferencesFromNuGetPackages)" />
      <!-- Remove simple name references that are already implicitly added -->
      <_ReferencesFromNuGetPackages Remove="%(ReferencePath.FileName)" Condition="'%(ReferencePath.ResolvedFrom)' == 'ImplicitlyExpandTargetFramework'" />
      <!-- Include NuGet references in the proper groups. Project-to-project references must go in the
           _ResolvedProjectReferencePaths group which matches the behavior of the ResolveProjectReferences
           target. This ensures that even if the assembly is missing on disk, it still makes it to the compiler. -->
      <Reference Include="@(_ReferencesFromNuGetPackages)" Condition="'%(_ReferencesFromNuGetPackages.NuGetSourceType)' != 'Project'" />
      <_ResolvedProjectReferencePaths Include="@(_ReferencesFromNuGetPackages)" Condition="'%(_ReferencesFromNuGetPackages.NuGetSourceType)' == 'Project'" />
      <!-- Remove simple name references if we're directly providing a reference assembly to the compiler. For example,
           consider a project with an Reference Include="System", and some NuGet package is providing System.dll -->
      <Reference Remove="%(_ReferencesFromNuGetPackages.FileName)" Condition="'%(_ReferencesFromNuGetPackages.NuGetIsFrameworkReference)' == 'false'" />
    </ItemGroup>
    <PropertyGroup Condition=" '$(AutoUnifyAssemblyReferences)' == 'true' ">
      <!-- Normally Design Time Assembly Resolution (DTAR) won't consider these references.
           Put DTAR in a mode where it will prefer the output of RAR and unify. -->
      <DTARUseReferencesFromProject>true</DTARUseReferencesFromProject>
    </PropertyGroup>
    <!-- The items in _NuGetContentItems need to go into the appropriately-named item group, but the names depend upon the items
         themselves. Split it apart. -->
    <CreateItem Include="@(_NuGetContentItems)" Condition="'@(_NuGetContentItems)' != ''">
      <Output TaskParameter="Include" ItemName="%(_NuGetContentItems.NuGetItemType)" />
    </CreateItem>
  </Target>
  <Target Name="RuntimeImplementationProjectOutputGroup" Returns="@(RuntimeImplementationProjectOutputGroupOutput)" Condition="'$(ResolveNuGetPackages)' == 'true' and exists('$(ProjectLockFile)')">
    <!-- This output group must contain the implementation assemblies for the host (i.e. design time) environment, not the
         target environment. Thus, we explicitly pass the RuntimeIdentifier that doesn't have the -aot suffix -->
    <ResolveNuGetPackageAssets AllowFallbackOnTargetSelection="$(DesignTimeBuild)" NuGetPackagesDirectory="$(NuGetPackagesDirectory)" RuntimeIdentifier="$(_NuGetRuntimeIdentifierWithoutAot)" ProjectLanguage="$(Language)" ProjectLockFile="$(ProjectLockFile)" TargetMonikers="$(NuGetTargetMoniker);$(_NuGetTargetFallbackMoniker)">
      <Output TaskParameter="ResolvedCopyLocalItems" ItemName="NonAheadOfTimeRuntimeImplementations" />
    </ResolveNuGetPackageAssets>
    <ItemGroup>
      <RuntimeImplementationProjectOutputGroupOutput Include="%(NonAheadOfTimeRuntimeImplementations.Identity)">
        <FinalOutputPath>%(NonAheadOfTimeRuntimeImplementations.FullPath)</FinalOutputPath>
        <TargetPath>%(NonAheadOfTimeRuntimeImplementations.FullPath)</TargetPath>
      </RuntimeImplementationProjectOutputGroupOutput>
    </ItemGroup>
  </Target>
  <!--
    ============================================================
            Framework injection into mixed-target applications
    ============================================================
  -->
  <PropertyGroup>
    <NuGetTargetFrameworkMonikerToInject Condition="'$(NuGetTargetFrameworkMonikerToInject)' == ''">.NETCore,Version=v5.0</NuGetTargetFrameworkMonikerToInject>
    <NuGetTargetMonikerToInject Condition="'$(NuGetTargetMonikerToInject)' == ''">.NETCore,Version=v5.0</NuGetTargetMonikerToInject>
    <_ComputeNetCoreFrameworkInjectionParametersBeforeTargets Condition="'$(AppxPackage)' == 'true' and '$(TargetPlatformIdentifier)' == 'UAP'">BeforeGenerateProjectPriFile</_ComputeNetCoreFrameworkInjectionParametersBeforeTargets>
  </PropertyGroup>
  <Target Name="ComputeNetCoreFrameworkInjectionParameters" BeforeTargets="$(_ComputeNetCoreFrameworkInjectionParametersBeforeTargets)" DependsOnTargets="_AddUnionWinmd" Condition="'$(_ComputeNetCoreFrameworkInjectionParametersBeforeTargets)' != ''">
    <PropertyGroup>
      <_PackagingOutputsIncludesFramework Condition="'%(PackagingOutputs.FileName)%(PackagingOutputs.Extension)' == 'System.Runtime.dll'">true</_PackagingOutputsIncludesFramework>
      <_AppContainsManagedCodeForInjection Condition="'%(PackagingOutputs.Identity)' == '$(_TargetPlatformSdkDir)UnionMetadata\Windows.winmd'">true</_AppContainsManagedCodeForInjection>
    </PropertyGroup>
    <PropertyGroup>
      <_NetCoreFrameworkInjectionNeeded Condition="'$(_PackagingOutputsIncludesFramework)' != 'true' and '$(_AppContainsManagedCodeForInjection)' == 'true'">true</_NetCoreFrameworkInjectionNeeded>
    </PropertyGroup>
  </Target>
  <Target Name="InjectNetCoreFrameworkBlockIfLockFileExists" AfterTargets="ComputeNetCoreFrameworkInjectionParameters" Condition="'$(_NetCoreFrameworkInjectionNeeded)' == 'true' and '$(ResolveNuGetPackages)' == 'true' and Exists('$(ProjectLockFile)')">
    <Error Text="One of your dependencies requires the .NET Framework, but the .NET Framework could not be found in the NuGet packages installed in this project.  Please install the appropriate .NET Framework packages required by your dependency." />
  </Target>
  <Target Name="InjectNetCoreFramework" AfterTargets="ComputeNetCoreFrameworkInjectionParameters" Condition="'$(_NetCoreFrameworkInjectionNeeded)' == 'true' and ('$(ResolveNuGetPackages)' != 'true' or !Exists('$(ProjectLockFile)'))">
    <GetReferenceAssemblyPaths TargetFrameworkMoniker="$(NuGetTargetFrameworkMonikerToInject)" Condition="'$(FrameworkInjectionLockFile)' == ''">
      <Output TaskParameter="ReferenceAssemblyPaths" ItemName="_NuGetInjectionSourceDirectories" />
    </GetReferenceAssemblyPaths>
    <PropertyGroup>
      <FrameworkInjectionLockFile Condition="'$(FrameworkInjectionLockFile)' == ''">@(_NuGetInjectionSourceDirectories->'%(Identity)\project.lock.json')</FrameworkInjectionLockFile>
      <FrameworkInjectionPackagesDirectory Condition="'$(FrameworkInjectionPackagesDirectory)' == ''">$([MSBuild]::GetRegistryValueFromView('HKEY_LOCAL_MACHINE\SOFTWARE\NuGet\Repository', 'NETCoreSDK', null, RegistryView.Registry32, RegistryView.Default))</FrameworkInjectionPackagesDirectory>
    </PropertyGroup>
    <ResolveNuGetPackageAssets Condition="Exists('$(FrameworkInjectionLockFile)')" NuGetPackagesDirectory="$(FrameworkInjectionPackagesDirectory)" RuntimeIdentifier="$(NuGetRuntimeIdentifier)" TargetMonikers="$(NuGetTargetMonikerToInject)" ProjectLockFile="$(FrameworkInjectionLockFile)">
      <Output TaskParameter="ResolvedCopyLocalItems" ItemName="_InjectNetCoreFrameworkPayload" />
    </ResolveNuGetPackageAssets>
    <PropertyGroup>
      <_CoreRuntimePackageId Condition="'%(_InjectNetCoreFrameworkPayload.FileName)%(_InjectNetCoreFrameworkPayload.Extension)' == 'mscorlib.dll' OR '%(_InjectNetCoreFrameworkPayload.FileName)%(_InjectNetCoreFrameworkPayload.Extension)' == 'mscorlib.ni.dll'">%(_InjectNetCoreFrameworkPayload.NuGetPackageId)</_CoreRuntimePackageId>
    </PropertyGroup>
    <ItemGroup>
      <PackagingOutputs Include="@(_InjectNetCoreFrameworkPayload)" Condition="'%(_InjectNetCoreFrameworkPayload.NuGetPackageId)' != '$(_CoreRuntimePackageId)' or '$(UseDotNetNativeToolchain)' == 'true'">
        <TargetPath>%(Filename)%(Extension)</TargetPath>
        <ProjectName>$(ProjectName)</ProjectName>
        <OutputGroup>CopyLocalFilesOutputGroup</OutputGroup>
      </PackagingOutputs>
    </ItemGroup>
  </Target>
  <!--<Import Project="$(MSBuildProjectDirectory)\$(MSBuildProjectName).nuget.targets" Condition="Exists('$(MSBuildProjectDirectory)\$(MSBuildProjectName).nuget.targets') AND '$(IncludeNuGetImports)' != 'false'" />-->
  <!--
============================================================================================================================================
  </Import>

C:\Program Files (x86)\MSBuild\14.0\Microsoft.Common.targets\ImportAfter\Microsoft.NuGet.ImportAfter.targets
============================================================================================================================================
-->
  <!--
============================================================================================================================================
  </Import>
============================================================================================================================================
-->
  <!--
============================================================================================================================================
  <Import Project="$(MSBuildExtensionsPath)\$(MSBuildToolsVersion)\Microsoft.Common.targets\ImportAfter\*" Condition="'$(ImportByWildcardAfterMicrosoftCommonTargets)' == 'true' and exists('$(MSBuildExtensionsPath)\$(MSBuildToolsVersion)\Microsoft.Common.targets\ImportAfter')">

C:\Program Files (x86)\MSBuild\14.0\Microsoft.Common.targets\ImportAfter\Microsoft.QualityTools.Testing.Fakes.ImportAfter.targets
============================================================================================================================================
-->
  <PropertyGroup Condition="$(FakesImported) != 'true'">
    <FakesBinPath Condition="$(FakesBinPath) == ''">$(MSBuildExtensionsPath)\Microsoft\VisualStudio\v$(VisualStudioVersion)\Fakes</FakesBinPath>
    <FakesTargets>$(FakesBinPath)\Microsoft.QualityTools.Testing.Fakes.targets</FakesTargets>
  </PropertyGroup>
  <!--
============================================================================================================================================
  <Import Project="$(FakesTargets)" Condition="$(FakesImported) != 'true' and Exists('$(FakesTargets)')">

C:\Program Files (x86)\MSBuild\Microsoft\VisualStudio\v14.0\Fakes\Microsoft.QualityTools.Testing.Fakes.targets
============================================================================================================================================
-->
  <!-- Safeguard against importing this .targets file multiple times -->
  <PropertyGroup>
    <FakesImported>true</FakesImported>
  </PropertyGroup>
  <!-- Build customization properties -->
  <PropertyGroup>
    <FakesBinPath Condition="$(FakesBinPath) == ''">$(MSBuildProjectDirectory)</FakesBinPath>
    <FakesOutputPath Condition="$(FakesOutputPath) == ''">$(ProjectDir)FakesAssemblies</FakesOutputPath>
    <FakesIntermediatePath>$([System.IO.Path]::Combine('$(ProjectDir)','$(IntermediateOutputPath)Fakes'))</FakesIntermediatePath>
    <FakesContinueOnError Condition="$(FakesContinueOnError) == ''">false</FakesContinueOnError>
    <FakesToolsPath Condition="$(FakesToolsPath) == ''">$(FakesBinPath)</FakesToolsPath>
    <FakesMSBuildPath Condition="'$(FakesMSBuildPath)' == ''">$(MSBuildToolsPath)\msbuild.exe</FakesMSBuildPath>
    <!-- Pass unit test project's PlatformTarget to GenerateFakes task *only if* PlatformTarget is present! -->
    <FakesCompilationProperties Condition="'$(PlatformTarget)' != ''">$(FakesCompilationProperties);PlatformTarget=$(PlatformTarget)</FakesCompilationProperties>
    <FakesCommandLineArguments Condition="'$(FakesCompilationProperties)' != ''">$(FakesCommandLineArguments) /Properties:"$(FakesCompilationProperties)"</FakesCommandLineArguments>
    <FakesCommandLineArguments>$(FakesCommandLineArguments) /msbuildpath:"$(FakesMSBuildPath)"</FakesCommandLineArguments>
    <FakesVerbosity Condition="'$(FakesVerbosity)' == ''">Critical</FakesVerbosity>
    <FakesTasks>$(FakesBinPath)\Microsoft.QualityTools.Testing.Fakes.Tasks.dll</FakesTasks>
  </PropertyGroup>
  <!-- Make "Fakes" item available as a "Build Action" in the Properties window -->
  <ItemGroup>
    <AvailableItemName Include="Fakes" />
  </ItemGroup>
  <UsingTask TaskName="Microsoft.QualityTools.Testing.Fakes.GenerateFakes" AssemblyFile="$(FakesTasks)" />
  <UsingTask TaskName="Microsoft.QualityTools.Testing.Fakes.ReportFakesWarnings" AssemblyFile="$(FakesTasks)" />
  <!-- Generate .Fakes assemblies before assembly references of the parent project are resolved -->
  <PropertyGroup>
    <ResolveAssemblyReferencesDependsOn>
      $(ResolveAssemblyReferencesDependsOn);
      FakesGenerateBeforeBuild;
    </ResolveAssemblyReferencesDependsOn>
  </PropertyGroup>
  <!-- Define Fakes build steps -->
  <PropertyGroup>
    <FakesGenerateBeforeBuildDependsOn>
      $(FakesGenerateBeforeBuildDependsOn);
      ResolveFakesReferences;
      BuildFakesAssemblies;
    </FakesGenerateBeforeBuildDependsOn>
  </PropertyGroup>
  <Target Name="FakesGenerateBeforeBuild" Condition="@(Fakes) != '' AND $(BuildingProject)" DependsOnTargets="$(FakesGenerateBeforeBuildDependsOn)" />
  <!-- Collect the references excluding Fakes assembly files. -->
  <Target Name="ResolveFakesReferences" Condition="@(Fakes) != '' AND $(BuildingProject)">
    <ItemGroup>
      <ReferenceWithoutFakes Include="@(Reference)" />
      <ReferenceWithoutFakes Remove="$(FakesOutputPath)\*.Fakes.dll" />
    </ItemGroup>
    <PropertyGroup>
      <FakesResolveAssemblyReferencesStateFile>$(IntermediateOutputPath)$(MSBuildProjectFile)FakesResolveAssemblyReference.cache</FakesResolveAssemblyReferencesStateFile>
    </PropertyGroup>
    <ResolveAssemblyReference Assemblies="@(ReferenceWithoutFakes)" AssemblyFiles="@(_ResolvedProjectReferencePaths);@(_ExplicitReference)" TargetFrameworkDirectories="$(TargetFrameworkDirectory)" InstalledAssemblyTables="@(InstalledAssemblyTables);@(RedistList)" IgnoreDefaultInstalledAssemblyTables="$(IgnoreDefaultInstalledAssemblyTables)" IgnoreDefaultInstalledAssemblySubsetTables="$(IgnoreInstalledAssemblySubsetTables)" CandidateAssemblyFiles="@(Content);@(None)" SearchPaths="$(AssemblySearchPaths)" AllowedAssemblyExtensions="$(AllowedReferenceAssemblyFileExtensions)" AllowedRelatedFileExtensions="$(AllowedReferenceRelatedFileExtensions)" TargetProcessorArchitecture="$(ProcessorArchitecture)" AppConfigFile="@(_ResolveAssemblyReferencesApplicationConfigFileForExes)" AutoUnify="$(AutoUnifyAssemblyReferences)" IgnoreVersionForFrameworkReferences="$(IgnoreVersionForFrameworkReferences)" FindDependencies="true" FindSatellites="false" FindSerializationAssemblies="false" FindRelatedFiles="true" Silent="true" TargetFrameworkVersion="$(TargetFrameworkVersion)" TargetFrameworkMoniker="$(TargetFrameworkMoniker)" TargetFrameworkMonikerDisplayName="$(TargetFrameworkMonikerDisplayName)" TargetedRuntimeVersion="$(TargetedRuntimeVersion)" StateFile="$(FakesResolveAssemblyReferencesStateFile)" InstalledAssemblySubsetTables="@(InstalledAssemblySubsetTables)" TargetFrameworkSubsets="@(_ReferenceInstalledAssemblySubsets)" FullTargetFrameworkSubsetNames="$(FullReferenceAssemblyNames)" FullFrameworkFolders="$(_FullFrameworkReferenceAssemblyPaths)" FullFrameworkAssemblyTables="@(FullFrameworkAssemblyTables)" ProfileName="" LatestTargetFrameworkDirectories="@(LatestTargetFrameworkDirectories)" CopyLocalDependenciesWhenParentReferenceInGac="$(CopyLocalDependenciesWhenParentReferenceInGac)">
      <Output TaskParameter="ResolvedFiles" ItemName="FakesResolvedReferencePaths" />
      <Output TaskParameter="ResolvedDependencyFiles" ItemName="FakesResolvedReferenceDependencyPaths" />
      <Output TaskParameter="RelatedFiles" ItemName="FakesRelatedPaths" />
      <Output TaskParameter="SatelliteFiles" ItemName="FakesSatellitePaths" />
      <Output TaskParameter="SuggestedRedirects" ItemName="FakesSuggestedRedirects" />
      <Output TaskParameter="FilesWritten" ItemName="FileWrites" />
    </ResolveAssemblyReference>
  </Target>
  <!-- Generate fakes assembly files, if outdated. -->
  <Target Name="BuildFakesAssemblies" Condition="@(Fakes) != '' AND $(BuildingProject)" Inputs="&#xD;&#xA;      @(Fakes);&#xD;&#xA;      @(FakesReferencePaths);&#xD;&#xA;      @(FakesResolvedReferencePaths);&#xD;&#xA;      @(FakesResolvedReferenceDependencyPaths);&#xD;&#xA;      @(FakesRelatedPaths);&#xD;&#xA;      @(FakesSatellitePaths);&#xD;&#xA;      @(FakesSuggestedRedirects);&#xD;&#xA;    " Outputs="@(Fakes->'$(FakesOutputPath)\%(FileName).Fakes.dll')">
    <GenerateFakes ContinueOnError="$(FakesContinueOnError)" Verbosity="$(FakesVerbosity)" ForceX86="$(FakesForceX86)" TargetFrameworkVersion="$(TargetFrameworkVersion)" TargetRuntimeVersion="$(TargetedRuntimeVersion)" ReferenceFiles="&#xD;&#xA;        @(FakesReferencePaths);&#xD;&#xA;        @(FakesResolvedReferencePaths);&#xD;&#xA;        @(FakesResolvedReferenceDependencyPaths);" SearchPaths="@(FakesSearchPaths)" CommandLineArguments="$(FakesCommandLineArguments)" OutputPath="$(FakesOutputPath)" IntermediatePath="$(FakesIntermediatePath)" Fakes="@(Fakes)" ToolsPath="$(FakesToolsPath)">
      <Output TaskParameter="FakesAssemblies" ItemName="FakesAssemblies" />
      <Output TaskParameter="FakesConfigurations" ItemName="FakesConfigurations" />
      <Output TaskParameter="FakesMessages" ItemName="FakesMessageFiles" />
    </GenerateFakes>
    <ReportFakesWarnings MessageFiles="@(FakesMessageFiles)" ContinueOnError="$(FakesContinueOnError)" />
    <ItemGroup>
      <FileWrites Include="$(FakesIntermediatePath)\**" />
      <ReferenceCopyLocalPaths Include="@(FakesConfigurations)" />
    </ItemGroup>
    <PropertyGroup>
      <!-- Append directory where .Fakes assemblies are generated to the end of the assembly search path -->
      <AssemblySearchPaths>
        $(AssemblySearchPaths);
        $(FakesOutputPath)
      </AssemblySearchPaths>
    </PropertyGroup>
  </Target>
  <!--
============================================================================================================================================
  </Import>

C:\Program Files (x86)\MSBuild\14.0\Microsoft.Common.targets\ImportAfter\Microsoft.QualityTools.Testing.Fakes.ImportAfter.targets
============================================================================================================================================
-->
  <!--
============================================================================================================================================
  </Import>
============================================================================================================================================
-->
  <!--
============================================================================================================================================
  <Import Project="$(MSBuildExtensionsPath)\$(MSBuildToolsVersion)\Microsoft.Common.targets\ImportAfter\*" Condition="'$(ImportByWildcardAfterMicrosoftCommonTargets)' == 'true' and exists('$(MSBuildExtensionsPath)\$(MSBuildToolsVersion)\Microsoft.Common.targets\ImportAfter')">

C:\Program Files (x86)\MSBuild\14.0\Microsoft.Common.targets\ImportAfter\Microsoft.VisualStudio.ReleaseManagement.BuildInfo.ImportAfter.targets
============================================================================================================================================
-->
  <!--
***********************************************************************************************
Microsoft.BuildInfo.ImportAfter.targets

WARNING:  DO NOT MODIFY this file unless you are knowledgeable about MSBuild and have
          created a backup copy.  Incorrect changes to this file will make it
          impossible to load or build your projects from the command-line or the IDE.

Copyright (C) Microsoft Corporation. All rights reserved.
***********************************************************************************************
-->
  <PropertyGroup>
    <BuildInfoBinPath Condition="$(BuildInfoBinPath) == ''">$(MSBuildExtensionsPath)\Microsoft\VisualStudio\v$(VisualStudioVersion)\BuildInfo</BuildInfoBinPath>
    <BuildInfoTargets>$(BuildInfoBinPath)\Microsoft.VisualStudio.ReleaseManagement.BuildInfo.targets</BuildInfoTargets>
  </PropertyGroup>
  <!--
============================================================================================================================================
  <Import Project="$(BuildInfoTargets)" Condition="Exists('$(BuildInfoTargets)')">

C:\Program Files (x86)\MSBuild\Microsoft\VisualStudio\v14.0\BuildInfo\Microsoft.VisualStudio.ReleaseManagement.BuildInfo.targets
============================================================================================================================================
-->
  <!--
***********************************************************************************************
Microsoft.BuildInfo.targets

WARNING:  DO NOT MODIFY this file unless you are knowledgeable about MSBuild and have
          created a backup copy.  Incorrect changes to this file will make it
          impossible to load or build your projects from the command-line or the IDE.

This file contains targets to produce a build info file.

Copyright (C) Microsoft Corporation. All rights reserved.
***********************************************************************************************
-->
  <UsingTask TaskName="GenerateBuildInfoTask" AssemblyFile="Microsoft.VisualStudio.ReleaseManagement.BuildInfoTasks.dll" />
  <UsingTask TaskName="AddUnmanagedResource" AssemblyFile="Microsoft.VisualStudio.ReleaseManagement.BuildInfoTasks.dll" />
  <UsingTask TaskName="ExtractUnmanagedResource" AssemblyFile="Microsoft.VisualStudio.ReleaseManagement.BuildInfoTasks.dll" />
  <!-- ################################################################################ -->
  <!-- Defaults -->
  <!-- ################################################################################ -->
  <PropertyGroup>
    <!-- Are we building inside TeamBuild? -->
    <BuildingInTeamBuild Condition=" '$(BuildUri)'!='' ">true</BuildingInTeamBuild>
    <!-- Generate build info config file for team build by default. Uncomment the line below after testing-->
    <GenerateBuildInfoConfigFile Condition=" '$(BuildingInTeamBuild)'=='true' AND $(GenerateBuildInfoConfigFile)=='' ">true</GenerateBuildInfoConfigFile>
    <GenerateBuildInfoConfigFile Condition=" $(GenerateBuildInfoConfigFile)=='' ">false</GenerateBuildInfoConfigFile>
    <AddBuildInfoToAssembly Condition=" $(AddBuildInfoToAssembly) == ''">false</AddBuildInfoToAssembly>
    <IncludeServerNameInBuildInfo Condition=" $(IncludeServerNameInBuildInfo) == '' ">false</IncludeServerNameInBuildInfo>
  </PropertyGroup>
  <!-- ################################################################################ -->
  <!-- Targets -->
  <!-- ################################################################################ -->
  <!-- ******************************************************* -->
  <!-- Target to supply default values for the BuildInfo file
       if the caller hasn't already supplied them. -->
  <!-- ******************************************************* -->
  <Target Name="SetBuildInfoDefaults">
    <!-- ******************************************************* -->
    <!-- Assign the default values to BuildInfo properties. -->
    <!-- ******************************************************* -->
    <PropertyGroup>
      <BuildId Condition=" $(BuildId)=='' AND $(BuildUri)!='' ">$(BuildUri)</BuildId>
      <BuildId Condition=" $(BuildId)=='' ">AutoGen_$([System.Guid]::NewGuid())</BuildId>
      <BuildLabel Condition=" $(BuildLabel)=='' ">$(BuildId)</BuildLabel>
      <BuildTimestamp Condition=" $(BuildTimestamp)=='' ">$([System.DateTime]::UtcNow.ToString("R"))</BuildTimestamp>
    </PropertyGroup>
    <!-- ******************************************************* -->
    <!-- Set the build info output file name if it hasn't already been set -->
    <!-- ******************************************************* -->
    <PropertyGroup>
      <!-- Default the path the target directory, failing which the project directory -->
      <BuildInfoPath Condition=" $(BuildInfoPath)=='' ">$(TargetDir)</BuildInfoPath>
      <BuildInfoPath Condition=" $(BuildInfoPath)=='' ">$(MSBuildProjectDirectory)</BuildInfoPath>
      <!-- Output file name: default to "[$AssemblyName].BuildInfo.config" -->
      <BuildInfoFileName Condition=" $(BuildInfoFileName) == '' AND  $(AssemblyName)!='' ">$(AssemblyName).BuildInfo.config</BuildInfoFileName>
      <BuildInfoFileName Condition=" $(BuildInfoFileName) == '' ">BuildInfo.config</BuildInfoFileName>
      <!-- Set the full path and file name. We don't need a Condition here since it's checked in the containing PropertyGroup -->
      <BuildInfoResourceFileName> $([System.IO.Path]::Combine($(IntermediateOutputPath), $(BuildInfoFileName)))</BuildInfoResourceFileName>
      <BuildInfoConfigFileName> $([System.IO.Path]::Combine($(BuildInfoPath), $(BuildInfoFileName)))</BuildInfoConfigFileName>
      <BuildInfoResourceLogicalName Condition=" $(BuildInfoResourceLogicalName)=='' ">Microsoft.VisualStudio.BuildInfo.Config</BuildInfoResourceLogicalName>
    </PropertyGroup>
  </Target>
  <!-- **********************************************************************************-->
  <!-- Target to create a new BuildInfo file as an embedded resource in the compiled file-->
  <!-- ********************************************************************************* -->
  <Target Name="CreateTfsBuildInfoResource" Condition=" $(AddBuildInfoToAssembly)==true " AfterTargets="AfterCompile" BeforeTargets="AfterBuild" Inputs="$(MSBuildAllProjects);&#xD;&#xA;            @(Compile);&#xD;&#xA;            @(_CoreCompileResourceInputs);&#xD;&#xA;            $(ApplicationIcon);&#xD;&#xA;            $(AssemblyOriginatorKeyFile);&#xD;&#xA;            @(ReferencePath);&#xD;&#xA;            @(CompiledLicenseFile);&#xD;&#xA;            @(LinkResource);&#xD;&#xA;            @(EmbeddedDocumentation);&#xD;&#xA;            $(Win32Resource);&#xD;&#xA;            $(Win32Manifest);&#xD;&#xA;            @(Page);&#xD;&#xA;            @(ApplicationDefinition);&#xD;&#xA;            @(CustomAdditionalCompileInputs)" Outputs="$(BuildInfoResourceFileName)" DependsOnTargets="SetBuildInfoDefaults">
    <GenerateBuildInfoTask BuildId="$(BuildId)" BuildLabel="$(BuildLabel)" BuildTimestamp="$(BuildTimestamp)" OutputFileName="$(BuildInfoResourceFileName)" TargetFileInSourceControl="$(MSBuildProjectFullPath)" TfsBuildUri="$(BuildUri)" TfsUrl="$(TeamFoundationServerUrl)" Configuration="$(Configuration)" BuiltSolution="$(SolutionPath)" BuildDefinition="$(BuildDefinition)" SymbolPath="$(BuildSymbolStorePath)" SourceVersion="$(BuildSourceVersion)" IncludeServerNameInBuildInfo="$(IncludeServerNameInBuildInfo)" />
    <!-- Add the file to @(FileWrites) so it will be cleaned up by the Clean target -->
    <ItemGroup Condition=" Exists('$(BuildInfoResourceFileName)') ">
      <FileWrites Include="$(BuildInfoResourceFileName)" />
    </ItemGroup>
    <AddUnmanagedResource AssemblyFile="@(IntermediateAssembly)" ResourceFile="$(BuildInfoResourceFileName)" ResourceName="$(BuildInfoResourceLogicalName)" />
  </Target>
  <!-- ******************************************************* -->
  <!-- Target to create a new BuildInfo file -->
  <!-- ******************************************************* -->
  <Target Name="CreateTfsBuildInfoFile" Condition=" $(GenerateBuildInfoConfigFile)==true AND $(WebProjectOutputDir)!=''" AfterTargets="AfterCompile" Inputs="@(IntermediateAssembly);&#xD;&#xA;            @(Content);&#xD;&#xA;            @(None);&#xD;&#xA;            @(DocFileItem);&#xD;&#xA;            @(_SourceItemsToCopyToOutputDirectoryAlways);&#xD;&#xA;            @(_SourceItemsToCopyToOutputDirectory);&#xD;&#xA;            @(_WebApplicationSilverlightXapFiles);&#xD;&#xA;            @(_binDeployableAssemblies)" Outputs="$(BuildInfoConfigFileName)" DependsOnTargets="SetBuildInfoDefaults">
    <GenerateBuildInfoTask BuildId="$(BuildId)" BuildLabel="$(BuildLabel)" BuildTimestamp="$(BuildTimestamp)" OutputFileName="$(BuildInfoConfigFileName)" TargetFileInSourceControl="$(MSBuildProjectFullPath)" ProjectName="$(MSBuildProjectName)" TfsBuildUri="$(BuildUri)" TfsUrl="$(TeamFoundationServerUrl)" Platform="$(Platform)" Configuration="$(Configuration)" BuiltSolution="$(SolutionPath)" BuildDefinition="$(BuildDefinition)" SymbolPath="$(BuildSymbolStorePath)" SourceVersion="$(BuildSourceVersion)" IncludeServerNameInBuildInfo="$(IncludeServerNameInBuildInfo)" />
    <!-- Add the file to @(FileWrites) so it will be cleaned up by the Clean target -->
    <ItemGroup Condition=" Exists('$(BuildInfoConfigFileName)') ">
      <FileWrites Include="$(BuildInfoConfigFileName)" />
    </ItemGroup>
    <!-- We're assuming we're only copying one file, so the DestinationFolder
         is hard-coded to a single file name. -->
    <Copy Condition="$(Disable_CopyWebApplication) != '' AND $(Disable_CopyWebApplication)== 'false' AND '$(OutDir)' != '$(OutputPath)' AND Exists('$(BuildInfoConfigFileName)') " SourceFiles="$(BuildInfoConfigFileName)" DestinationFiles="$(WebProjectOutputDir)\BuildInfo.config" SkipUnchangedFiles="true" Retries="$(CopyRetryCount)" RetryDelayMilliseconds="$(CopyRetryDelayMilliseconds)" />
    <!-- Add the file to @(FileWrites) so it will be cleaned up by the Clean target -->
    <ItemGroup Condition="$(Disable_CopyWebApplication) != '' AND $(Disable_CopyWebApplication)== 'false' AND '$(OutDir)' != '$(OutputPath)' AND Exists('$(BuildInfoConfigFileName)') ">
      <FileWrites Include="$(WebProjectOutputDir)\BuildInfo.config" />
    </ItemGroup>
  </Target>
  <PropertyGroup>
    <PublishPipelineCollectFilesCore>
            $(PublishPipelineCollectFilesCore);
            CollectFilesFromBuildInfoConfigFile;
        </PublishPipelineCollectFilesCore>
  </PropertyGroup>
  <Target Name="CollectFilesFromBuildInfoConfigFile" DependsOnTargets="CreateTfsBuildInfoFile" Condition=" $(GenerateBuildInfoConfigFile)==true AND $(WebProjectOutputDir)!=''">
    <!-- Add the file with the necessary metadata to the set of files to be
           published by WebDeploy.
         
           Web publishing is controlled by Microsoft.Web.Publishing.targets in 
           %(MSBuildExtensions)\Microsoft\VisualStudio\v%(VisualStudioVersion)%\Web. These targets have a
           customisable mechanism for deciding which files should be published -
           search for "FilesToIncludeTargetFile" for more information. We're short-circuiting
           the normal mechanism by explicitly adding the file to the list that needs
           to be published.
           -->
    <ItemGroup Condition=" Exists('$(BuildInfoConfigFileName)') ">
      <FilesForPackagingFromProject Include="$(BuildInfoConfigFileName)">
        <!-- The file should appear at the destination root (which is where the
                web.config should be) and be called BuildInfo.config. -->
        <DestinationRelativePath>BuildInfo.config</DestinationRelativePath>
        <FromTarget>CollectFilesFromBuildInfoConfigFile</FromTarget>
        <Exclude>false</Exclude>
        <Category>Run</Category>
      </FilesForPackagingFromProject>
    </ItemGroup>
  </Target>
  <!-- ******************************************************* -->
  <!-- Target to delete an existing BuildInfo file -->
  <!-- ******************************************************* -->
  <Target Name="DeleteBuildInfoFile" AfterTargets="AfterCompile" Condition=" $(GenerateBuildInfoConfigFile)==false " DependsOnTargets="SetBuildInfoDefaults">
    <Delete Condition="EXISTS('$(BuildInfoConfigFileName)')" Files="$(BuildInfoConfigFileName)" />
  </Target>
  <Target Name="DeleteBuildInfoResource" AfterTargets="AfterCompile" Condition=" $(AddBuildInfoToAssembly)==false " DependsOnTargets="SetBuildInfoDefaults">
    <Delete Condition="EXISTS('$(BuildInfoResourceFileName)')" Files="$(BuildInfoResourceFileName)" />
  </Target>
  <Target Name="ExtractUnmanagedResource">
    <PropertyGroup>
      <AssemblyFile Condition=" $(AssemblyFile)=='' ">$(TargetPath)</AssemblyFile>
    </PropertyGroup>
    <ExtractUnmanagedResource AssemblyFile="$(AssemblyFile)" ResourceName="$(ResourceName)" ResourceType="$(ResourceType)" ResourceFile="$(ResourceFile)" CanLogErrors="$(CanLogErrors)" />
  </Target>
  <Target Name="AddUnmanagedResource">
    <PropertyGroup>
      <AssemblyFile Condition=" $(AssemblyFile)=='' ">$(TargetPath)</AssemblyFile>
    </PropertyGroup>
    <AddUnmanagedResource AssemblyFile="$(AssemblyFile)" ResourceFile="$(ResourceFile)" ResourceName="$(ResourceName)" ResourceType="$(ResourceType)" CanLogErrors="$(CanLogErrors)" />
  </Target>
  <!--
============================================================================================================================================
  </Import>

C:\Program Files (x86)\MSBuild\14.0\Microsoft.Common.targets\ImportAfter\Microsoft.VisualStudio.ReleaseManagement.BuildInfo.ImportAfter.targets
============================================================================================================================================
-->
  <!--
============================================================================================================================================
  </Import>
============================================================================================================================================
-->
  <!--
============================================================================================================================================
  <Import Project="$(MSBuildExtensionsPath)\$(MSBuildToolsVersion)\Microsoft.Common.targets\ImportAfter\*" Condition="'$(ImportByWildcardAfterMicrosoftCommonTargets)' == 'true' and exists('$(MSBuildExtensionsPath)\$(MSBuildToolsVersion)\Microsoft.Common.targets\ImportAfter')">

C:\Program Files (x86)\MSBuild\14.0\Microsoft.Common.targets\ImportAfter\Microsoft.VisualStudio.Silverlight.SDKTools.targets
============================================================================================================================================
-->
  <!--
***********************************************************************************************
Microsoft.VisualStudio.Silverlight.SDKTools

WARNING:  DO NOT MODIFY this file unless you are knowledgeable about MSBuild and have
          created a backup copy.  Incorrect changes to this file will make it
          impossible to load or build your projects from the command-line or the IDE.

This file defines the steps in the standard build process the root SMB project.

Copyright (C) Microsoft Corporation. All rights reserved.
***********************************************************************************************
-->
  <PropertyGroup Condition="'$(TargetFrameworkIdentifier)' == 'Silverlight'">
    <!--If the path to the sign tool is not set, try the Windows SDK path or the Framework SDK path -->
    <Windows8SDKInstallationFolder>$([MSBuild]::GetRegistryValueFromView('HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Microsoft SDKs\Windows\v8.1', 'InstallationFolder', null, RegistryView.Registry32, RegistryView.Default))</Windows8SDKInstallationFolder>
    <Windows8SDKInstallationFolder Condition="'$(Windows8SDKInstallationFolder)' == ''">$([MSBuild]::GetRegistryValueFromView('HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Microsoft SDKs\Windows\v8.0', 'InstallationFolder', null, RegistryView.Registry32, RegistryView.Default))</Windows8SDKInstallationFolder>
    <_WindowsSDKSignToolPath Condition="'$(Windows8SDKInstallationFolder)' != ''">$([System.IO.Path]::Combine('$(Windows8SDKInstallationFolder)', 'bin\x86'))</_WindowsSDKSignToolPath>
    <SignToolPath Condition="'$(SignToolPath)' == '' and Exists('$(_WindowsSDKSignToolPath)\SignTool.exe')">$(_WindowsSDKSignToolPath)</SignToolPath>
    <SignToolPath Condition="'$(SignToolPath)' == ''">$(FrameworkSDKRoot)bin</SignToolPath>
  </PropertyGroup>
  <!--
============================================================================================================================================
  </Import>
============================================================================================================================================
-->
  <!--
============================================================================================================================================
  <Import Project="$(MSBuildExtensionsPath)\$(MSBuildToolsVersion)\Microsoft.Common.targets\ImportAfter\*" Condition="'$(ImportByWildcardAfterMicrosoftCommonTargets)' == 'true' and exists('$(MSBuildExtensionsPath)\$(MSBuildToolsVersion)\Microsoft.Common.targets\ImportAfter')">

C:\Program Files (x86)\MSBuild\14.0\Microsoft.Common.targets\ImportAfter\Xamarin.Common.targets
============================================================================================================================================
-->
  <Target Name="XamarinPCLClean" AfterTargets="CoreClean" Condition=" $(TargetFrameworkProfile) != '' And $(TargetFrameworkIdentifier) == '.NETPortable' ">
    <ItemGroup>
      <_MdbFile Include="$(TargetPath).mdb" Condition="Exists('$(TargetPath).mdb')" />
    </ItemGroup>
    <Delete Files="@(_MdbFile)" TreatErrorsAsWarnings="true" />
  </Target>
  <Target Name="GetBuiltProjectOutputRecursive" Returns="@(AllBuiltProjectOutputs)" DependsOnTargets="AssignProjectConfiguration">
    <MSBuild Projects="@(ProjectReferenceWithConfiguration)" Targets="GetBuiltProjectOutputRecursive" BuildInParallel="$(BuildInParallel)" Properties="%(ProjectReferenceWithConfiguration.SetConfiguration); %(ProjectReferenceWithConfiguration.SetPlatform)" ContinueOnError="!$(BuildingProject)" RemoveProperties="%(ProjectReferenceWithConfiguration.GlobalPropertiesToRemove)">
      <Output TaskParameter="TargetOutputs" ItemName="_RecursiveBuiltProjectOutputs" />
    </MSBuild>
    <ItemGroup>
      <AllBuiltProjectOutputs Include="@(_RecursiveBuiltProjectOutputs)" />
      <AllBuiltProjectOutputs Include="@(BuiltProjectOutputGroupKeyOutput)" />
    </ItemGroup>
    <WriteLinesToFile File="$(IntermediateOutputPath)$(CleanFile)" Lines="@(BuiltProjectOutputGroupKeyOutput -> '%(FullPath).mdb');@(BuiltProjectOutputGroupKeyOutput -> '%(FinalOutputPath).mdb')" Overwrite="false" ContinueOnError="WarnAndContinue" />
  </Target>
  <Target Name="_CollectPCLPdbFiles" BeforeTargets="_ConvertPdbFiles" AfterTargets="_CollectPdbFiles" DependsOnTargets="GetBuiltProjectOutputRecursive">
    <ItemGroup>
      <_ResolvedPdbFiles Include="@(AllBuiltProjectOutputs -> '%(FinalOutputPath)')" Condition="Exists('%(AllBuiltProjectOutputs.FinalOutputPath)')" />
    </ItemGroup>
  </Target>
  <Target Name="_CollectPCLMdbFiles" BeforeTargets="_CollectMdbFiles" AfterTargets="_CopyMdbFiles">
    <ItemGroup>
      <_ResolvedMdbFiles Include="@(AllBuiltProjectOutputs -> '%(FinalOutputPath).mdb')" Condition="Exists('%(AllBuiltProjectOutputs.FinalOutputPath).mdb')" />
    </ItemGroup>
  </Target>
  <!--
============================================================================================================================================
  </Import>

C:\Program Files (x86)\MSBuild\14.0\bin\Microsoft.Common.CurrentVersion.targets
============================================================================================================================================
-->
  <!--<Import Project="$(MSBuildUserExtensionsPath)\$(MSBuildToolsVersion)\Microsoft.Common.targets\ImportAfter\*" Condition="'$(ImportUserLocationsByWildcardAfterMicrosoftCommonTargets)' == 'true' and exists('$(MSBuildUserExtensionsPath)\$(MSBuildToolsVersion)\Microsoft.Common.targets\ImportAfter')" />-->
  <!--
============================================================================================================================================
  </Import>

C:\Program Files (x86)\MSBuild\14.0\bin\Microsoft.Common.targets
============================================================================================================================================
-->
  <!--<ImportGroup Condition="'$(MSBuildAssemblyVersion)' == ''">-->
  <!--<Import Project="$(MSBuildExtensionsPath)\4.0\Microsoft.NETFramework.props\ImportAfter\*" Condition="'$(ImportByWildcardAfter40MicrosoftNetFrameworkProps)' == 'true' and exists('$(MSBuildExtensionsPath)\4.0\Microsoft.NETFramework.props\ImportAfter')" />-->
  <!--<Import Project="$(MSBuildUserExtensionsPath)\4.0\Microsoft.NETFramework.props\ImportAfter\*" Condition="'$(ImportUserLocationsByWildcardAfter40MicrosoftNetFrameworkProps)' == 'true' and exists('$(MSBuildUserExtensionsPath)\4.0\Microsoft.NETFramework.props\ImportAfter')" />-->
  <!--</ImportGroup>-->
  <!--<ImportGroup Condition="'$(MSBuildAssemblyVersion)' == ''">-->
  <!--<Import Project="$(MSBuildExtensionsPath)\4.0\Microsoft.Common.targets\ImportAfter\*" Condition="'$(ImportByWildcardAfter40MicrosoftCommonTargets)' == 'true' and exists('$(MSBuildExtensionsPath)\4.0\Microsoft.Common.targets\ImportAfter')" />-->
  <!--<Import Project="$(MSBuildUserExtensionsPath)\4.0\Microsoft.Common.targets\ImportAfter\*" Condition="'$(ImportUserLocationsByWildcardAfter40MicrosoftCommonTargets)' == 'true' and exists('$(MSBuildUserExtensionsPath)\4.0\Microsoft.Common.targets\ImportAfter')" />-->
  <!--</ImportGroup>-->
  <!-- Fix up FrameworkPathOverride, which is primarily used to determine the location of mscorlib.dll in the 
        (relatively uncommon) situation where the reference assemblies, in which it's usually found, are not 
        installed.  -->
  <PropertyGroup Condition="'$(MSBuildAssemblyVersion)' == ''">
    <FrameworkPathOverride Condition="!Exists('$(FrameworkPathOverride)\mscorlib.dll')">$(MSBuildFrameworkToolsPath)</FrameworkPathOverride>
  </PropertyGroup>
  <!--
============================================================================================================================================
  </Import>

C:\Program Files (x86)\MSBuild\14.0\bin\Microsoft.CSharp.CurrentVersion.targets
============================================================================================================================================
-->
  <!--
============================================================================================================================================
  <Import Project="$(MSBuildToolsPath)\Microsoft.ServiceModel.targets" Condition="('$(TargetFrameworkVersion)' != 'v2.0' and '$(TargetFrameworkVersion)' != 'v3.0' and '$(TargetFrameworkVersion)' != 'v3.5') and Exists('$(MSBuildToolsPath)\Microsoft.ServiceModel.targets')">

C:\Program Files (x86)\MSBuild\14.0\bin\Microsoft.ServiceModel.targets
============================================================================================================================================
-->
  <!-- 
        With MSBuild 12, we've changed MSBuildToolsPath to for the first time point to a directory
        outside of the .NET Framework.  As a result of this, there were several targets files, of which 
        this was one, that were being referenced as out of MSBuildToolsPath that are now no longer there.  

        Thus, we are shimming those targets files so that they do still appear in MSBuildToolsPath, so that 
        consumers of them are not broken, but since the targets files themselves are still part of .NET, 
        the shim will internally simply redirect to the real copy of the targets file in the .NET Framework. 
   -->
  <!--
============================================================================================================================================
  <Import Project="$(MSBuildFrameworkToolsPath)\Microsoft.ServiceModel.targets">

C:\Windows\Microsoft.NET\Framework\v4.0.30319\Microsoft.ServiceModel.targets
============================================================================================================================================
-->
  <!--
***********************************************************************************************
Microsoft.ServiceModel.targets

WARNING:  DO NOT MODIFY this file unless you are knowledgeable about MSBuild and have
          created a backup copy.  Incorrect changes to this file will make it
          impossible to load or build your projects from the command-line or the IDE.

Copyright (C) Microsoft Corporation. All rights reserved.
***********************************************************************************************
-->
  <UsingTask TaskName="Microsoft.Build.Tasks.Xsd.XsdTypeImporterTask" AssemblyName="XsdBuildTask, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35, processorArchitecture=MSIL" />
  <!-- sub build target, preceeding XsdCodeGen -->
  <Target Name="PreXsdCodeGen" BeforeTargets="CoreCompile">
    <ItemGroup>
      <XsdCodeGenInputXsdFiles Include="@(None)" Condition=" '%(None.Extension)' == '.xsd' and '%(None.Generator)' == '' " />
    </ItemGroup>
    <PropertyGroup>
      <XsdCodeGenPreCondition>False</XsdCodeGenPreCondition>
      <XsdCodeGenPreCondition Condition="'$(TargetFrameworkVersion)' != 'v2.0' and '$(TargetFrameworkVersion)' != 'v3.0' and '$(TargetFrameworkVersion)' != 'v3.5' and '$(TargetFrameworkVersion)' != 'v4.0' and ( '$(TargetFrameworkIdentifier)' == '.NETFramework' or '$(TargetFrameworkIdentifier)' == 'Silverlight' ) and '$(XsdCodeGenEnabled)' == 'True' and '@(XsdCodeGenInputXsdFiles)' != '' ">True</XsdCodeGenPreCondition>
    </PropertyGroup>
    <CallTarget Targets="CleanXsdCodeGen" Condition=" '$(XsdCodeGenPreCondition)' != 'True' " />
  </Target>
  <!-- main build target -->
  <Target Name="XsdCodeGen" DependsOnTargets="ResolveReferences" AfterTargets="PreXsdCodeGen" Condition=" '$(XsdCodeGenPreCondition)' == 'True' ">
    <!-- will show in VS output window, for discoverability -->
    <Message Importance="high" Text="Generating code from XSD: InputXsdFiles=@(XsdCodeGenInputXsdFiles)" />
    <PropertyGroup>
      <!-- assign default values -->
      <XsdCodeGenSerializerMode Condition=" '$(XsdCodeGenSerializerMode)' == '' ">XmlSerializer</XsdCodeGenSerializerMode>
      <XsdCodeGenReuseTypesFlag Condition=" '$(XsdCodeGenReuseTypesFlag)' == '' ">True</XsdCodeGenReuseTypesFlag>
      <XsdCodeGenReuseTypesMode Condition=" '$(XsdCodeGenReuseTypesMode)' == '' ">All</XsdCodeGenReuseTypesMode>
      <XsdCodeGenNamespaceMappings Condition=" '$(XsdCodeGenNamespaceMappings)' == '' and '$(Language)' == 'C#' and '$(RootNamespace)' != '' ">*, $(RootNamespace).ContractTypes</XsdCodeGenNamespaceMappings>
      <XsdCodeGenNamespaceMappings Condition=" '$(XsdCodeGenNamespaceMappings)' == '' ">*, ContractTypes</XsdCodeGenNamespaceMappings>
      <XsdCodeGenCollectionTypes Condition=" '$(XsdCodeGenCollectionTypes)' == '' ">System.Array;System.Collections.Generic.Dictionary`2</XsdCodeGenCollectionTypes>
      <XsdCodeGenImportXmlTypes Condition=" '$(XsdCodeGenImportXmlTypes)' == '' ">True</XsdCodeGenImportXmlTypes>
      <XsdCodeGenGenerateSerializableTypes Condition=" '$(XsdCodeGenGenerateSerializableTypes)' == '' ">True</XsdCodeGenGenerateSerializableTypes>
      <XsdCodeGenGenerateDataTypesOnly Condition=" '$(XsdCodeGenGenerateDataTypesOnly)' == '' ">False</XsdCodeGenGenerateDataTypesOnly>
      <XsdCodeGenGenerateInternalTypes Condition=" '$(XsdCodeGenGenerateInternalTypes)' == '' ">False</XsdCodeGenGenerateInternalTypes>
      <XsdCodeGenEnableDataBinding Condition=" '$(XsdCodeGenEnableDataBinding)' == '' ">False</XsdCodeGenEnableDataBinding>
      <!-- calc dynamic values -->
      <XsdCodeGenSupportFx35DataTypes Condition="'$(XsdCodeGenSupportFx35DataTypes)' == '' and '$(TargetFrameworkVersion)' == 'v2.0'">False</XsdCodeGenSupportFx35DataTypes>
      <XsdCodeGenSupportFx35DataTypes Condition="'$(XsdCodeGenSupportFx35DataTypes)' == '' and '$(TargetFrameworkVersion)' == 'v3.0'">False</XsdCodeGenSupportFx35DataTypes>
      <XsdCodeGenSupportFx35DataTypes Condition="'$(XsdCodeGenSupportFx35DataTypes)' == ''">True</XsdCodeGenSupportFx35DataTypes>
    </PropertyGroup>
    <!-- calc references for type reusing, resolve their paths from @(ReferencePath) from 'ResolveReferences' build target -->
    <ItemGroup>
      <XsdCodeGenReferencesResolved Include="@(ReferencePath)" Condition=" '$(XsdCodeGenReuseTypesFlag)' == 'True' and '$(XsdCodeGenReuseTypesMode)' == 'All' " />
    </ItemGroup>
    <CallTarget Targets="XsdResolveReferencePath" Condition=" '$(XsdCodeGenReuseTypesFlag)' == 'True' and '$(XsdCodeGenReuseTypesMode)' != 'All' ">
      <Output ItemName="XsdCodeGenReferencesResolved" TaskParameter="TargetOutputs" />
    </CallTarget>
    <!-- will show in VS output window, for discoverability -->
    <Message Importance="high" Text="Generating code from XSD: References=@(XsdCodeGenReferencesResolved)" />
    <!-- set property <MSBuildTargetsVerbose>True</MSBuildTargetsVerbose> to see following messages -->
    <Message Text="Generating code from XSD: OutputDirectory=$(IntermediateOutputPath)\XsdGeneratedCode" />
    <Message Text="Generating code from XSD: Language=$(Language)" />
    <Message Text="Generating code from XSD: NamespaceMappings=$(XsdCodeGenNamespaceMappings)" />
    <Message Text="Generating code from XSD: SerializerMode=$(XsdCodeGenSerializerMode)" />
    <Message Text="Generating code from XSD: CollectionTypes=$(XsdCodeGenCollectionTypes)" />
    <Message Text="Generating code from XSD: ExcludedTypes=$(XsdCodeGenExcludedTypes)" />
    <Message Text="Generating code from XSD: ImportXmlTypes=$(XsdCodeGenImportXmlTypes)" />
    <Message Text="Generating code from XSD: GenerateSerializableTypes=$(XsdCodeGenGenerateSerializableTypes)" />
    <Message Text="Generating code from XSD: GenerateInternalTypes=$(XsdCodeGenGenerateInternalTypes)" />
    <Message Text="Generating code from XSD: EnableDataBinding=$(XsdCodeGenEnableDataBinding)" />
    <Message Text="Generating code from XSD: SupportFx35DataTypes=$(XsdCodeGenSupportFx35DataTypes)" />
    <MakeDir Directories="$(IntermediateOutputPath)\XsdGeneratedCode" />
    <ItemGroup>
      <XsdCodeGenGeneratedFile Condition=" '@(XsdCodeGenGeneratedFile)' == '' And '$(Language)' == 'C#' " Include="$(IntermediateOutputPath)\XsdGeneratedCode\GeneratedXsdTypes.cs" />
      <XsdCodeGenGeneratedFile Condition=" '@(XsdCodeGenGeneratedFile)' == '' And '$(Language)' == 'VB' " Include="$(IntermediateOutputPath)\XsdGeneratedCode\GeneratedXsdTypes.vb" />
    </ItemGroup>
    <Touch Files="@(XsdCodeGenGeneratedFile)" AlwaysCreate="true" />
    <ItemGroup>
      <Compile Include="@(XsdCodeGenGeneratedFile)" />
      <FileWrites Include="@(XsdCodeGenGeneratedFile)" />
    </ItemGroup>
    <XsdTypeImporterTask InputXsdFiles="@(XsdCodeGenInputXsdFiles)" References="@(XsdCodeGenReferencesResolved)" OutputDirectory="$(IntermediateOutputPath)\XsdGeneratedCode" Language="$(Language)" NamespaceMappings="$(XsdCodeGenNamespaceMappings.Split(';'))" SerializerMode="$(XsdCodeGenSerializerMode)" CollectionTypes="$(XsdCodeGenCollectionTypes.Split(';'))" ExcludedTypes="$(XsdCodeGenExcludedTypes.Split(';'))" ImportXmlTypes="$(XsdCodeGenImportXmlTypes)" GenerateSerializableTypes="$(XsdCodeGenGenerateSerializableTypes)" GenerateInternalTypes="$(XsdCodeGenGenerateInternalTypes)" EnableDataBinding="$(XsdCodeGenEnableDataBinding)" SupportFx35DataTypes="$(XsdCodeGenSupportFx35DataTypes)" />
    <!-- will show in VS output window, for discoverability -->
    <Message Importance="high" Text="Generated code from XSD: GeneratedFile=@(XsdCodeGenGeneratedFile)" />
  </Target>
  <!-- sub build target, called by XsdCodeGen -->
  <Target Name="XsdResolveReferencePath" Outputs="@(XsdCodeGenReferencesResolved)">
    <!-- filter @(ReferencePath) (full file path) by $(XsdCodeGenReferences) (file name without extension) -->
    <WriteLinesToFile File="$(IntermediateOutputPath)\XsdCodeGenTempA.txt" Lines="@(ReferencePath)" Overwrite="True" />
    <WriteLinesToFile File="$(IntermediateOutputPath)\XsdCodeGenTempB.txt" Lines="$(XsdCodeGenReferences.Split(';'))" Overwrite="True" />
    <Delete Files="$(IntermediateOutputPath)\XsdCodeGenTempC.txt" />
    <!-- for /f "tokens=*" %%a in ($(IntermediateOutputPath)\XsdCodeGenTempA.txt) do ( for /f "tokens=*" %%b in ($(IntermediateOutputPath)\XsdCodeGenTempB.txt) do ( if /i "%%~na" EQU "%%~b" ( echo %%a>>"$(IntermediateOutputPath)\XsdCodeGenTempC.txt" ) ) ) -->
    <Exec Command="for /f %22tokens=*%22 %%a in ($(IntermediateOutputPath)\XsdCodeGenTempA.txt) do ( for /f %22tokens=*%22 %%b in ($(IntermediateOutputPath)\XsdCodeGenTempB.txt) do ( if /i %22%%~na%22 EQU %22%%~b%22 ( echo %%a&gt;&gt;%22$(IntermediateOutputPath)\XsdCodeGenTempC.txt%22 ) ) )" />
    <ReadLinesFromFile File="$(IntermediateOutputPath)\XsdCodeGenTempC.txt">
      <Output ItemName="XsdCodeGenReferencesResolved" TaskParameter="Lines" />
    </ReadLinesFromFile>
    <Delete Files="$(IntermediateOutputPath)\XsdCodeGenTempA.txt;$(IntermediateOutputPath)\XsdCodeGenTempB.txt;$(IntermediateOutputPath)\XsdCodeGenTempC.txt" />
  </Target>
  <!-- clean build target for XsdCodeGen -->
  <Target Name="CleanXsdCodeGen" AfterTargets="Clean">
    <ItemGroup>
      <CleanXsdCodeGenFiles Include="$(IntermediateOutputPath)\XsdGeneratedCode\*" />
    </ItemGroup>
    <Delete Files="@(CleanXsdCodeGenFiles)" />
  </Target>
  <!--
============================================================================================================================================
  </Import>

C:\Program Files (x86)\MSBuild\14.0\bin\Microsoft.ServiceModel.targets
============================================================================================================================================
-->
  <!--
============================================================================================================================================
  </Import>

C:\Program Files (x86)\MSBuild\14.0\bin\Microsoft.CSharp.CurrentVersion.targets
============================================================================================================================================
-->
  <Target Name="_SetTargetFrameworkMonikerAttribute" BeforeTargets="GenerateTargetFrameworkMonikerAttribute">
    <PropertyGroup>
      <TargetFrameworkMonikerAssemblyAttributeText Condition="'$(TargetFrameworkMoniker)' != '' and '$(TargetingClr2Framework)' != 'true'">
// &lt;autogenerated /&gt;
using System%3b
using System.Reflection%3b
[assembly: global::System.Runtime.Versioning.TargetFrameworkAttribute("$(TargetFrameworkMoniker)", FrameworkDisplayName = "$(TargetFrameworkMonikerDisplayName)")]
        </TargetFrameworkMonikerAssemblyAttributeText>
    </PropertyGroup>
  </Target>
  <PropertyGroup>
    <Utf8Output Condition="'$(Utf8Output)' == ''">true</Utf8Output>
    <!-- NoCompilerStandardLib maps to the compiler's /nostdlib option. By default we always
           want that switch to be passed to the compiler so that either we or the user
           provides the references
           NoStdLib on the other hand indicates that the user doesn't want standard references
           so only if NoStdLib isn't set to true, will we provide the standard references
      -->
    <NoCompilerStandardLib Condition=" '$(NoCompilerStandardLib)' == '' ">true</NoCompilerStandardLib>
    <ErrorEndLocation Condition="'$(BuildingInsideVisualStudio)' == 'true' and '$(ErrorEndLocation)' == ''">true</ErrorEndLocation>
    <!-- When building inside VS, by default use the same language for compiler messages as VS itself does. -->
    <PreferredUILang Condition="'$(BuildingInsideVisualStudio)' == 'true' and '$(PreferredUILang)' == ''">$([System.Globalization.CultureInfo]::CurrentUICulture.Name)</PreferredUILang>
  </PropertyGroup>
  <!-- Add any "automatic" compiler references that need to be resolved when NoCompilerStandardLib is set
         but the user hasn't told us to not include standard references -->
  <ItemGroup Condition=" '$(NoCompilerStandardLib)' == 'true' and '$(NoStdLib)' != 'true' ">
    <!-- Note that unlike VB, C# does not automatically locate System.dll as a "standard library"
           instead the reference is always passed from the project. Also, for mscorlib.dll 
           we need to provide the explicit location in order to maintain the correct behaviour
      -->
    <_ExplicitReference Include="$(FrameworkPathOverride)\mscorlib.dll" />
  </ItemGroup>
  <!--<Import Project="$(CustomAfterMicrosoftCSharpTargets)" Condition="'$(CustomAfterMicrosoftCSharpTargets)' != '' and Exists('$(CustomAfterMicrosoftCSharpTargets)')" />-->
  <!--<Import Project="$(MSBuildExtensionsPath)\$(MSBuildToolsVersion)\Microsoft.CSharp.targets\ImportAfter\*" Condition="'$(ImportByWildcardAfterMicrosoftCSharpTargets)' == 'true' and exists('$(MSBuildExtensionsPath)\$(MSBuildToolsVersion)\Microsoft.CSharp.targets\ImportAfter')" />-->
  <!--<Import Project="$(MSBuildUserExtensionsPath)\$(MSBuildToolsVersion)\Microsoft.CSharp.targets\ImportAfter\*" Condition="'$(ImportUserLocationsByWildcardAfterMicrosoftCSharpTargets)' == 'true' and exists('$(MSBuildUserExtensionsPath)\$(MSBuildToolsVersion)\Microsoft.CSharp.targets\ImportAfter')" />-->
  <!--
============================================================================================================================================
  </Import>

C:\Program Files (x86)\MSBuild\14.0\bin\Microsoft.CSharp.targets
============================================================================================================================================
-->
  <!-- Really should be imported right after Microsoft.NETFramework.props, but because Microsoft.CSharp.targets imports 
        Microsoft.Common.targets from the current directory rather than using MSBuildToolsPath (which would redirect to our
        targets), and Microsoft.Common.targets does likewise with Microsoft.NETFramework.props, we're stuck doing it this 
        way instead. -->
  <!--<ImportGroup Condition="'$(MSBuildAssemblyVersion)' == ''">-->
  <!--<Import Project="$(MSBuildExtensionsPath)\4.0\Microsoft.NETFramework.props\ImportAfter\*" Condition="'$(ImportByWildcardAfter40MicrosoftNetFrameworkProps)' == 'true' and exists('$(MSBuildExtensionsPath)\4.0\Microsoft.NETFramework.props\ImportAfter')" />-->
  <!--<Import Project="$(MSBuildUserExtensionsPath)\4.0\Microsoft.NETFramework.props\ImportAfter\*" Condition="'$(ImportUserLocationsByWildcardAfter40MicrosoftNetFrameworkProps)' == 'true' and exists('$(MSBuildUserExtensionsPath)\4.0\Microsoft.NETFramework.props\ImportAfter')" />-->
  <!--</ImportGroup>-->
  <!-- Really should be imported right after Microsoft.Common.targets, but because Microsoft.CSharp.targets imports 
        Microsoft.Common.targets from the current directory rather than using MSBuildToolsPath (which would redirect to our
        targets), we're stuck doing it this way instead. -->
  <!--<ImportGroup Condition="'$(MSBuildAssemblyVersion)' == ''">-->
  <!--<Import Project="$(MSBuildExtensionsPath)\4.0\Microsoft.Common.targets\ImportAfter\*" Condition="'$(ImportByWildcardAfter40MicrosoftCommonTargets)' == 'true' and exists('$(MSBuildExtensionsPath)\4.0\Microsoft.Common.targets\ImportAfter')" />-->
  <!--<Import Project="$(MSBuildUserExtensionsPath)\4.0\Microsoft.Common.targets\ImportAfter\*" Condition="'$(ImportUserLocationsByWildcardAfter40MicrosoftCommonTargets)' == 'true' and exists('$(MSBuildUserExtensionsPath)\4.0\Microsoft.Common.targets\ImportAfter')" />-->
  <!--</ImportGroup>-->
  <!--<ImportGroup Condition="'$(MSBuildAssemblyVersion)' == ''">-->
  <!--<Import Project="$(MSBuildExtensionsPath)\4.0\Microsoft.CSharp.targets\ImportAfter\*" Condition="'$(ImportByWildcardAfter40MicrosoftCSharpTargets)' == 'true' and exists('$(MSBuildExtensionsPath)\4.0\Microsoft.CSharp.targets\ImportAfter')" />-->
  <!--<Import Project="$(MSBuildUserExtensionsPath)\4.0\Microsoft.CSharp.targets\ImportAfter\*" Condition="'$(ImportUserLocationsByWildcardAfter40MicrosoftCSharpTargets)' == 'true' and exists('$(MSBuildUserExtensionsPath)\4.0\Microsoft.CSharp.targets\ImportAfter')" />-->
  <!--</ImportGroup>-->
  <!-- Fix up FrameworkPathOverride, which is primarily used to determine the location of mscorlib.dll in the 
        (relatively uncommon) situation where the reference assemblies, in which it's usually found, are not 
        installed.  Defined here rather than in Microsoft.Common.targets because the .NET Microsoft.CSharp.targets 
        imports Microsoft.Common.targets from the current directory. -->
  <PropertyGroup Condition="'$(MSBuildAssemblyVersion)' == ''">
    <FrameworkPathOverride Condition="!Exists('$(FrameworkPathOverride)\mscorlib.dll')">$(MSBuildFrameworkToolsPath)</FrameworkPathOverride>
  </PropertyGroup>
  <!--
============================================================================================================================================
  </Import>

F:\git\CSharpTemplate\CSharpTemplate.csproj
============================================================================================================================================
-->
  <!-- To modify your build process, add your task inside one of the targets below and uncomment it. 
       Other similar extension points exist, see Microsoft.Common.targets.
  <Target Name="BeforeBuild">
  </Target>
  <Target Name="AfterBuild">
  </Target>
  -->
</Project>