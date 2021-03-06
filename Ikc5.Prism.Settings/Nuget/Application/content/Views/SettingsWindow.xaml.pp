﻿<Window x:Class="$rootnamespace$.Views.SettingsWindow"
        xmlns="http://schemas.microsoft.com/winfx/2006/xaml/presentation"
        xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml"
        xmlns:d="http://schemas.microsoft.com/expression/blend/2008"
        xmlns:mc="http://schemas.openxmlformats.org/markup-compatibility/2006"
        xmlns:regions="http://prismlibrary.com/"
        mc:Ignorable="d"
        regions:ViewModelLocator.AutoWireViewModel="False"
        d:DesignHeight="200" d:DesignWidth="300" 
        Title="Options" SizeToContent="WidthAndHeight"
        WindowStartupLocation="CenterOwner" ResizeMode="NoResize">

    <Window.Resources>
    </Window.Resources>

    <Grid x:Name="MainGrid">
        <Grid.ColumnDefinitions>
            <ColumnDefinition Width="Auto"/>
            <ColumnDefinition Width="*"/>
        </Grid.ColumnDefinitions>

        <Grid.RowDefinitions>
            <RowDefinition Height="*"/>
            <RowDefinition Height="50"/>
        </Grid.RowDefinitions>

        <ContentControl
            Grid.Column="0"
            Grid.Row="0"
            Margin="5 2 5 2"
            regions:RegionManager.RegionName="AppSettingsRegion" />

        <TabControl
            x:Name="ModuleSettingsTabControl"
            Grid.Column="1"
            Grid.Row="0"
            Margin="5 2 5 2">
        </TabControl>
        
         <Grid
            x:Name="CommandGrid"
            Grid.Column="0"
            Grid.Row="1"
            Grid.ColumnSpan="2"
            Width="{Binding ElementName=MainGrid, Path=ActualWidth, Mode=OneWay}">

            <Grid.ColumnDefinitions>
                <ColumnDefinition Width="*"/>
                <ColumnDefinition Width="Auto"/>
                <ColumnDefinition Width="Auto"/>
            </Grid.ColumnDefinitions>

            <Button
                x:Name="SaveButton"
                Grid.Column="1"
                Content="Save"
                Command="{Binding Path=SaveCommand}"
                IsDefault="True" TabIndex="1000"
                Width="75"
                Height="25"
                Margin="5 2 5 2"
                Click="SaveButtonClick"/>

            <Button
                x:Name="CancelButton"
                Grid.Column="2"
                Content="Cancel"
                Command="{Binding Path=CancelCommand}"
                IsCancel="True" TabIndex="1001"
                Width="75"
                Height="25"
                Margin="5 2 5 2"
                Click="CancelButtonClick"/>

        </Grid>

    </Grid>
</Window>
