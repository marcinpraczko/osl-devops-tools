# -*- coding: utf-8 -*-

import setuptools

with open("README.md", "r") as fh:
        long_description = fh.read()

setuptools.setup(
    name = "osl_devops_tools",
    version = "0.0.3",
    author = "Marcin Praczko",
    author_email="marcin.praczko@gmail.com",
    description="Simple helper to build apps and services",
    long_description=long_description,
    long_description_content_type="text/markdown",
    url="https://github.com/marcinpraczko/osl-devops-tools",
    packages=setuptools.find_packages(),
    classifiers = [
        "License :: OSI Approved :: GNU General Public License v3 or later (GPLv3+)",
        "Operating System :: OS Independent",
    ],
    entry_points = {
        'console_scripts': [
            'osl_devops_tools=osl_devops_tools.cli:cli'
        ]
    }
)
