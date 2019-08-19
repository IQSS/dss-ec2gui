---
title: "Using AWS EC2 Compute and S3 Storage for Model Fitting"
author: ""
date: "August 2019"
description: "This is a tutorial for using AWS EC2 cmpute and S3 storage for model fitting via AWWS Management Console."
github-repo: "IQSS/dss-ec2gui"
site: "bookdown::bookdown_site"
documentclass: book
geometry: "margin=1.5in"
biblio-style: apalike
link-citations: yes
---


# Introduction {-}

## Table of Contents {-}

In this tutorial, we first provide an overview of AWS Elastic Compute Cloud (EC2) and Simple Storage Service (S3) services. As an example of using them for model fitting, we then will launch an Amazon Deep Learning Instance on EC2 and run a Multi-Layer Perceptron model that predicts the wireless network intrusion activities from a customized dataset uploaded and stored in an AWS S3 bucket. We will do these tasks using **AWS Management Console**.

This tutorial is organized into the following parts:  
1.	Introduce AWS EC2 and S3 Services  
2.	Set Up an AWS Account  
3.	Launch an Amazon Deep Learning Amazon Machine Images (AMI) Instance  
4.	Grant an AMI instance access to an S3 bucket  
5.	Use the S3 Console to Store and Transfer Your Data  
6.	Retrieve the IP address of your Deep Learning AMI instance and connect to the instance  
7.	Launch a Jupyter notebook  
8.	Create, train, and evaluate a Multi-Layer Perceptron model using neural networks  
9.	Finally, get the results locally  

This tutorial is still under development, and we take feedback! If you find anything confusing or think the guide misses important content, please email help@iq.harvard.edu.

## Authors and Sources {-}

Steve Worthington and Jinjie Liu at the IQSS designed the structure of the guide and wrote down the content. This tutorial was written based on the Lab Guide of the [Deep Learning on AWS 1.3 Training Course](https://bit.ly/aws-dlg-2019-06-21). We added to it with three new contents: (1) use the S3 Console to store and transfer your data; (2) allow an EC2 instance to read data from and write computational results to an S3 bucket; and (3) use TensorFlow programming framework for developing a deep learning model. We also referenced Bernard Golden’s book [Amazon Web Services for Dummies](https://fit.mta.edu.vn/files/DanhSach/Book_Amazon%20webservices%20for%20dummies.pdf) for the conceptual issues and the online AWS documentation for implementation. 
