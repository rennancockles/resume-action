# Resume Template

Create a resume and host with github pages.

## How to use

Install this GitHub action by creating a file in your repo at `.github/workflows/resume-template.yml`.

A minimal example could be:

```YAML
name: Resume Template

on:
  push:
    branches:
      - master

jobs:
  resume-template:
    runs-on: ubuntu-latest
    steps:
      - name: Checkout
        uses: actions/checkout@v2
      - name: Resume Template Action
        uses: rennancockles/resume-action@v1
        env:
          GITHUB_TOKEN: ${{ secrets.GITHUB_TOKEN }}
        with:
          directory: 'data'
          cname: 'resume.mycustomdomain.com'
```

This example uses the defaults configurations.

It will run for each push to master branch, create a resume with the data provided and push to `gh-pages` branch.

## Supported Languages

The supported languages, along with their codes, are listed in the table below:

| Language  | Code |
| :---:     |     :---:   |
| Portuguese  | `pt`  |
| English  | `en` |

## Resume Data Template

Create a folder called `data` and create a file named <language_code>.json inside it (replace <language_code> for the code of the language of your choice). Copy the template below and paste on the json file. Fill it in with your data.

```json
{
  "name": "",
  "title": "",
  "summary":"",
  "education": [
    {
      "startDate": "",
      "endDate": "",
      "location": "",
      "title": "",
      "org": ""
    }
  ],
  "workExperience": [
    {
      "startDate": "",
      "endDate": "",
      "location": "",
      "remote": false,
      "employer": "",
      "position": "",
      "description": ""
    }
  ],
  "contact": {
    "address": {
      "line1": "",
      "line2": ""
    },
    "phone": {
      "number": "",
      "whatsapp": false
    },
    "email": "",
    "site": "",
    "linkedin": "",
    "github": ""
  },
  "languages": [
    {
      "language": "",
      "level": ""
    }
  ],
  "certifications": [
    {
      "date": "",
      "org": "",
      "name": "",
      "url": ""
    }
  ]
}
```

## Arguments

The inputs, along with their descriptions and usage contexts, are listed in the table below:

| Input  | Description | Usage |
| :---:     |     :---:   |    :---:   |
| `directory`  | Directory to search for resume data files  | *Required* |
| `cname`  | Custom domain name to use with github pages | Optional

## License

This project is licensed under the terms of the MIT license.
