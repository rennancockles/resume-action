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
      - main

jobs:
  resume-template:
    runs-on: ubuntu-latest
    steps:
      - name: Checkout
        uses: actions/checkout@v4
      - name: Resume Template Action
        uses: rennancockles/resume-action@v2
        env:
          GITHUB_TOKEN: ${{ secrets.GITHUB_TOKEN }}
        with:
          resume_file: 'data.json'
          cname: 'resume.mycustomdomain.com'
```

This example uses the defaults configurations.

It will run for each push to main branch, create a resume with the data provided and push to `gh-pages` branch.

## Resume Data Template

Create a JSON file following the template below and fill it in with your data.

```json
{
  "name": "",
  "title": "",
  "summary":"",
  "education": [
    {
      "start_date": "",
      "end_date": "",
      "location": "",
      "title": "",
      "institution": ""
    }
  ],
  "work_experience": [
    {
      "start_date": "",
      "end_date": "",
      "location": "",
      "remote": false,
      "company": "",
      "title": "",
      "description": "",
      "tools": []
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
    "website": "",
    "linkedin": "",
    "github": ""
  },
  "languages": [
    {
      "language": "",
      "level": "Basic"
    }
  ],
  "certifications": [],
  "skills": [
    {
      "name": "",
      "years": 0
    }
  ]
}
```

## Arguments

The inputs, along with their descriptions and usage contexts, are listed in the table below:

| Input  | Description | Usage |
| :---:     |     :---:   |    :---:   |
| `resume_file`  | Json file with resume data  | *Required* |
| `cname`  | Custom domain name to use with github pages | Optional

## License

This project is licensed under the terms of the MIT license.
