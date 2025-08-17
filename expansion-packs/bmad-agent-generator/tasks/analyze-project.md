# Analyze Project Task

## Objective

Perform comprehensive analysis of a project folder to understand its structure, purpose, technologies, and workflows.

## Execution Steps

### 1. Initial Project Scan

- List all files and directories in the project root
- Identify key configuration files (package.json, pom.xml, Cargo.toml, etc.)
- Detect programming languages used (by file extensions)
- Check for README, LICENSE, and documentation files

### 2. Technology Stack Identification

```
Check for indicators:
- package.json → Node.js/JavaScript project
- requirements.txt/Pipfile → Python project
- Cargo.toml → Rust project
- go.mod → Go project
- pom.xml/build.gradle → Java project
- *.csproj → C#/.NET project
- flake.nix → Nix/NixOS project
- docker-compose.yml → Docker containerization
- .github/workflows → GitHub Actions CI/CD
```

### 3. Framework Detection

```
Analyze dependencies and imports:
- React: Look for react in package.json, .jsx files
- Vue: vue in package.json, .vue files
- Angular: @angular in package.json
- Django: django in requirements.txt
- Flask: flask in requirements.txt
- Spring: spring in pom.xml
- Express: express in package.json
- FastAPI: fastapi in requirements.txt
```

### 4. Project Structure Analysis

```
Map common patterns:
- src/ or lib/ → Source code
- tests/ or test/ → Test files
- docs/ → Documentation
- api/ → API endpoints
- components/ → UI components
- models/ → Data models
- controllers/ → Business logic
- utils/ or helpers/ → Utility functions
- config/ → Configuration files
```

### 5. Code Pattern Recognition

- Identify design patterns used (MVC, MVVM, etc.)
- Detect testing frameworks and coverage
- Find build and deployment scripts
- Locate API endpoints and routes
- Identify database connections and models

### 6. Documentation Extraction

- Parse README for project purpose and setup instructions
- Extract API documentation
- Find inline code comments for context
- Review CONTRIBUTING guidelines
- Check for architecture diagrams

### 7. Workflow Analysis

```
Identify developer tasks:
- How to run the project locally
- How to run tests
- How to build for production
- How to deploy
- Common debugging steps
- Code formatting/linting commands
```

### 8. Generate Analysis Report

```yaml
project_analysis:
  name: [Project Name]
  type: [Web App/CLI/Library/Service]
  languages:
    - primary: [Main Language]
    - secondary: [Other Languages]
  frameworks:
    - [Framework 1]
    - [Framework 2]
  technologies:
    frontend: [If applicable]
    backend: [If applicable]
    database: [If applicable]
    testing: [Test frameworks]
    ci_cd: [CI/CD tools]
  structure:
    source_dir: [Path to source]
    test_dir: [Path to tests]
    docs_dir: [Path to docs]
  workflows:
    dev_server: [Command to run]
    test: [Command to test]
    build: [Command to build]
    deploy: [Deployment method]
  key_features:
    - [Feature 1]
    - [Feature 2]
  improvement_areas:
    - [Area 1]
    - [Area 2]
  agent_recommendations:
    - type: [Type of agent needed]
      purpose: [What it would do]
      priority: [High/Medium/Low]
```

## Output

Comprehensive project analysis report that provides all context needed to create specialized BMAD agents.

## Next Steps

Use this analysis to:

1. Research domain-specific best practices
2. Generate customized BMAD agent
3. Create team of agents if project is complex
