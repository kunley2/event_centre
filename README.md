# myEVENTPOD event Recommendation

## Introduction
This repository uses azure open ai to recommend events to user based on their location, type of event etc
## Installing
To get started with the project, follow these steps:

1. Create a virtual environment:
    ```bash
    python -m venv env
    ```

2. Activate the virtual environment:
    - On Windows:
      ```bash
      env\Scripts\activate
      ```
    - On macOS/Linux:
      ```bash
      source env/bin/activate
      ```

3. Install dependencies:
    ```bash
    pip install -r requirements.txt
    ```

## Running
To run the project, execute the following command:
```bash
flask --app main run
```