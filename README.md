### Managing Permissions With HealthKit

#### Author: Bart Jacobs

Getting started with HealthKit is not difficult as long as you are not intimidated by the slew of classes, methods, and constants the framework defines. Without a proper foundation, you may miss the forest for the trees.

In this series, I aim to give you that foundation. This tutorial focuses on the basics. This includes setting up a project for HealthKit and requesting authorization. This includes setting up a project for HealthKit, requesting authorization, and a brief overview of several key classes defined by the HealthKit framework.

## Project Setup

Regular readers know that I am an advocate of learning by doing. Fire up Xcode, create a new project based on the **Single View Application** template, and set **Product Name** to **Meditations**. Set **Language** to **Swift** and **Devices** to **Universal**.

![Choosing the Single View Application Template](https://cocoacasts.s3.amazonaws.com/managing-permissions-with-healthkit/figure-project-setup-1.jpg)

![Configuring the Project](https://cocoacasts.s3.amazonaws.com/managing-permissions-with-healthkit/figure-project-setup-2.jpg)

In this project, we create the foundation for an application to track the user's meditations. We target iPhone and iPad to find out how easy, or complex, it is to add support for HealthKit to a universal iOS application. Remember that HealthKit is [not available on iPad](https://cocoacasts.com/what-is-healthkit/).

**Read this article on the [blog](https://cocoacasts.com/managing-permissions-with-healthkit/)**.
